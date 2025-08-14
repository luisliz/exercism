pub fn reply(guess: Int) -> String {
  case guess {
    41 | 43-> "So close"
    42 -> "Correct"
    i if i > 43 -> "Too high"
    _ -> "Too low"
  }
}