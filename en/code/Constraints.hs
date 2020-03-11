-- # pragmas
{-# LANGUAGE ConstraintKinds      #-}
{-# LANGUAGE FlexibleContexts     #-}
{-# LANGUAGE FlexibleInstances    #-}
{-# LANGUAGE GADTs                #-}
{-# LANGUAGE UndecidableInstances #-}

module Constraints where

-- # imports
import Data.Kind (Constraint)


five :: Int
five = 5

five_ :: (a ~ Int) => a
five_ = 5


type ShowAndNum a = (Show a, Num a)

-- # ShowNum
class    (Show a, Num a) => ShowNum a
instance (Show a, Num a) => ShowNum a


