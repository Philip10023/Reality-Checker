import React, { Component } from 'react';
import FormContainer from './CheckFormContainer';

class CheckShowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      realities: [],
      check: null,
      user: null
    }
    this.addNewReality = this.addNewReality.bind(this)
  }

  componentDidMount() {
    let categoryId = this.props.params.id;
    fetch(`/api/v1/categories/${categoryId}`, {
      credentials: 'include',
      method: 'GET'
    })
      .then(response => response.json())
      .then(responseData => {
        this.setState({
          user: responseData.user.id
        })
      })
  }
  addNewReality(payload) {
    fetch("/api/v1/realities", {
      credentials: 'same-origin',
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(payload)
    })
    .then(response => response.json())
    .then(responseData => {
      console.log(responseData.realities)
      this.setState({ realities: [...this.state.realities, responseData.realities] })
    })
  }
  render(){
    return(

      <FormContainer
       addNewReality={this.addNewReality}
       categoryId={this.props.params.id}/>
    )
  }
}


export default CheckShowContainer;
