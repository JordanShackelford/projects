const Two_Sum = require('./1. Two Sum');

test('1.', () => {
  expect(Two_Sum([2,7,11,15],9)).toEqual([0,1]);
})

test('2.', () => {
  expect(Two_Sum([3,2,4],6)).toEqual([1,2]);
})
