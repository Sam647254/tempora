suite "Field getters" {
   test "correct date" {
      (Tempora.fromUtcMs(0)
      |> Tempora.getDate) == 1
   }
}
