module BuiltinTests exposing (..)

import Builtin.Date
import Date
import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)


delay : Int -> (() -> a) -> a
delay n f =
    if n == 0 then
        f ()
    else
        delay (n - 1) f


suite : Test
suite =
    let
        d1 =
            delay 10000 (\() -> Builtin.Date.new ())

        d2 =
            delay 10000 (\() -> Builtin.Date.new ())

        n1 =
            delay 10000 (\() -> Builtin.Date.now ())

        n2 =
            delay 10000 (\() -> Builtin.Date.now ())
    in
    describe "The Date module"
        [ test "now does not fail" (\() -> Expect.greaterThan 1518783292275 (Builtin.Date.now ()))
        , test "newDate does not fail" (\() -> Expect.equal 2018 (Date.year <| Builtin.Date.new ()))
        , test "newDate returns now in every invocation" (\() -> Expect.notEqual d1 d2)
        , test "now returns now in every invocation" (\() -> Expect.notEqual n1 n2)
        , test "Testing timezoneOffset" (\() -> Expect.equal -120 Builtin.Date.timezoneOffset)
        , test "Testing timezone" (\() -> Expect.equal "UTC+02:00" Builtin.Date.timezone)
        ]
