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
  case number % 3, number % 5, number % 7 {
    0, 0, 0 -> "PlingPlangPlong"
    0, _, 0 -> "PlingPlong"
    0, 0, _ -> "PlingPlang"
    _, 0, 0 -> "PlangPlong"
    0, _, _ -> "Pling"
    _, 0, _ -> "Plang"
    _, _, 0 -> "Plong"
    _, _, _ -> int.to_string(number)
  }
}
