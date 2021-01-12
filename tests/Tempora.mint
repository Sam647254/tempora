suite "Field getters" {
   test "correct date" {
      (Tempora.fromLocalMs(0)
      |> Tempora.getDate) == 1
   }
}
