suite "UTC field getters" {
   test "correct date" {
      (Tempora.fromUtc(2021, 0, 1, 0, 0, 0, 0)
      |> Tempora.getUTCDate) == 1
   }
}

suite "Field getters" {
   test "correct date" {
      (Tempora.fromLocal(2021, 0, 1, 0, 0, 0, 0)
      |> Tempora.getDate) == 1
   }
}
