{-# LANGUAGE DataKinds, KindSignatures, GADTs #-}
module Sing where

import Data.Kind -- Jotta voidaan käyttää 'Type' tyyppimääritelmissä.

-- Singletonien pohtimista Haskelissa.
-- Lisäreferenssinä käytetty Justin Len blogia:
-- https://blog.jle.im/entry/introduction-to-singletons-1.html

-- Ei käytetä valmista singleton kirjastoa vaan koitetaan pohtia
-- asiaa konstruktivistisemmin.

-- Tehdään blogia mallintaen esimerkki tilan muuttamisesta
-- ja käsittelystä singletonien avulla.

-- Tässä luodaan DataKindsin avulla kind State ja
-- tyyppikonstruktorit 'On ja 'Off
data State = On | Off
  deriving (Show, Eq)

data Machine :: State -> Type where
  CreateMachine :: { name :: String } -> Machine a

create :: State -> String -> Machine a
create On  = CreateMachine
create Off = CreateMachine

-- Kuten blogissakin, voidaan tässä huomata Haskelin tyyppijärjestelmän
-- rajoitukset. Tyypit ovat olemassa vain staattisen tarkastuksen aikana
-- ja ajonaikana ne hävitetään. Näin ollen meillä ei ole käännösaikana tietoa
-- Machinen tyypistä, koska On ja Off ovat arvoja. Tästä voidaan
-- myös vetää hienoisia johtopäätöksiä aiemmin pikaisesti pohdittujen
-- riippuvasti tyypitettyjen kielten eroista Haskeliin. Olettaisin, että
-- tämä on yhtenä isona rajoituksena, sillä käsitykseni mukaan riippuvasti
-- tyypitetyissä kielissä tyypit nimenomaan riippuvat myös arvoista.

-- Tehdään nyt singletonit.

data SLS :: State -> Type where
  -- Käytetään määritelmissä ' versioita, jotka ovat tyyppikonstruktoreja.
  SOn  :: SLS 'On
  SOff :: SLS 'Off

-- Nyt meillä on siis singletonit SOn ja SOff, joilla kaikilla
-- on vain yksi instanssi sekä SLS. Lisäksi meillä on mahdollisuus suorittaa
-- pattern match tyyppitasolla arvojen sijaan, mikä mahdollistaa päätösten
-- teon käännösaikana.

on :: Machine Off -> Machine On
on (CreateMachine m) = CreateMachine m

off :: Machine On -> Machine Off
off (CreateMachine m) = CreateMachine m

anyon :: SLS a -> Machine a -> Machine On
anyon (SOn) m  = m
anyon (SOff) m = on m
