import React from "react";
import { render } from "@testing-library/react";
import App from "./App";

import { configure, shallow } from 'enzyme';
import Adapter from 'enzyme-adapter-react-16';
configure({ adapter: new Adapter() });

describe('counter testing', () => {

  let wrapper;
  beforeEach(() => {
    wrapper = shallow(<App />)
  });

  test("render the title of counter", () => {
    expect(wrapper.find('h1').text()).toContain('This is counter app');
  });

  test("render a button with text of 'increment'", () => {
    expect(wrapper.find("#increment-btn").text()).toBe("Increment");
  });

  test("render the initial value of state in a div", () => {
    expect(wrapper.find("#counter-value").text()).toBe("0");
  });

  test("render the click event of increment button and increment counter value", () => {
    wrapper.find("#increment-btn").simulate('click');
    expect(wrapper.find("#counter-value").text()).toBe("1");
  });
});