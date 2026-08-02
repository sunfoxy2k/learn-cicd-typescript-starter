import { describe, expect, test } from "vitest";

const person = {
  isActive: true,
  age: 32,
};

describe("person", () => {
  test("should be defined", () => {
    expect(person).toBeDefined();
  });

  test("should be active", () => {
    expect(person.isActive).toBe(true);
  });
});
