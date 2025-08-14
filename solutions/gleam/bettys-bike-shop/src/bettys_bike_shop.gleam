import gleam/float
import gleam/int
import gleam/io
import gleam/string

pub fn pence_to_pounds(pence) {
  float.divide(pence, 100.0)
}

pub fn pounds_to_string(pounds) {
  let res = "£"
  // let pence = pounds -. float.floor(pounds)
  string.append(res, pounds)
  // 5.99
  // 0.33 -> Only pence 
  // 33 
  // 599 -> no pence
}
