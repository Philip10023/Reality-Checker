import React, { Component } from 'react';
import Arrow from '../components/Arrow';

class ArrowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      realities: [],
      reality: '',
      ids: [],
      id_counter: [],
      id: '',
      user_id: '',
      categoryId: ''
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
      this.setState({ user_id: responseData.user})
      this.setState({ categoryId: this.props.categoryId })
      console.log(responseData);
    })
}
  favoriteReality() {
    let payload = JSON.stringify({
      category_id: this.state.categoryId,
      favreality: this.state.reality,
      user_id: this.state.user_id,
      reality_id: this.state.id
    });
    console.log(payload)
    fetch("/api/v1/favorites", {
      credentials: 'same-origin',
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: payload
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
      this.setState({ id: this.state.realities[0].realities[randomId-1].id})
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
        <button className="saveReality">
        <div onClick={this.favoriteReality} > Save To Your Favorites!<img className="forward-button"></img> </div>
        </button>
        <button className="reload">
        <a className="reload" href="javascript:location.reload(true)">Save your submitted realities!</a>
        </button>
        </div>
      )
    }
  }

export default ArrowContainer;
