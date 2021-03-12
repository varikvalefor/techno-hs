import Control.Concurrent;

giveMeALine :: Char -> IO ();
giveMeALine x = putStr (x:"") >> threadDelay 12500 >> drawCursor;

theString :: String;
theString = "TECHNO   ";

printThing :: Char -> IO ();
printThing a = giveMeALine a >> drawCursor;

drawCursor :: IO ();
drawCursor = mapM_ g "\" \BS_ \BS"
  where g x | x == ' ' = threadDelay 50000
            | otherwise = putStr (x:"")

main = mapM_ (giveMeALine) theString >> main;
