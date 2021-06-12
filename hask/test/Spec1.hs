module Spec1 where
import Test.Hspec

import Prob1 ( mulThreeFive )
import Prob2 ( evenFibs, fibsList, fibsListTruncated )
import Prob3 (largestPrimeFactor )

-- main :: IO ()
-- main = putStrLn "Test suite not yet implemented"





spec :: Spec
spec = do
    describe "Prob1" $ do
        it "equals 233168 for val 1000" $ do
            mulThreeFive 1000 `shouldBe` 233168
        it "equals 23 for val 10" $ do
            mulThreeFive 10 `shouldBe` 23

    describe "Prob2 - fibslist" $ do 
        it "should be [1,2,3] for n=3" $ do
            fibsList 3 `shouldBe` [3,2,1]
        it "should be [1,2,3,5,8] for n=5" $ do
            fibsList 5 `shouldBe` [8,5,3,2,1]
    describe "Prob2 - fibslisttrunc" $ do 
        it "should be [1,2,3,5] for n=7" $ do
            fibsListTruncated 7 `shouldBe` [5,3,2,1]
        it "should be [1,2,3,5,8,11] for n=13" $ do
            fibsListTruncated 13 `shouldBe` [13,8,5,3,2,1]
    describe "Prob2" $ do
        it "first max 90 equals 44" $ do
            evenFibs 90 `shouldBe` 44
        it "equals 4613732 for val 4000000" $ do
            evenFibs 4000000 `shouldBe` 4613732
    describe "Prob3" $ do
        it "should be 29 for 13195" $ do
            largestPrimeFactor 13195 `shouldBe` 29
        it "should be 6857 for 600851475143" $ do
            largestPrimeFactor 600851475143 `shouldBe` 6857
        it "should be 37 for 37" $ do
            largestPrimeFactor 37 `shouldBe` 37

