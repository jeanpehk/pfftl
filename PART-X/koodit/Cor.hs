module Cor where

--package monad-coroutine
import Control.Monad.Coroutine
import Control.Monad.Coroutine.SuspensionFunctors

import Control.Monad.Trans.Class (lift)

-- Kokeillaan korutiineja Haskelissa.
-- Otetaan mallia hackagen esimerkistä.

-- Luodaan yksinkertaiset tietotyypit funktioita varten.
data State = On | Off
  deriving (Eq, Show)

-- Yksinkertainen korutiini, joka muuttaa tilaa kahdessa eri instanssissa.
cor :: Coroutine (Yield State) IO ()
cor = do yield On
         yield Off

-- pogoStickin (TIL pogo stick = hyppykeppi..) avulla voidaan suoritusta jatkaa
-- kunnes se on valmis:
-- > printCor cor
-- On
-- Off
printCor :: Show x => Coroutine (Yield x) IO r -> IO r
printCor cor = pogoStick (\(Yield x cont) -> lift (print x) >> cont) cor

-- Kokeillaan nyt soveltaa esimerkki, joka suorittaa vain kerran
-- (jos suoritus ei ole jo valmis) ja sen jälkeen pysäyttää suorituksen:
-- > resumeSuspend
-- On
resumeSuspend :: IO ()
resumeSuspend = do r <- resume cor
                   case r of
                     Left  x -> print $ (\(Yield s cont) -> s) x
                     Right x -> print x

-- Näissä korutiineissa siis on Yieldissa (joka on käytännössä pari)
-- tallessa ohjelman tila ja kontinuaatio, kuten kirjassakin.
-- Suoritusta voidaan esim. jatkaa tai pysäyttää miten halutaan tai
-- suorittaa loppuun asti kuten ensimmäisessä esimerkissä.

-- On vaikeaa äkkiseltään keksiä mitään tiettyä käyttötapausta, jossa
-- korutiinit olisivat erityisen toimiva ratkaisu. Kuitenkin näyttäisi,
-- että korutiineilla voidaan asynkronisesta suorittamisesta yleisesti tehdä
-- kohtuullisen selkeää sekä toteuttaa koodia, joka on hyvin
-- järkeiltävissä ja jonka tila on selkeästi hallittavissa.
