import React from 'react';

const Arrow = (props) => {
  return (
    <div>

      <div className="click" onClick={props.clickHandler}>
        <p>Receive A Reality!</p>
      </div>
      <div>{props.reality}</div>
    </div>
  )
}

export default Arrow
