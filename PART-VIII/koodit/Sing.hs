{-# LANGUAGE DataKinds, KindSignatures, GADTs #-}

module Sing where

import Data.Kind

-- Singletonien pohtimista Haskelissa.
-- Lisäreferenssinä käytetty Justin Len blogia:
-- https://blog.jle.im/entry/introduction-to-singletons-1.html

-- Tehdään blogia ja kirjan esittämää tyyppimuuttujan ongelmaa mallintaen esimerkki
-- tilan muuttamisesta ja käsittelystä singletonien avulla.

-- Tässä luodaan DataKindsin avulla kind State ja tyyppikonstruktorit 'On ja 'Off
-- (On ja Off kelpaa myös, mutta "'" käytetään yleensä selkeyden vuoksi).
data State = On | Off
  deriving (Show, Eq)

-- Luodaan tyyppi Machine tyyppimuuttujalla:
data Machine (s :: State) = CreateMachine { name :: String }
  deriving (Show, Eq)

-- Voidaan luoda funktioita, jotka muuttavat tilaa kun se on annettu:
on :: Machine Off -> Machine On
on (CreateMachine m) = CreateMachine m

off :: Machine On -> Machine Off
off (CreateMachine m) = CreateMachine m

-- Ongelmia ilmenee, jos tilaa ei tiedetä ennakkoon:
failAnyOn :: Machine a -> Machine On
failAnyOn (CreateMachine m) = CreateMachine m

-- Kuten blogissakin, tässä huomataan Haskelin tyyppijärjestelmän
-- rajoitukset (ja kirjan alustavan esimerkin). Tyypit ovat olemassa vain staattisen
-- tarkastuksen aikana ja ajonaikana ne hävitetään. Näin ollen meillä ei ole
-- käännösaikana tietoa Machinen tyyppimuuttujan tyypistä, koska se on funktion
-- kutsujan määriteltävissä.

-- Tehdään nyt singletonit.
data SState :: State -> Type where
  SOn  :: SState 'On
  SOff :: SState 'Off

-- Nyt voitaisiin ajatella kirjan määritelmiin verraten, että meillä on
-- 'kind family' SState ja instanssit SOn ja SOff, jotka kattavat vain itsensä.

-- Samalla saadaan mahdollisuus suorittaa pattern match tyyppitasolla arvojen sijaan,
-- mikä mahdollistaa Machinen tyypin selvittämisen:

successAnyOn :: SState a -> Machine a -> Machine On
successAnyOn (SOn) m  = m
successAnyOn (SOff) m = on m

-- Singletonit siis antavat meille mahdollisuuden suorittaa päätöksiä tyyppitasolla
-- niiden rakenteen mukaan. Ne toimivat ajonaikaisina arvoina, joiden avulla
-- tyyppipäätökset voidaan tehdä huolimatta siitä, että itse tyypit on ajonaikana
-- hävitetty!
