-- Comment

{-
Multiline comment
Another comment
-}

import Data.List
import System.IO

maxInt = maxBound :: Int
minInt = minBound :: Int

sumOfNums = sum [1..100]

rmdr = mod 8 3 -- mod is a prefix operatoe
rmdr2 =  8 `mod` 2 -- here mod is an infix operator

primeNumbers = [3, 5, 7, 11]
morePrimes = primeNumbers ++ [13, 17, 19, 23, 29]

favNum = 2 : 7 : 21 : 66 : []

multList = [[3, 5, 7], [11, 13, 17]]

morePrimes2 = 2 : morePrimes

lenPrimes = length morePrimes2

revPrimes = reverse morePrimes2

isListEmpty = null morePrimes2

secondPrime = morePrimes2 !! 1

firstPrime = head morePrimes2
lastPrime = last morePrimes2

primeInit = init morePrimes2

first3Primes = take 3 morePrimes2

removedPrimes = drop 3 morePrimes2

is7inList = elem 7 morePrimes2
