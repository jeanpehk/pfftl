module Product where

-- Esimerkkejä produkteista

-- Haskelissa data-keywordilla voidaan muodostaa
-- algebraisia tietotyyppejä.

-- Tyypillinen esimerkki pareista
data Pair a b = Pair a b
  deriving (Eq, Show)

-- Unit tyyppi
data Unit = Unit
  deriving (Eq, Show)

-- Haskelin sisäänrakennetuilla tietotyypeillä vastaavat
-- voitaisiin esittää seuraavasti
unitpair = do
  -- unit
  putStrLn $ show ()
  -- parit tupleilla
  putStrLn $ show (1,"infix")
  -- tai vastaavasti prefixinä
  putStrLn $ show$ (,) 2 "prefix"

-- Mielenkiintoisemmaksi asiat käy, jos aletaan miettimään
-- rajattujen produktien itse määrittelemistä.
-- Voimme kokeilla täysin identtistä tapaa parien kanssa,
-- jolloin voimme rekursiivisesti sisällyttää b muuttujaan
-- aina toisen parin.

data Finite a b = Finite a b
  deriving (Eq, Show)

-- Tämä määritelmä ei kuitenkaan käsitykseni mukaan vastaa kirjan määritelmää,
-- sillä nyt vaaditaan, että muuttujan b on oltava pari,
-- jos halutaan enemmän kuin 2 tyyppiä sisältävä produkti.

-- Toki, voisimme myös aina lisätä tyyppimuuttujien määrää Pair esimerkissä,
-- minkä pitäisi toimia, mutta yleistä tapaa näin ei saada.

-- Pienellä googlettelulla
-- voidaankin päästä seuraavan linkkiin GHC primitiveistä, joka
-- aiheuttaa hienoista kauhua:
-- https://downloads.haskell.org/~ghc/7.0.4/docs/html/libraries/ghc-prim-0.2.0.0/GHC-Tuple.html
-- Eli GHC ratkaisee tämän ongelman juurikin tyyppimuuttujia lisäämällä
-- ja muodostamalla monia tyyppejä.

-- Ja niinpähän siinä käy, että jos testataan allaolevaa koodinpätkää,
-- saadaan itselle uusi virheilmoitus:
-- "A 138-tuple is too large for GHC
-- (max size is 62)
-- Workaround: use nested tuples or define a data type"

--test = (1,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3)
