module BuiltinTests exposing (..)

import Builtin.Date
import Builtin.Intl.DateTimeFormat
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


expectedTimeZone =
    "Europe/Madrid"


expectedTimezoneOffset =
    -120


expectedTimezone =
    "Europe/Madrid (UTC+02:00)"


expectedLocale =
    "en-US"


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

        resolvedOptions =
            Builtin.Intl.DateTimeFormat.resolvedOptions
    in
    describe "The Date module"
        [ test "now does not fail" (\() -> Expect.greaterThan 1518783292275 (Builtin.Date.now ()))
        , test "newDate does not fail" (\() -> Expect.equal 2018 (Date.year <| Builtin.Date.new ()))
        , test "newDate returns now in every invocation" (\() -> Expect.notEqual d1 d2)
        , test "now returns now in every invocation" (\() -> Expect.notEqual n1 n2)
        , test "Testing timezoneOffset" (\() -> Expect.equal expectedTimezoneOffset Builtin.Date.timezoneOffset)
        , test "Testing timezone" (\() -> Expect.equal expectedTimezone Builtin.Date.timezone)
        , test "Testing Builtin.Intl.DateTimeFormat.resolvedOptions.locale" (\() -> Expect.equal expectedLocale resolvedOptions.locale)
        , test "Testing Builtin.Intl.DateTimeFormat.resolvedOptions.timezone" (\() -> Expect.equal expectedTimeZone resolvedOptions.timeZone)
        ]
