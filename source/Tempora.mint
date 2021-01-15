module Tempora {
   record Duration {
      years : Number,
      months : Number,
      weeks : Number,
      days : Number,
      hours : Number,
      minutes : Number,
      seconds : Number
   }

   fun now : Date {
      `new Date()`
   }

   fun fromLocal (
      year : Number,
      month : Number,
      day : Number,
      hour : Number,
      minute : Number,
      second : Number,
      ms : Number
   ) : Date {
      `new Date(#{year}, #{month - 1}, #{day}, #{hour}, #{minute}, #{second}, #{ms})`
   }

   fun fromLocalMs (ms : Number) : Date {
      `new Date(#{ms})`
   }

   fun fromUtc (
      year : Number,
      month : Number,
      day : Number,
      hour : Number,
      minute : Number,
      second : Number,
      ms : Number
   ) : Date {
      fromLocalMs(msFromUtc(year, month, day, hour, minute, second, ms))
   }

   fun msFromUtc (
      year : Number,
      month : Number,
      day : Number,
      hour : Number,
      minute : Number,
      second : Number,
      ms : Number
   ) : Number {
      `Date.UTC(#{year}, #{month - 1}, #{day}, #{hour}, #{minute}, #{second}, #{ms})`
   }

   fun getDate (date : Date) : Number {
      `#{date}.getDate()`
   }

   fun getDayOfTheWeek(date : Date) : Number {
      `#{date}.getDay()`
   }

   fun getYear(date : Date) : Number {
      `#{date}.getFullYear()`
   }

   fun getHour(date : Date) : Number {
      `#{date}.getHours()`
   }

   fun getMinute(date : Date) : Number {
      `#{date}.getMinutes()`
   }

   fun getMonth(date : Date) : Number {
      `#{date}.getMonth()` + 1
   }

   fun getSecond(date : Date) : Number {
      `#{date}.getSeconds()`
   }

   fun getTimestamp(date : Date) : Number {
      `#{date}.getTime()`
   }

   fun getUTCDate (date : Date) : Number {
      `#{date}.getUTCDate()`
   }
}
