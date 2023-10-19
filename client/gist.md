## React

- JS library for building UI
- Build around components which are re-usable self-contained pieces of code
- Virtual DOM: React uses a Virtual DOM to optimize rendering. Instead of directly manipulating the actual DOM, React keeps a lightweight virtual representation of it. When changes occur, React updates the virtual DOM and then efficiently updates the actual DOM to reflect those changes.
- JSX: JSX (JavaScript XML) is a syntax extension for JavaScript that allows you to write HTML-like code within your JavaScript files. It makes it easier to define and render components.
- XML, or Extensible Markup Language, is a way to structure and store data in a format that's easy for both humans and computers to read. It uses tags, similar to HTML, to define different pieces of information. Each tag represents a specific piece of data, and you can create your own tags to fit the needs of your data.
- Props: Props (short for properties) are how data is passed into a React component. You can think of them as parameters for a function. They make components reusable and allow you to customize their behavior.
- State: State represents the data that a component can maintain and modify. It's a crucial concept for building dynamic and interactive UIs. State changes trigger re-rendering of the component.
- Lifecycle Methods: React components have several lifecycle methods, such as componentDidMount and componentWillUnmount, that allow you to perform actions at different stages of a component's life. This is essential for tasks like fetching data or cleaning up resources.

A simple react component:

```
import React, { Component } from 'react';

class MyComponent extends Component {
  constructor(props) {
    super(props);
    this.state = {
      count: 0
    };
  }

  handleClick = () => {
    this.setState({ count: this.state.count + 1 });
  }

  render() {
    return (
      <div>
        <p>Count: {this.state.count}</p>
        <button onClick={this.handleClick}>Increment</button>
      </div>
    );
  }
}

export default MyComponent;
```
