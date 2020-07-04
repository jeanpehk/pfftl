module Sum where

-- Sum esimerkkejä

-- Haskelissa data-keywordilla voidaan muodostaa
-- algebraisia tietotyyppejä.

-- Tyypilliset esimerkit ovat Either ja Maybe
data Either' a b
  = Left' a
  | Right' b
  deriving (Eq, Show)

data Maybe' a
  = Nothing'
  | Just' a
  deriving (Eq, Show)
