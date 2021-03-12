import Control.Concurrent;

giveMeALine :: Char -> IO ();
giveMeALine x = putStr (x:"") >> drawCursor;

theString :: String;
theString = "TECHNO   ";

drawCursor :: IO ();
drawCursor = mapM_ g "\" \BS_ \BS"
  where g x | x == ' ' = threadDelay 50000
            | otherwise = putStr (x:"")

main = mapM_ (giveMeALine) theString >> main;
