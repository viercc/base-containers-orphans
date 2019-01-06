{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -Wno-orphans #-}
module Data.Map.Orphans where

#if MIN_VERSION_base(4,9,0) && !MIN_VERSION_containers(0,5,9)
import           Data.Map             (Map)
import qualified Data.Map             as Map

import           Data.Functor.Classes

instance Eq2 Map where
  liftEq2 eqK eqV ma mb =
    Map.size ma == Map.size mb &&
    liftEq (liftEq2 eqK eqV) (Map.toAscList ma) (Map.toAscList mb)

instance (Eq k) => Eq1 (Map k) where
  liftEq = liftEq2 (==)

instance Ord2 Map where
  liftCompare2 cmpK cmpV ma mb =
    liftCompare (liftCompare2 cmpK cmpV) (Map.toAscList ma) (Map.toAscList mb)

instance (Ord k) => Ord1 (Map k) where
  liftCompare = liftCompare2 compare

#endif
