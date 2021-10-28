const { default: axios } = require("axios");

const functions = {
    add: (num1, num2) => num1 + num2,
    isNull: () => null,
    checkValue: x => x,
    createUser: () => {
        const user = { firstName: "Jordan"}
        user['lastName'] = "Shackelford";
        return user;
    },
    fetchUser: () => axios.get('https://jsonplaceholder.typicode.com/users/1');
}

module.exports = functions;