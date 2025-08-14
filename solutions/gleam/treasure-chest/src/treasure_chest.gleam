pub type TreasureChest(a) {
  TreasureChest(String, a)
}

pub type UnlockResult(a) {
  Unlocked(a)
  WrongPassword
}

pub fn get_treasure(
  chest: TreasureChest(treasure),
  password: String,
) -> UnlockResult(treasure) {
  case chest {
    TreasureChest(pass, a) if pass == password -> Unlocked(a)
    TreasureChest(_, _) -> WrongPassword
  }
}
