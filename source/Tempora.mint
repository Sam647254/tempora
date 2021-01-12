module Tempora {
   fun now : Date {
      `new Date()`
   }

   fun fromLocalMs (ms : Number) : Date {
      `new Date(#{ms})`
   }

   fun fromUtc(year : Number, month : Number, day : Number, hour : Number, minute : Number, second : Number, ms : Number) {
      fromLocalMs(msFromUtc(year, month, day, hour, minute, second, ms))
   }

   fun msFromUtc (year : Number, month : Number, day : Number, hour : Number, minute : Number, second : Number, ms : Number) : Number {
      `Date.UTC(#{year}, #{month}, #{day}, #{hour}, #{minute}, #{second}, #{ms})`
   }

   fun getDate (date : Date) : Number {
      `#{date}.getDate()`
   }
}
