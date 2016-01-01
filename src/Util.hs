{-# LANGUAGE OverloadedStrings #-}

module Util where

--import Data.List (delete, maximumBy, group, tails, transpose)
--import Data.Ord
--import Data.Ratio
--import qualified Data.Set as Set
import qualified Formatting as F
import Formatting.Clock
import System.Clock

time :: a -> IO a
time x = do
    start <- getTime Monotonic
    end <- x `seq` getTime Monotonic
    F.fprint (timeSpecs F.% "\n") start end
    return x
