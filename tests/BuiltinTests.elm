module BuiltinTests exposing (..)

import Builtin.Date as Date
import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)


suite : Test
suite =
    describe "The Date module"
        [ test "now does not fail" (\() -> Expect.greaterThan 1518783292275 Date.now)
        ]
