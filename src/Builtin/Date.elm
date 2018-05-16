module Builtin.Date exposing (new, now, timezone, timezoneOffset)

{-| A module that exposes some functionality from the global object [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date).

@docs now
@docs new
@docs timezoneOffset
@docs timezone

-}

import Date
import Native.Builtin


{-| Date.now(): returns the number of milliseconds elapsed since January 1, 1970 00:00:00 UTC.
-}
now : () -> Int
now () =
    Native.Builtin.now ()


{-| Returns a Date as new Date() (ie. now).
-}
new : () -> Date.Date
new () =
    Native.Builtin.newDate ()


{-| Returns the time zone difference, in minutes, from current locale
(host system settings) to UTC.
-}
timezoneOffset : () -> Int
timezoneOffset () =
    Native.Builtin.timezoneOffset ()


{-| Returns the time zone from current locale (host system settings).
-}
timezone : () -> String
timezone () =
    Native.Builtin.timezone ()
