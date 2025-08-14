import gleam/float
import gleam/string

pub fn pence_to_pounds(pence) {
  float.divide(pence, 100.0)
}

pub fn pounds_to_string(pounds) {
  let res = "£"
  string.append(res, pounds)
}
