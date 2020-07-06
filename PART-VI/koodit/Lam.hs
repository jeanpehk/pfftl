module Lam where

-- Mallin vuoksi yksinkertainen toteutus tyypittömästä
-- lambda calculuksesta.

-- Onko muita samannimisiä muuttujia scopessa.
type Only = Bool

-- Tyyppi muuttujien sitomista varten.
data Bind = B { isOnly :: Only
              , getVar :: Char
              , getE :: Exp }
  deriving Show

-- Lausekkeet.
data Exp
  = Var Char
  | Lam Exp Exp
  | Ap Exp Exp
  deriving Show

-- Funktio, joka suorittaa yhden askeleen jos mahdollista.
step :: Exp -> Maybe Exp
step (Var c)     = Nothing
step (Lam e1 e2) = Nothing
step (Ap e1 e2)  = Just $ stepAp e1 e2

stepAp :: Exp -> Exp -> Exp
stepAp (Var c) e2    = error "Unbound Var"
stepAp (Lam v e1) e2 = case v of
  Var c -> subst (B True c e2) e1
  _     -> error "Can only bind variables"
stepAp (Ap e1 e2) e3 = Ap (stepAp e1 e2) e3

-- Muuttujien vaihto.
subst :: Bind -> Exp -> Exp
subst (B True bc e) (Var c) = if bc == c then e else Var c
subst b (Lam e1 e2)    = case e1 of
  Var c -> if getVar b == c then Lam e1 e2 else Lam e1 (subst b e2)
  _     -> error "Can only bind variables"
subst b (Ap e1 e2)     = Ap (subst b e1) (subst b e2)

-- Muutama testiesimerkki.
test = do
  let a = Ap (Lam (Var 'x') (Lam (Var 'y') (Var 'x'))) (Var 'a')
  -- tulisi olla: Just (Lam (Var 'y') (Var 'a'))
  putStrLn $ show (step a)
  let b = Ap (Lam (Var 'x') (Lam (Var 'x') (Var 'x'))) (Var 'a')
  -- tulisi olla: Just (Lam (Var 'x') (Var 'x'))
  putStrLn $ show (step b)
  
  -- Muutama Church numeraali:
  -- 0:
  let zero = Lam (Var 'f') (Lam (Var 'x') (Var 'x'))
  putStrLn $ show zero
  -- 1:
  let one  = Lam (Var 'f') (Lam (Var 'x') (Ap (Var 'f') (Var 'x')))
  putStrLn $ show one
