import Test.Hspec

import Prob1 ( mulThreeFive )
import Prob2 ( evenFibs )
import qualified Spec1

-- main :: IO ()
-- main = putStrLn "Test suite not yet implemented"




import Test.Hspec


main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "Spec1"     Spec1.spec



