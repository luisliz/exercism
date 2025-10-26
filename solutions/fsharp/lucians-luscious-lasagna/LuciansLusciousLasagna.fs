module LuciansLusciousLasagna

// TODO: define the 'expectedMinutesInOven' binding
let expectedMinutesInOven = 40
// TODO: define the 'remainingMinutesInOven' function
let remainingMinutesInOven (m: int): int = expectedMinutesInOven-m

// TODO: define the 'preparationTimeInMinutes' function
let preparationTimeInMinutes (m:int): int = m*2

// TODO: define the 'elapsedTimeInMinutes' function
let elapsedTimeInMinutes (prepTime:int) (elMin: int): int= (preparationTimeInMinutes prepTime)+elMin