module Main where

import Factorial

-- Helper function to convert an integer to the Nat type
toNat :: Integer -> Nat
toNat 0 = O
toNat n = S (toNat (n - 1))

-- Helper function to convert a Nat type to an integer
fromNat :: Nat -> Integer
fromNat O = 0
fromNat (S n) = 1 + fromNat n

main :: IO ()
main = do
  -- Test the factorial function with some values
  let testValues = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
  putStrLn "Factorials:"
  mapM_ (\n -> putStrLn $ "Factorial of " ++ show n ++ ": " ++ show (fromNat $ factorial $ toNat n)) testValues
