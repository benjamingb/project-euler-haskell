module Main where

import qualified Data.Map as M

import ProjectEuler.P001
import ProjectEuler.P002

import System.Environment (getArgs)
import System.Exit (exitSuccess)
import Util

solutions :: M.Map Integer Integer
solutions = M.fromList [
  (1, p001S1 5 3 1000)
 ,(2, p002S1 4000000)]


solution :: Integer -> Maybe Integer
solution number = M.lookup number solutions

main :: IO ()
main = do
    args <- getArgs
    case args of
        ["--help"] -> usage >> exitSuccess
        ["-h"] -> usage >> exitSuccess
        [number] -> case solution (read number :: Integer) of
            Just result -> time result >>= print
            --Just result -> display 5 result >>= print
            Nothing -> putStrLn "There is no solution yet for this problem"
        _ -> usage >> exitSuccess
    where
        usage = putStrLn "Usage: cabal run problem [number]"
