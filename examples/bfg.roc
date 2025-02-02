app [main!] { pf: platform "../platform/main.roc" }

import pf.Stdout

main! = |{}|
    Stdout.line! "BFG works as platform"
