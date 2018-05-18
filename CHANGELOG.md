# elm-js-standard-builtin changelog

## Legend

- `[+]` Added for new features.
- `[-]` Removed for now removed features.
- `[C]` Changed for changes in existing functionality.
- `[F]` Fixed for any bug fixes.
- `[O]` Obsolete for soon-to-be removed features.
- `[S]` Security
- `[T]` Technical change that doesn't affect the API (eg. refactoring)

## Next release

## 2.1.0

- [+] Added Builtin.Int.DateTimeFormat.resolvedOptions (with locale and timeZone properties)

## 2.0.1

- [+] Added Builtin.Date.timezoneOffset +  Builtin.Date.timezone 

## 2.0.0

- [F] Builtin.Date.now and Builtin.Date.new are functions now, to
  allow each execution to return the current date.

## 1.0.1

- [F] fixing the native prefix from aherranz to coowry.
- [+] Builtin.Date.new added to return now in Date format.

## 1.0.0

- Initial release, just with a `now` to get the current date-time.
