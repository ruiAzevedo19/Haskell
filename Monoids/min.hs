module MinMonoid where

newtype Min a = Min {getMin :: a} deriving (Show, Eq, Ord)

instance Ord a => Semigroup (Min a) where 
    a <> b = if a < b then a else b

instance (Ord a, Num a) => Monoid (Min a) where 
    mempty = Min 9999999
