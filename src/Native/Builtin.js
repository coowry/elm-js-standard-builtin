var _coowry$elm_js_standard_builtin$Native_Builtin = function(elm) {

    var now = function() { return Date.now(); };

    var newDate = function(){ return new Date(); };

    var timezoneOffset = function(){ return new Date().getTimezoneOffset(); };

    var resolvedOptions = function() {
        var dateTimeFormat = Intl && Intl.DateTimeFormat();
        var resolvedOptions = dateTimeFormat && dateTimeFormat.resolvedOptions();
        return {
            locale: resolvedOptions.locale || "",
            timeZone: resolvedOptions.timeZone || ""
        };
    };

    var timezone = function () {
        var timeZone = resolvedOptions().timeZone;
        var offset = new Date().getTimezoneOffset();
        var totalMinutes = Math.abs(offset);
        var hours = Math.floor(totalMinutes / 60);
        var minutes = totalMinutes % 60;
        return timeZone + " (UTC"
            + (offset < 0 ? "+" : "-")
            + ("00" + hours).slice(-2)
            + ":"
            + ("00" + minutes).slice(-2)
            + ")";
    };

    return  { now : now,
              newDate: newDate,
              timezoneOffset: timezoneOffset,
              timezone: timezone,
              resolvedOptions: resolvedOptions
            };
}();
