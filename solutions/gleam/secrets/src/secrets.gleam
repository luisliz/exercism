import exercism/test_runner.{debug}
import gleam/int.{to_string}

pub fn secret_add(secret: Int) -> fn(Int) -> Int {
  debug("The add is secret: " <> to_string(secret))
  fn(x) -> Int { x + secret }
}

pub fn secret_subtract(secret: Int) -> fn(Int) -> Int {
  debug("The subtract is secret: " <> to_string(secret))
  fn(x) -> Int { x - secret }
}

pub fn secret_multiply(secret: Int) -> fn(Int) -> Int {

fn(x) -> Int { x * secret }  

}

pub fn secret_divide(secret: Int) -> fn(Int) -> Int {
fn(x) -> Int { x / secret } 
}

pub fn secret_combine(
  secret_function1: fn(Int) -> Int,
  secret_function2: fn(Int) -> Int,
) -> fn(Int) -> Int {
  fn(x) { secret_function2(secret_function1(x)) }  
  // 4 - 2 = 2
}
