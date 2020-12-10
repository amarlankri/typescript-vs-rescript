type Animal1 = "Dog" | "Cat" | "Snake";

const speak = (animal: Animal1) => {
  switch (animal) {
    case "Dog":
      return "Woof";
    case "Cat":
      return "Meow";
    case "Snake":
      return "Ssss";
  }
};

// -----------------------
type Animal2 =
  | { kind: "Dog" }
  | { kind: "Cat"; name: string }
  | { kind: "Snake"; length: number };

let speak2 = (animal: Animal2) => {
  switch (animal.kind) {
    case "Dog":
      return "Woof";
    case "Cat":
      const { name } = animal;
      return `My name is ${name}`;
    case "Snake":
      const { length } = animal;
      return `My length is ${length}m`;
  }
};
