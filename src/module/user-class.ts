export class User {
  private static counter = 1;
  private static generateId = () => User.counter++;

  readonly id = User.generateId();

  constructor(readonly name: string, readonly age: number) {}
}

const john = new User("John", 12);
console.log(john);
