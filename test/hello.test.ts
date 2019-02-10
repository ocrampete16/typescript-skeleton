import hello from "../src/index";

it("should return the correct greeting", () => {
  expect(hello("Alice")).toBe("Hello Alice!");
});
