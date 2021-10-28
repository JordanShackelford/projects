const functions = require('./functions');

test('Adds 2 + 2 to NOT equal 5', () => {
    expect(functions.add(2,2)).not.toBe(5);
});

test('Should be null', () => {
    expect(functions.isNull()).toBeNull();
})

test("should be falsy", () => {
    expect(functions.isNull()).toBeFalsy();
})

test('User should be Jordan Shackelford object', () => {
    expect(functions.createUser()).toEqual({
        firstName: "Jordan",
        lastName: "Shackelford"
    });
});