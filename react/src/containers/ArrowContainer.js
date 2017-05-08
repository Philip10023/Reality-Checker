import React, { Component } from 'react';
import Arrow from '../components/Arrow';

class ArrowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      realities: [],
      reality: '',
      ids: [],
      id_counter: []
    }
    this.clickHandler=this.clickHandler.bind(this)
  }
  componentDidMount(){
    let categoryId = this.props.categoryId
    fetch(`/api/v1/categories/${categoryId}`, {
      credentials: 'same-origin',
      method: 'GET',
      headers: { 'Content-Type': 'application/json' }
    })
    .then(response => response.json())
    .then(responseData => {
      this.setState({ realities: [responseData] })
      console.log(responseData);
    })
}


  clickHandler() {
    let ids = [];
    let realityIds = this.state.realities[0].realities.map(reality =>
    ids.push(reality.id))
    console.log(realityIds)
    let randomId = realityIds[Math.floor(Math.random()*realityIds.length)]
    console.log(randomId)
      this.setState({ reality: this.state.realities[0].realities[randomId-1].check })
  }
  render(){
      return(
        <div>
          {this.state.reality}
          <button>
            <a href="javascript:location.reload(true)">Save your realities!</a>
          </button>
        <button>
          <Arrow className="arrow"
            reality={this.state.reality}
            clickHandler={this.clickHandler}
            />
        </button>
        </div>
      )
    }
  }

export default ArrowContainer;
