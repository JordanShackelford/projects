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

test('Should be under 1600', () => {
    const load1 = 800;
    const load2 = 700;
    expect(load1 + load2).toBeLessThan(1600);
;});

//regex
test('There is no I in team', () => {
    expect('team').not.toMatch(/I/);
});

//Arrays
test('Admin should be in usernames', () => {
    usernames = ['john', 'karen', 'admin'];
    expect(usernames).toContain('admin');
});
