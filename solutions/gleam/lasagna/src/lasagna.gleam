pub fn expected_minutes_in_oven() -> Int {
  40
}

pub fn remaining_minutes_in_oven(remaining: Int) -> Int {
  expected_minutes_in_oven() - remaining
}

pub fn preparation_time_in_minutes(layers: Int) -> Int {
  // Each layer takes 2 minutes
  layers * 2
}

pub fn total_time_in_minutes(layers: Int, time_in_oven: Int) {
  preparation_time_in_minutes(layers) + time_in_oven
}

pub fn alarm() {
  "Ding!"
}
