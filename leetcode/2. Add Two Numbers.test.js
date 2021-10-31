const Add_Two_Numbers = require('./2. Add Two Numbers');

test('1.', () => {
    let input1 = [2,4,3]
    let input2 = [5,6,4]
    expect(Add_Two_Numbers(input1,input2)).toEqual([7,0,8]);
  })
