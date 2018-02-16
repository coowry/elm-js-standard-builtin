# elm-navigator

Elm native library to access JavaScript's standard, built-in objects
(https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects)

## Compile and test

Install elm and elm-test (npm install elm elm-test):

```
$ elm-make
$ elm test
```

Maybe you want to remove `elm-stuff` and `tests/elm-stuff` if something fails.

## Usage

```elm
import Builtin.Date as Date

nowisnow : Bool
nowisnow = Date.now == Date.now
```

## Supported objects and functions

- [`Date`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date)
    - [`now`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/now)
