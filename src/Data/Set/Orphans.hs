{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -Wno-orphans #-}
module Data.Set.Orphans where

#if MIN_VERSION_base(4,9,0) && !MIN_VERSION_containers(0,5,9)
import           Data.Set             (Set)
import qualified Data.Set             as Set

import           Data.Functor.Classes

instance Eq1 Set where
  liftEq eqK sa sb =
    Set.size sa == Set.size sb &&
    liftEq eqK (Set.toList sa) (Set.toList sb)

instance Ord1 Set where
  liftCompare cmpK sa sb =
    liftCompare cmpK (Set.toList sa) (Set.toList sb)

#endif
