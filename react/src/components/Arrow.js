import React from 'react';

const Arrow = (props) => {
  return (
    <div>

      <div className="click" onClick={props.clickHandler}>
        <p>Click me to see a reality!</p>
      </div>
      <div>{props.reality}</div>
    </div>
  )
}

export default Arrow
