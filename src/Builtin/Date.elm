module Builtin.Date exposing (now)

{-| A module that exposes some functionality from the global object [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date).

@docs now

-}

import Native.Builtin


{-| Date.now(): returns the number of milliseconds elapsed since January 1, 1970 00:00:00 UTC.
-}
now : Int
now =
    Native.Builtin.now
