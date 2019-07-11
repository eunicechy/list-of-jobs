import React, {Component} from 'react';
import {Container, Header, Segment, Button, Icon, Dimmer, Loader, Divider} from 'semantic-ui-react';


class App extends Component
{
    constructor(){
        super()
        this.state={}
        this.getFields= this.getFields.bind(this)
        this.getFields=this.getFields.bind(this)
    }
    componentDidMount()
    {
      this.getFields()
    }


    fetch (endpoint) {
        return window.fetch(endpoint)
            .then(response => response.json())
            .catch(error => console.log(error))
    }


  getFields () {
    this.fetch('/api/fields')
      .then(fields => {
        if (fields.length) {
          this.setState({fields: fields})
          this.getField(fields[0].id)
        } else {
          this.setState({fields: []})
        }
      })
  }

  getField (id) {
    this.fetch(`/api/fields/${id}`)
      .then(field => this.setState({field: field}))
  }

  render () {
      let {fields, field }= this.state
      return fields
      ? <Container text>
        <Header as='h2' icon textAlign='center' color='blue'>
          <Icon name='unordered list' circular />
          <Header.Content>
            List of Jobs
          </ Header.Content>
        </Header>
        <Divider hidden section />
        {fields && fields.length
          ? <Button.Group color='blue' fluid widths={fields.length}>
            {Object.keys(fields).map((key) => {
              return <Button active={field && field.id === fields[key].id} fluid key={key} onClick={() => this.getField(fields[key].id)}>
                {fields[key].title}
              </Button>
            })}
          </Button.Group>
          : <Container textAlign='center'>No fields found.</Container>
        }
        <Divider section />
        {field &&
          <Container>
            <Header as='h2'>{field.title}</Header>
            {field.description && <p>{field.description}</p>
            }
            {field.jobs &&
              <Segment.Group>
                {field.jobs.map((jobs,i)=> <Segment key={i}
                {jobs.title}
                {jobs.description} 
                {jobs.company}
                {jobs.location}
                {jobs.link}
                )}
              </Segment.Group>
            }
            {field.steps && <p>{field.steps}</p>}
            {field.source && <Button basic size='tiny' color='blue' href={field.source}>Source</Button>}
          </Container>
        }
      </Container>
      : <Container text>
        <Dimmer active inverted>
          <Loader content='Loading' />
        </Dimmer>
      </Container>
  }
}





export default App;
