pub fn is_leap_year(year: Int) -> Bool {
  case year % 4 == 0, year % 100 == 0, year % 400 == 0 {
    _, _, True -> True
    _, True, _ -> False
    True, _, _ -> True
    _, _, _ -> False
  }
}
