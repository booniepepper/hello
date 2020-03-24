import System.Environment

main = do
  args <- getArgs
  let greeting = greet args
  putStrLn greeting
  where
    greet [] = "Hello world!"
    greet (name:_) = "Hello " ++ name ++ "!"

