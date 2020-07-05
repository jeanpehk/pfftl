module Pattern where

-- Esimerkkejä pattern matchingista Haskelissa.

-- Maybelle
pat :: Maybe a -> Either () a
pat Nothing  = Left ()
pat (Just a) = Right a

-- Määritellään oma tyyppi useammalla konstruktorilla
data ABCD = A | B | C | D
  deriving (Eq, Show)

-- Funktio, joka pattern matchaa ABCD:n
abc :: ABCD -> String
abc A = show A
abc B = show B
abc C = show C

-- Voidaan kuitenkin huomata, että määritelmä on vajaa, sillä
-- meiltä puuttuu tapaus D.
-- GHC ei oletuksena huomauta tästä vaan on käytettävä asetusta
-- "-fwarn-incomplete-patterns". Jos tämä asetetaan, saadaan
-- yllä olevalle funktiolle varoitus, joka saadaan pois asettamalla
-- viimeinenkin määritelmä:
-- abc D = show D
