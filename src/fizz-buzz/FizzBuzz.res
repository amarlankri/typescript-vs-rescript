open Belt

let isMultipleOf = (n, multiple) => mod(n, multiple) == 0

let transformNumber = n => {
  let isMultipleOfThree = n->isMultipleOf(3)
  let isMultipleOfFive = n->isMultipleOf(5)

  switch (isMultipleOfThree, isMultipleOfFive) {
  | (true, true) => "FizzBuzz"
  | (true, false) => "Fizz"
  | (false, true) => "Buzz"
  | (false, false) => Int.toString(n)
  }
}

let fizzBuzz = () => {
  Range.forEach(1, 100, n => Js.log(transformNumber(n)))
}

fizzBuzz()
