module ABT where

-- Lisätään toteutettuun AST esimerkkiin (AST.hs) sidonta.

data Expr
  = Num Int
  | Plus Expr Expr
  | Times Expr Expr
  | Variable Char
  -- Sidonta let-lauseella
  | Let Char Expr Expr
  deriving Show

-- Tulos: Let 'x' (Num 0) (Plus (Num 2) (Times (Num 3) (Variable 'x')))
main = putStrLn $ show $ Let 'x' (Num 0) (Plus (Num 2) (Times (Num 3) (Variable 'x')))
