{-# LANGUAGE ExistentialQuantification #-}

module Exist where

-- Käyttämällä ExistentialQuantification laajennosta onnistuu
-- eksistentiaalisten tyyppien käyttö.

-- Voidaan käyttää tyyppimuuttujaa 'a' ilman, että
-- se näkyy 'ulospäin', eli sitä ei tarvita tyyppikonstruktorissa.

-- Mark Karpov tiivistää (https://markkarpov.com/post/existential-quantification.html) 
-- eksistentiaalisia tyyppejä mielenkiintoisesti:
-- Eksistentiaalisissa tyypeissä heitetään tyyppi-informaatiota pois.
-- Miksi? Koska joskus halutaan käsitellä tyyppejä, joita ei tunneta
-- käännösaikana.

-- Yksinkertainen esimerkki.
data Ex = forall a. Ex a

e :: Ex
e = Ex 54

e2 :: Ex
e2 = Ex "two"

-- Ongelmana on nyt se, että koska muuttujaa 'a' ei ole
-- rajoitettu mitenkään, on myös toiminnallisuuden rakentaminen
-- tyypin avulla hankalaa.
-- Tätä voidaan korjata lisäämällä rajoitteita vastaavasti, kuten
-- polymorfisille funktioille voidaan tehdä.

data ExShow = forall a. (Show a) => ExShow a

ex :: ExShow
ex = ExShow "ok"

-- Nyt voidaan käyttää tyyppiluokan Show funktiota show.
showex :: ExShow -> String
showex (ExShow e) = show e

-- Näin tyyppiluokat ja eksistentiaaliset tyypit yhdistämällä voidaan
-- alkaa toteuttamaan huomattavasti olio-ohjelmointia muistuttavia ohjelmia.

class Swims a where
  swims :: a -> Bool

data Dog = Dog
  deriving Show

data Giraffe = Giraffe
  deriving Show

data Rock = Rock
  deriving Show

instance Swims Dog where
  swims d = True

instance Swims Giraffe where
  swims d = False

data Animal = forall a. (Swims a) => Animal a

-- Nyt
-- > :t Animal Dog
-- Animal Dog :: Animal
-- > :t Animal Rock
-- virhe

-- Voidaan toteuttaa funktio kaikille "tyyppirajapinnan" toteuttaville
-- instansseille.
funcSwimmers :: Animal -> Bool
funcSwimmers (Animal a) = swims a

test = do
  putStrLn $ show $ funcSwimmers $ Animal Dog     -- => True
  putStrLn $ show $ funcSwimmers $ Animal Giraffe -- => False
