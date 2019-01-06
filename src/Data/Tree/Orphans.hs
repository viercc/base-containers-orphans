{-# LANGUAGE CPP                #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE StandaloneDeriving #-}
module Data.Tree.Orphans where

#if MIN_VERSION_base(4,9,0)
#if !MIN_VERSION_containers(0,5,9)
import           Data.Functor.Classes
import           Data.Tree

#if !MIN_VERSION_containers(0,5,8)
import           GHC.Generics
#endif

instance Eq1 Tree where
  liftEq eqV = go
    where
      go (Node a fa) (Node b fb) =
        eqV a b && liftEq go fa fb

instance Ord1 Tree where
  liftCompare cmpV = go
    where
      go (Node a fa) (Node b fb) =
        cmpV a b `mappend` liftCompare go fa fb

#if !MIN_VERSION_containers(0,5,8)
deriving instance Generic1 Tree
#endif

#endif

#endif

