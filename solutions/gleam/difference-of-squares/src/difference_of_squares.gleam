import gleam/int

pub fn square_of_sum(n: Int) -> Int {
  let int_list = [1, 2, 3, 4, 5, n]
  int.sum(int_list) * int.sum(int_list)
}

pub fn sum_of_squares(n: Int) -> Int {
  n * n + sum_of_squares(n - 1)
}

pub fn difference(n: Int) -> Int {
  square_of_sum(n) - sum_of_squares(n)
}
