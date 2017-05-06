import React, { Component } from 'react';
import Arrow from '../components/Arrow';

class ArrowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      reality_check: '',
      ids: [],
      id_counter: [],
      clicks: null,
    }
    this.clickHandler=this.clickHandler.bind(this)
  }
  componentDidMount(){
    fetch('/api/v1/reality_checks')
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
    let realityCheckIds = this.state.ids
    let randomId = realityCheckIds[Math.floor(Math.random()*realityCheckIds.length)]
    fetch(`/api/v1/reality_checks/${randomId}`, {
    })
    .then(response => response.json())
    .then(responseData => {
      this.setState({ reality_check: responseData.check })
      this.setState({ id_counter: responseData.id })
      this.setState({ clicks: clicks+=1 })
    })
  }
  render(){
      return(
        <div>
          {this.state.reality_check}
          <button>
            <a href="javascript:location.reload(true)">Save your reality checks!</a>
          </button>
        <button>
          <Arrow className="arrow"
            reality_check={this.state.reality_check}
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
