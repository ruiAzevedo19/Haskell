module AndMonoid where 

data And = And {getAll :: Bool} deriving (Show, Eq, Ord) 

instance Semigroup And where 
    And p <> And q = And (p && q) 

instance Monoid And where 
    mempty = And True


