import React from "react";
import { render } from "@testing-library/react";
import App from "./App";

describe('counter testing', () => {
  test("render the title of counter", () => {
    const {getByText} = render(<App />);
    const linkElement = getByText('This is counter app');
    expect(linkElement).toBeInTheDocument();
  });
})
