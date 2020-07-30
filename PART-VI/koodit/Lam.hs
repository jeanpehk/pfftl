module Lam where

-- Mallin vuoksi yksinkertainen toteutus tyypittömästä
-- lambda calculuksesta.

-- Tyyppi muuttujien sitomista varten.
data Bind = B { getC :: Char
              , getE :: Exp }
  deriving Show

-- Lausekkeet.
data Exp
  = Var Char
  | Lam Char Exp
  | Ap Exp Exp
  deriving Show

-- Funktio, joka suorittaa yhden askeleen jos mahdollista.
step :: Exp -> Maybe Exp
step (Ap e1 e2)  = Just $ app e1 e2
step _           = Nothing

-- Applikaatio.
app :: Exp -> Exp -> Exp
app (Var c) e2    = error "Unbound variable"
app (Lam v le) e  = sub (B v e) le
app (Ap e1 e2) e3 = Ap (app e1 e2) e3

-- Muuttujien vaihto.
sub :: Bind -> Exp -> Exp
sub b (Var c)
  | getC b == c  = getE b
  | otherwise    = Var c
sub b (Lam c e)
  | getC b == c  = Lam c e
  | otherwise    = Lam c (sub b e)
sub b (Ap e1 e2) = Ap (sub b e1) (sub b e2)

test = do
  -- Muutama testiesimerkki askeleen suorittamisesta.
  let a = Ap (Lam 'x' (Lam 'y' (Var 'x'))) (Var 'a')
  -- tulisi olla: Just (Lam 'y' (Var 'a'))
  putStrLn $ show (step a)

  let b = Ap (Lam 'x' (Lam 'x' (Var 'x'))) (Var 'a')
  -- tulisi olla: Just (Lam 'x' (Var 'x'))
  putStrLn $ show (step b)
  
  -- Muutama Church numeraali:
  -- 0:
  let zero = Lam 'f' (Lam 'x' (Var 'x'))
  putStrLn $ show zero
  -- 1:
  let one  = Lam 'f' (Lam 'x' (Ap (Var 'f') (Var 'x')))
  putStrLn $ show one
