import React from 'react';

const Arrow = (props) => {
  return (
    <div>

      <div className="click" onClick={props.clickHandler}>
        <span>Click me to see a reality!</span>
      </div>
      <div>{props.reality}</div>
    </div>
  )
}

export default Arrow
