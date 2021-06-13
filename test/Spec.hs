import Test.Hspec

import Prob1 ( mulThreeFive )
import Prob2 ( evenFibs )
import qualified Spec1
import qualified Spec2



import Test.Hspec


main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "Spec1"    Spec1.spec
    describe "Spec2"    Spec2.spec


