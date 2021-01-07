module Tempora {
   fun now : Date {
      `new Date()`
   }

   fun fromLocalMs (ms : Number) : Date {
      `new Date(#{ms})`
   }

   fun msFromUtc(year : Number, month : Number = 0, day : Number = 0) {

   }

   fun getDate (date : Date) : Number {
      `#{date}.getDate()`
   }
}
