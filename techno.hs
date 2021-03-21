import Control.Concurrent;
import System.IO;

giveMeALine :: Char -> IO ();
giveMeALine x = putStr (x:"") >> drawCursor;

drawCursor :: IO ();
drawCursor = mapM_ g "\" \BS_ \BS"
  where g x | x == ' ' = threadDelay 33333
            | otherwise = putStr $ x:""

playTechno :: IO ();
playTechno = return ();
-- TODO: GENERATE TECHNO SONG.

main :: IO ();
main = hSetBuffering stdout NoBuffering >>
  forkIO playTechno >> mapM_ giveMeALine "TECHNO   " >> main;
