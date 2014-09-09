"""Tests for elpy.ropebackend."""

import os

import mock

from elpy import ropebackend
from elpy.tests import compat
from elpy.tests.support import BackendTestCase
from elpy.tests.support import RPCGetCompletionsTests
from elpy.tests.support import RPCGetCompletionDocstringTests
from elpy.tests.support import RPCGetCompletionLocationTests
from elpy.tests.support import RPCGetDefinitionTests
from elpy.tests.support import RPCGetCalltipTests
from elpy.tests.support import RPCGetDocstringTests


class RopeBackendTestCase(BackendTestCase):
    def setUp(self):
        super(RopeBackendTestCase, self).setUp()
        self.backend = ropebackend.RopeBackend(self.project_root)


class ShouldCallValidateTest(object):
    def test_should_call_validate(self):
        with mock.patch.object(self.backend, 'validate') as validate:
            self.rpc(None, "", 0)

            self.assertTrue(validate.called)


class TestInit(RopeBackendTestCase):
    def test_should_have_rope_as_name(self):
        self.assertEqual(self.backend.name, "rope")

    def test_should_patch_project_files(self):
        self.project_file("foo.txt", "")
        self.project_file("baddir/file.py", "")

        self.backend.project.validate()

        actual = [f.real_path for f in
                  self.backend.project.file_list.get_files()]
        self.assertEqual([os.path.join(self.project_root, "foo.txt")],
                         actual)


class TestValidate(RopeBackendTestCase):
    def test_should_call_validate_after_timeout(self):
        with mock.patch("time.time") as t:
            t.return_value = 10
            self.backend.validate()
            with mock.patch.object(self.backend, 'project') as project:
                t.return_value = 10 + ropebackend.VALIDATE_EVERY_SECONDS + 1
                self.backend.validate()

                self.assertTrue(project.validate.called)

    def test_should_not_call_validate_before_timeout(self):
        with mock.patch("time.time") as t:
            t.return_value = 10
            self.backend.validate()
            with mock.patch.object(self.backend, 'project') as project:
                t.return_value = 10 + ropebackend.VALIDATE_EVERY_SECONDS - 1
                self.backend.validate()

                self.assertFalse(project.validate.called)


class TestRPCGetCompletions(RPCGetCompletionsTests,
                            RopeBackendTestCase):
    pass


class TestRPCGetCompletionDocstring(RPCGetCompletionDocstringTests,
                                    RopeBackendTestCase):
    pass


class TestRPCGetCompletionLocation(RPCGetCompletionLocationTests,
                                   RopeBackendTestCase):
    pass


class TestRPCGetDefinition(RPCGetDefinitionTests,
                           ShouldCallValidateTest,
                           RopeBackendTestCase):
    pass


class TestRPCGetCalltip(RPCGetCalltipTests,
                        ShouldCallValidateTest,
                        RopeBackendTestCase):
    ADD_CALLTIP = 'Add.add(a, b)'
    RADIX_CALLTIP = "Decimal.radix()"
    if compat.PYTHON3:
        THREAD_CALLTIP = (
            "threading.Thread(group=None, target=None, "
            "name=None, args=(), kwargs=None, daemon=None, *)"
        )
        KEYS_CALLTIP = "builtins.keys()"
    else:
        THREAD_CALLTIP = (
            "threading.Thread(group=None, target=None, "
            "name=None, args=(), kwargs=None, verbose=None)"
        )
        KEYS_CALLTIP = "__builtin__.keys()"


class TestRPCGetDocstring(RPCGetDocstringTests,
                          ShouldCallValidateTest,
                          RopeBackendTestCase):
    pass


class TestGetPythonProjectFiles(RopeBackendTestCase):
    def test(self):
        self.project_file("foo.txt", "")
        self.project_file("gooddir/__init__.py", "")
        self.project_file("gooddir/file.py", "")
        self.project_file("baddir/file.py", "")
        expected = set(os.path.join(self.project_root, name)
                       for name in ["foo.txt", "gooddir/__init__.py",
                                    "gooddir/file.py"])
        project = self.backend.project

        actual = set(resource.real_path
                     for resource
                     in ropebackend.get_python_project_files(project))

        self.assertEqual(expected, actual)


class TestPatchProjectFiles(RopeBackendTestCase):
    def test(self):
        self.project_file("foo.txt", "")
        self.project_file("gooddir/__init__.py", "")
        self.project_file("gooddir/file.py", "")
        self.project_file("baddir/file.py", "")
        expected = set(os.path.join(self.project_root, name)
                       for name in ["foo.txt", "gooddir/__init__.py",
                                    "gooddir/file.py"])

        actual = set(resource.real_path
                     for resource
                     in self.backend.project.get_files())
        self.assertEqual(expected, actual)
