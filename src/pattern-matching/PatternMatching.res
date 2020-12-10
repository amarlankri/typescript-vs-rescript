open Belt

type animal1 = Dog | Cat | Snake

let speak1 = animal => {
  switch animal {
  | Dog => "Woof"
  | Cat => "Meow"
  | Snake => "Sssss"
  }
}

// -----------------------
type animal2 = Dog | Cat(string) | Snake(int)

let speak2 = animal => {
  switch animal {
  | Dog => "Woof"
  | Cat(name) => `My name is ${name}`
  | Snake(length) => `My length is ${Int.toString(length)}m`
  }
}

let speak2' = animal => {
  switch animal {
  | Dog => "Woof"
  | Cat("Tom") => `Jerry!`
  | Cat(_) => `Meow`
  | Snake((1 | 2 | 3) as length) => `My length is ${Int.toString(length)}m`
  | Snake(length) => `${Int.toString(length)}m is ssssso long`
  }
}

//-----------------
type length = Small | Medium | Big(int)
type animal3 = Dog | Cat({name: string, age: int}) | Snake(length)

let speak3 = animal => {
  switch animal {
  | Dog => "Woof"
  | Cat({name: "Tom", age}) when age < 18 => "Too young!"
  | Cat({name: "Tom"}) => "Jerry!"
  | Cat(_) => "Meow"
  | Snake(Small) => "I am sssssmall"
  | Snake(Medium) => "I am medium"
  | Snake(Big(length)) => `${Int.toString(length)}m, huge!`
  }
}
