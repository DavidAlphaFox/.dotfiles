# Package.el

**NOTICE** package.el is part of Emacs 24 now; this repository is
deprecated. You can get the latest at http://bit.ly/pkg-el while the
last version that's compatible with Emacs 23 is at http://bit.ly/pkg-el23

The one, the only, the legendary package.el. The magic behind ELPA.

This repository exists to polish package.el for its submission into
Emacs proper.

## TODO

* Mechanism for allowing package authors to upload new versions.

* Allow the user to specify multiple archive sources.

* Lock the archive while it's being rebuilt to avoid stomping on
  another process.

* Allow system-level packages to co-exist with user-level ones. User's
  packages should override system ones, but users should be able to
  disable system ones as well.

* Setting the default Emacs load-path based on package.el.  This is
  tricky because we may want to let the user set package-user-dir.
  But the user may also want to refer to packages from .emacs.
  Actually, maybe this isn't even possible and we have to hard-code
  package-user-dir.  Anyway the idea is to let the user upgrade gnus
  separately, then later upgrade Emacs and have it choose the right
  one -- whichever is newer.  This implies not evalling the autoloads
  for some packages before the package stuff starts up.  Which
  packages is hard to say but at least anything that might be
  separately distributed, like gnus.

* Integrating into the Emacs build system so that the metadata for
  built-in packages is extracted correctly.

* Prerelease version numbers.
