pub fn is_leap_year(year: Int) -> Bool {
  case year % 4 == 0, year > 100, year % 400 == 0 {
    True, True, True -> True
    False, True, True -> True
    _, _, True -> True
    _, _, _ -> False
  }
}
