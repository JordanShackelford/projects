import React, { Component } from 'react'
import { Button, Form, Container, Header } from 'semantic-ui-react'
import './App.css';

export default class App extends Component {
  render () {
    return (
      <Container fluid className="container">
        <Header as='h2'>React Google Sheets!</Header>
        <Form className="form">
          <Form.Field>
            <label>Name</label>
            <input placeholder='Jordan' />
          </Form.Field>
          <Form.Field>
            <label>Age</label>
            <input placeholder='Enter your age' />
          </Form.Field>
          <Form.Field>
            <label>Salary</label>
            <input placeholder='Enter your salary' />
          </Form.Field>
          <Form.Field>
            <label>Hobby</label>
            <input placeholder='Enter your hobby' />
          </Form.Field>

          <Button color="blue" type='submit'>Submit</Button>
        </Form>
      </Container>
    )
  }
}