import Control.Concurrent;

giveMeALine :: Char -> IO ();
giveMeALine x = putStr (x:"") >> drawCursor;

drawCursor :: IO ();
drawCursor = mapM_ g "\" \BS_ \BS"
  where g x | x == ' ' = threadDelay 33333
            | otherwise = putStr $ x:""

main = mapM_ giveMeALine "TECHNO   " >> main;
