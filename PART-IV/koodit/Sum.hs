module Sum where

import Data.Void

-- Sum esimerkkejä

-- Haskelissa data-keywordilla voidaan muodostaa
-- algebraisia tietotyyppejä.

-- Tyypilliset esimerkit Either, Maybe ja Bool
data Either' a b
  = Left' a
  | Right' b
  deriving (Eq, Show)

data Maybe' a
  = Nothing'
  | Just' a
  deriving (Eq, Show)

data Bool'
  = True'
  | False'
  deriving (Eq, Show)

-- Koska Void on tyyppi, jolla ei ole konstruktoria miten
-- voidaan ikinä muodostaa tyyppiä Void?
-- Haskelin Data.Void dokumentaatiota kaivamalla löydetään
-- seuraavat kelpaavat määritelmät, joita en täysin ymmärrä.

data Void' = Void' !Void'
newtype Void'' = Void'' Void''

-- Ilmeisestikin tässä koska Void on konstruktori ja samalla
-- argumentti konstruktorille, on todellakin mahdotonta koskaan
-- muodostaa pelkästään tyyppiä Void.

-- Selkeästi edelleen voidaan muodostaa tyyppi Void -> Void,
-- mikä voidaan tarkistaa esim. ghci:ssä komennolla ":t Void".
-- Tämä kuitenkin on loogisesti ihan hyväksyttävää,
-- sillä ei ole väliä mitä Voidilla voidaan muodostaa, jos sitä
-- ei itsessään voida muodostaa. Tätä pointtia tukee myös
-- Data.Voidista löytyvä funktio määritelmä:
-- absurd :: Void -> a.

-- Toki voitaisiin myös jättää funktio määrittelemättä, jolloin
-- voidaan funktion tyypiksi asettaa Void. Tämä on kuitenkin
-- edelleen hyvin kirjan määritelmiä vastaava, sillä funktion
-- sisältö ei ole tällaisena koskaan suoritettavissa.
test :: Void
test = undefined

-- Eikä suoritus luonnollisesti onnistu myöskään absurdin kautta
test2 :: Void
test2 = absurd test
