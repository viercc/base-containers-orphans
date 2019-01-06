{-# LANGUAGE CPP #-}
module Data.IntMap.Orphans where

#if MIN_VERSION_base(4,9,0) && !MIN_VERSION_containers(0,5,9)
import           Data.IntMap          (IntMap)
import qualified Data.IntMap          as IntMap

import           Data.Functor.Classes

instance Eq1 IntMap where
  liftEq eqV ma mb =
    IntMap.size ma == IntMap.size mb &&
    liftEq (liftEq eqV) (IntMap.toAscList ma) (IntMap.toAscList mb)

instance Ord1 IntMap where
  liftCompare cmpV ma mb =
    liftCompare (liftCompare cmpV) (IntMap.toAscList ma) (IntMap.toAscList mb)
#endif

