import gleam/float
import gleam/int
import gleam/string

pub fn pence_to_pounds(pence) {
  pence / 100
}

pub fn pounds_to_string(pounds) {
  "£" <> pounds
}
