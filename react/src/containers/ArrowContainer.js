import React, { Component } from 'react';
import Arrow from '../components/Arrow';

class ArrowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      reality: '',
      ids: [],
      id_counter: [],
      clicks: null,
    }
    this.clickHandler=this.clickHandler.bind(this)
  }
  componentDidMount(){
    fetch('/api/v1/realities')
    .then(response => response.json())
    .then(responseData => {
      let id_container = []
      responseData.map(object => {
        id_container.push( object.id )
      })
      this.setState({ ids: id_container })
    })
  }


  clickHandler() {
    let clicks = this.state.clicks
    let realityIds = this.state.ids
    let randomId = realityIds[Math.floor(Math.random()*realityIds.length)]
    fetch(`/api/v1/realities/${randomId}`, {
    })
    .then(response => response.json())
    .then(responseData => {
      this.setState({ reality: responseData.check })
      this.setState({ id_counter: responseData.id })
      this.setState({ clicks: clicks+=1 })
    })
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
          <div>
            {this.state.clicks}
          </div>
        </div>
      )
    }
  }

export default ArrowContainer;
