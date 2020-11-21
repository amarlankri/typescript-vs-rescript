const getRange = (n: number) => Array(n).fill(0).map((_, index) => index + 1)

const isMultipleOf = (n: number, multiple: number) => n % multiple === 0

const transformNumber = (n: number) => {
    const isMultipleOfThree = isMultipleOf(n, 3)
    const isMultipleOfFive = isMultipleOf(n, 5)

    if (isMultipleOfFive && isMultipleOfThree)
        return "FizzBuzz"
    else if (isMultipleOfThree)
        return "Fizz"
    else if (isMultipleOfFive)
        return "Buzz"
    else
        return n
}

const fizzBuzz = () => {
    const range = getRange(100)
    range.forEach(n => console.log(transformNumber(n)))
}

fizzBuzz()
