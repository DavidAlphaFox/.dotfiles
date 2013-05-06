package net.sourceforge.flymake.sample;

public class bad
{
    public void f()
    {
        return "foo";
    }

    private good myValue;
}
// #### (setq flymake-acc-ler '(nil 7 "e" "Semantic Error: A return statement with expression must be contained in a method declaration that is declared to return a value." "bad.java"))
