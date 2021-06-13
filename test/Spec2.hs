module Spec2 where
import Test.Hspec

import Prob10 ( sumPrimesLessThan, slowSumPrimesLessThan, slowNextPrime, sieveMultiplesofN )



spec :: Spec
spec = do
    describe "Prob10 - nextPrime" $ do
        it "equals 13 for val 10" $ do
            slowNextPrime 10 `shouldBe` 11
        it "equals 5 for val 4" $ do
            slowNextPrime 4 `shouldBe` 5
        it "equals 17 for val 15" $ do
            slowNextPrime 15 `shouldBe` 17
    describe "Prob10 - slow" $ do
        it "equals 17 for val 10" $ do
            slowSumPrimesLessThan 10 `shouldBe` 17
        it "equals 129 for val 30" $ do
            slowSumPrimesLessThan 30 `shouldBe` 129
        -- it "equals 142913828922 for val 2000000" $ do
        --     slowSumPrimesLessThan 2000000 `shouldBe` 142913828922
    describe "Prob10 - seiveMultiples" $ do
        it "equals [2, 4, 5, 8] for vals [ 2, 3, 6, 4, 5, 9 , 8, 12 ] 3" $ do
            sieveMultiplesofN [ 2, 3, 6, 4, 5, 9 , 8, 12 ] 3 `shouldBe` [2, 3, 4, 5, 8]
    describe "Prob10 - opt" $ do
        it "equals 17 for val 10" $ do
            sumPrimesLessThan 10 `shouldBe` 17
        it "equals 129 for val 30" $ do
            sumPrimesLessThan 30 `shouldBe` 129
        it "equals 142913828922 for val 2000000" $ do
            sumPrimesLessThan 2000000 `shouldBe` 142913828922
