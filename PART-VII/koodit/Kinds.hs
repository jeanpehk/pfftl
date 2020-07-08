module Kinds where

-- Muutamia esimerkkejä tyyppikonstruktoreista ja kindeista Haskelissa.

-- Kirjan esimerkin mukaisesti voidaan Nat määritellä tyyppikonstruktorilla,
-- joka ei ota argumentteja. Tässä siis tyyppikonstruktorina Nat.
-- N ja S taas ovat data konstruktoreja.
data Nat = N | S Nat
  deriving Show

-- Funktio voitaisiin määritellä kahdella tyyppiargumentilla
data F a b = F a b
  deriving Show

-- ghci:ssä voidaan tyypin X kindia tarkastella komennolla:
-- > :kind X
-- Esim.
-- > :kind Maybe
-- Maybe :: * -> *
-- Jossa * vastaa tyyppiä.

-- Koska tähän mennessä ei kirjassa konstruktoreita oltu käytetty ollenkaan,
-- voidaan lisäksi pohtia algebraisten tietotyyppien esittämistä pelkillä korkeamman
-- asteen funktioilla.
-- Käytetään referenssinä Koopmanin, Plasmeijerin ja Jansenin Functional Pearlia:
-- https://ifl2014.github.io/submissions/ifl2014_submission_13.pdf

-- Toteutukset on tehty Church enkoodauksella ja vastaavat yo.
-- linkissä esitettyjä toteutuksia.

-- Booleanit:

true :: a -> b -> a
true = \t f -> t

false :: a -> b -> b
false = \t f -> f

-- true ja false määritelmät voitaisiin myös määritellä suoremmin constin avulla.
-- > :t const :: a -> b -> a
-- > :t flip const :: b -> c -> c

-- Pari eli (,):
-- Voidaan ajatella, että on konstruktori, joka ottaa kaksi argumenttia a b 
-- ja konstruktori itsessään funktio, joka luo uuden tyypin c argumenteista
-- a b.
pair :: a -> b -> (a -> b -> c) -> c
pair = \x y p -> p x y

fst' :: ((a -> b -> a) -> a) -> a
fst' = \p -> p (\x y -> x)

snd' :: ((a -> b -> b) -> b) -> b
snd' = \p -> p (\x y -> y)

-- Muutama esimerkki.
test = do
  let a = pair 1 "two"
  putStrLn $ show $ fst' $ a -- -> 1
  putStrLn $ show $ snd' $ a -- -> "two"

-- Esitettyjen esimerkkien seuraukset on aika mielenkiintoiset. Olen itse ajatellut,
-- että funktionaalisten ohjelmointikielien toteutus olisi todella haastavaa (mitä
-- en sinänsä vieläkään olisi kiistämässä) ja vaatisi hurjan panostuksen. Tässä
-- voidaan kuitenkaan huomata, miten vaikeampia konsepteja pystytään redusoimaan
-- yksinkertaisempiin, jolloin toteutus onkin todellisuudesssa huomattavasti
-- selkeämpää. Esim. jos algebraiset tietotyypit voidaan esittää pelkästään
-- korkeamman asteen funktioina, tulee tietotyyppien luonnista lähinnä syntaksia.
-- Periaatteessa riittäisi siis, että kieleen toteutetaan pelkästään korkeamman
-- asteen funktiot, jolloin meillä olisi käytössä jo hyvinkin ekspressiivinen kieli.

-- Tämän kansion tiedostossa "pair.js" on myös hyvin vuoksi tehdyt vastaavat esimerkit
-- javascriptillä.
