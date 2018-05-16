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

## Some assumptions

- We assume that data of type Date.Date from Elm core is compatible with JS builtin Date objects.

## Supported objects and functions

- [`Date`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date)
    - [`now`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/now)
