import gleam/int

pub fn number_to_string(number: Int) {
  case number {
    3 -> "Piing"
    5 -> "Plang"
    7 -> "Plong"
    _ -> int.to_string(number)
  }
}

pub fn convert(number: Int) -> String {
  let res = ""
  let three = number % 3
  let five = number % 5
  let seven = number % 7

  let res = case number {
    three -> "Piing"
    five -> "Plang"
    seven -> "Plong"
    _ -> int.to_string(number)
  }
  res
}
