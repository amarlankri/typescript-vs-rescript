module type UserType = {
  type id = int
  type t = {id: id, name: string, age: int}
  let make: (string, int) => t
}

module User: UserType = {
  let counter = ref(0)
  let generateId = () => {
    counter := succ(counter.contents)
    counter.contents
  }

  type id = int
  type t = {id: id, name: string, age: int}

  let make = (name, age) => {id: generateId(), name: name, age: age}
}

let findUserById = (_id: User.id) => Js.log(`I am searching the user`)

let john = User.make("John", 12)
findUserById(john.age)
