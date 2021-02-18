module SumMonoid where 

data Sum a = Sum a deriving Show 

instance Eq a => Eq (Sum a) where 
    Sum x == Sum y = x == y 

instance Num a => Semigroup (Sum a) where 
    (Sum x) <> (Sum y) = Sum (x + y)

instance Num a => Monoid (Sum a) where 
    mempty = Sum 0

-- mappend : just joins two Monoids
-- <> : Composes Monoids
-- 
-- mempty : identity element = 0
-- mappend : corresponds to the sum of two elements 
-- mconcat : corresponds to the sum of a list of elements 
--           foldr (+) 0 [values]
--           foldr mappend mempty
--
prop1 = mappend (Sum 3) (Sum 4) == Sum 3 <> Sum 4
prop2 = mappend (Sum 3) (Sum 4) == Sum 7
prop3 = mconcat [Sum 3, Sum 4]  == Sum 7

ten = Sum 3 <> Sum 6 <> Sum 1
