module Main where

import Data.Functor.Classes

import Data.IntMap (IntMap)
import Data.IntMap.Orphans()

import Data.Map (Map)
import Data.Map.Orphans()

import Data.Set (Set)
import Data.Set.Orphans()

import Data.Sequence
import Data.Sequence.Orphans()

import Data.Tree
import Data.Tree.Orphans()

import GHC.Generics

main :: IO ()
main = putStrLn "Compiled"

checkMapEq2 :: (Eq a, Eq k) => Map k a -> Map k a -> Bool
checkMapEq2 = eq2

checkMapEq1 :: (Eq a, Eq k) => Map k a -> Map k a -> Bool
checkMapEq1 = eq1

checkMapOrd2 :: (Ord a, Ord k) => Map k a -> Map k a -> Ordering
checkMapOrd2 = compare2

checkMapOrd1 :: (Ord a, Ord k) => Map k a -> Map k a -> Ordering
checkMapOrd1 = compare1

checkIntMapEq1 :: (Eq a) => IntMap a -> IntMap a -> Bool
checkIntMapEq1 = eq1

checkIntMapOrd1 :: (Ord a) => IntMap a -> IntMap a -> Ordering
checkIntMapOrd1 = compare1

checkSetEq1 :: (Eq a) => Set a -> Set a -> Bool
checkSetEq1 = eq1

checkSetOrd1 :: (Ord a) => Set a -> Set a -> Ordering
checkSetOrd1 = compare1

checkSeqEq1 :: (Eq a) => Seq a -> Seq a -> Bool
checkSeqEq1 = eq1

checkSeqOrd1 :: (Ord a) => Seq a -> Seq a -> Ordering
checkSeqOrd1 = compare1

checkTreeEq1 :: (Eq a) => Tree a -> Tree a -> Bool
checkTreeEq1 = eq1

checkTreeOrd1 :: (Ord a) => Tree a -> Tree a -> Ordering
checkTreeOrd1 = compare1

checkTreeGeneric1 :: Tree a -> Rep1 Tree a
checkTreeGeneric1 = from1
