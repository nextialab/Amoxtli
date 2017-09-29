module Lib
    ( readMarkdownFile
    ) where

import System.IO

readMarkdownFile :: IO ()
readMarkdownFile = do
    handle <- openFile "tests.md" ReadMode
    contents <- hGetContents handle
    putStr contents
    hClose handle
