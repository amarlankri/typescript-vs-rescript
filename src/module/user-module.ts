let counter = 1;
const generateId = () => counter++;

export type User = {
  readonly id: number;
  readonly name: string;
  readonly age: number;
};

export const make = (name: string, age: number): User => ({
  id: generateId(),
  name,
  age,
});

const frank = make("Frank", 12);
console.log(frank);

const findById = (_id: number) => "Find user";
findById(frank.age);
