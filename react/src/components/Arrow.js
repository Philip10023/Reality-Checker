import React from 'react';

const Arrow = (props) => {
  return (
    <div>

      <div className="arrow" onClick={props.clickHandler}>
        <p>Click Me</p>
      </div>
      <div>{props.reality}</div>
    </div>
  )
}

export default Arrow
