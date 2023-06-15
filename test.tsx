interface I {
  id: string;
}

const A: I = {
  id: "123",
};

function demo(a: string) {
  console.log(a);
  return 123;
}

demo("123");
