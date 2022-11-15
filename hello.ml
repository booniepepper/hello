let name =
    if ((Array.length Sys.argv) > 1)
    then Sys.argv.(1)
    else "world"

let () =
    Printf.printf "Hello, %s!\n" name

