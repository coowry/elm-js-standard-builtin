module Builtin.Intl.DateTimeFormat exposing (resolvedOptions)

{-| A module that exposes some functionality from the global object [Intl.DateTimeFormat](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DateTimeFormat).

@docs resolvedOptions

-}

import Native.Builtin


{-| Returns a record reflecting the locale and date and time formatting options of the default locale and default options.
-}
resolvedOptions : { locale : String, timeZone : String }
resolvedOptions =
    Native.Builtin.resolvedOptions ()
