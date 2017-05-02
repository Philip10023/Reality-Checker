import React, { Component } from 'react';
import FormContainer from './CheckFormContainer';

class CheckShowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      check: null,
      user: null,
    }
    this.addNewRealityCheck = this.addNewRealityCheck.bind(this)
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
  addNewRealityCheck(payload) {
    fetch("/api/v1/reality_checks.json", {
      credentials: 'same-origin',
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(payload)
    })
  }
  render(){
    return(

      <FormContainer
       addNewRealityCheck={this.addNewRealityCheck}
       categoryId={this.props.params.id}/>
    )
  }
}


export default CheckShowContainer;
