USING: command-line formatting kernel namespaces sequences ;
IN: hello

: greet ( -- )
    command-line get { "world" } append first
    "Hello %s!\n" printf
;

MAIN: greet

