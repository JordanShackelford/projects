const Add_Two_Numbers = require('./2. Add Two Numbers');

test('1.', () => {
    var input1 = [2,4,3];
    var input2 = [5,6,4];
    expect(addTwoNumbers()).toEqual([7,0,8]);
})