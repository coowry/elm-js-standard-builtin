var _coowry$elm_js_standard_builtin$Native_Builtin = function(elm) {

    var now = function() { return Date.now(); };

    var newDate = function(){ return new Date(); };
    
    var timezoneOffset = function(){ return new Date().getTimezoneOffset(); };

    var timezone = function () {
        var offset = new Date().getTimezoneOffset();
        var totalMinutes = Math.abs(offset);
        var hours = Math.floor(totalMinutes / 60);
        var minutes = totalMinutes % 60;
        return "UTC"
            + (offset < 0 ? "+" : "-")
            + ("00" + hours).slice(-2)
            + ":"
            + ("00" + minutes).slice(-2);
    };

    return  { now : now,
              newDate: newDate,
              timezoneOffset: timezoneOffset,
              timezone: timezone
            };
}();
