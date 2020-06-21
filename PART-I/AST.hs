module AST where

-- Toteutetaan kirjan esimerkki
-- 2 + (3 * x) eli
-- plus(num[2];times(num[3];x))

-- Vain yksi sort Expr
data Expr
  -- 'Nullary' operaattori Num
  = Num Int
  -- Binäärioperaattorit plus ja times
  | Plus Expr Expr
  | Times Expr Expr
  -- Muuttuja
  | Variable Char
  deriving Show

-- Tulos: Plus (Num 2) (Times (Num 3) (Variable 'x'))
main = putStrLn $ show $ (Plus (Num 2) (Times (Num 3) (Variable 'x')))
