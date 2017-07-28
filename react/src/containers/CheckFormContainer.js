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
        <form className="callout reactform col-xs-2 col-sm-8 col-md-4 col-lg-12 " onSubmit={this.handleFormSubmit}>
        {errorDiv}
        <div className="reality">
          <CheckField className="reality"
            content={this.state.checkConsumed}
            label='Create Question Quote or Statement for the Database!'
            name='check'
            id = "reality"
            handlerFunction={this.handleCheckChange}
          />
          </div>
          <div className="btn-group ">
            <button className="btn btn-block" onClick={this.handleClearForm}>Clear</button>
            <button className="btn btn-primary btn-block" type="submit" id="submit" value="Submit">Submit</button>
            <button className="btn btn-warning btn-block reload" >
              <a className="reload" href="javascript:location.reload(true)">Reload Realities!</a>
            </button>
          </div>
        </form>
        <div className= "animated SlideInLeft arrow">
          <
          ArrowContainer
          user_id = {this.props.user}
          categoryId = {this.props.categoryId}
          checkConsumed = {this.props.checkConsumed}/>
        </div>

      </div>
    );
  }
}
export default FormContainer;
