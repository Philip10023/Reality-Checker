import React, { Component } from 'react';
import CheckField from '../components/CheckField'
import ArrowContainer from './ArrowContainer'


class FormContainer extends Component {
constructor(props) {
  super(props);
  this.state = {
    errors: {},
    checkConsumed: '',
    check: ''
  }
    this.handleClearForm = this.handleClearForm.bind(this);
    this.handleFormSubmit = this.handleFormSubmit.bind(this);
    this.handleCheckChange = this.handleCheckChange.bind(this);
    this.validateCheck = this.validateCheck.bind(this);
  }


  // componentDidMount() {
  //   this.loadReviewsFromServer();
  //   setInterval(this.loadReviewsFromServer.bind(this), this.props.pollInterval);
  // }

    // setInterval(clickHandler)
    // {this.props.onClick, this.state.actualTimeSelected)};

  handleClearForm(event) {
    event.preventDefault();
    this.setState({
      errors: {},
      checkConsumed: '',
      check: ''
    })
  }
  handleFormSubmit(event) {
    event.preventDefault();
    {
      let formPayload = {
        check: this.state.checkConsumed,
        category_id: this.props.categoryId
      };
      if (this.validateCheck(formPayload.check)){

        this.props.addNewReality(formPayload);
        this.handleClearForm(event);
      }

    }
  }
  handleCheckChange(event) {
    this.setState({ checkConsumed: event.target.value })
  }

  validateCheck(check) {
    if (check === '') {
      let newError = { check: 'You must write a check.' }
      this.setState({ errors: Object.assign(this.state.errors, newError) })
      return false
    } else {
      let errorState = this.state.errors
      delete errorState.handleFormSubmit
      this.setState({ errors: errorState })
      return true
    }
  }
  render() {
    let errorDiv;
    let errorItems;
    if (Object.keys(this.state.errors).length > 1) {
      errorItems = Object.values(this.state.errors).map(error => {
        return(<li key={error}>{error}</li>)
      })
      errorDiv = <div className="callout alert">{errorItems}</div>
    }
  return (
      <div>
        <form className="callout" onSubmit={this.handleFormSubmit}>
        {errorDiv}
          <CheckField
            content={this.state.checkConsumed}
            label='Check'
            name='check'
            handlerFunction={this.handleCheckChange}
          />
          <div className="button-group">
            <button className="button" id="clear" onClick={this.handleClearForm}>Clear</button>
            <input className="button" type="submit" value="Submit" />
          </div>
        </form>
        <
        ArrowContainer
        categoryId = {this.props.categoryId}
        checkConsumed = {this.props.checkConsumed}/>
      </div>
    );
  }
}
export default FormContainer;
