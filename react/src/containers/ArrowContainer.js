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
    this.favoriteReality=this.favoriteReality.bind(this)
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
  favoriteReality() {
    fetch("/api/v1/user_favorite_realities", {
      credentials: 'same-origin',
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(this.state.reality)
    })
    .then(response => response.json())
    .then(responseData => {
      console.log(responseData);
    })

  }


  clickHandler() {
    let ids = [];
    let realityIds = this.state.realities[0].realities.map(reality =>
    ids.push(reality.id))
    console.log(realityIds)
    let randomId = realityIds[Math.floor(Math.random()*realityIds.length)]
      this.setState({ reality: this.state.realities[0].realities[randomId-1].check })
  }
  render(){
      return(
        <div>
            <div className= "realities">{this.state.reality}</div>
        <button>
          <Arrow className="arrow"
            clickHandler={this.clickHandler}
            />
        </button>

        <div onClick={this.favoriteReality} > Save To Your Favorites! </div>
        <button className="reload">
        <a className="reload" href="javascript:location.reload(true)">Save your submitted realities!</a>
        </button>
        </div>
      )
    }
  }

export default ArrowContainer;
