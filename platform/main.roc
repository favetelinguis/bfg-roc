platform ""
    requires {} { main! : {} => Result {} [Exit I32 Str]_ }
    exposes [Stdout]
    packages {}
    imports [Stdout]
    provides [main_for_host!]

main_for_host! : I32 => Result {} I32
main_for_host! = |_|
    when main! {} is
        Ok {} -> Ok {}
        Err (Exit code str) ->
            if Str.is_empty str then
                Err code
            else
                when Stdout.line! str is
                    Ok {} -> Err code
                    Err _ -> Err code

        Err err ->
            when Stdout.line! "Program exited early with error: ${Inspect.to_str err}" is
                Ok {} -> Err 1
                Err _ -> Err 1
