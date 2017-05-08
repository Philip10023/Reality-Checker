import React from 'react';

const CheckField = (props) => {
  return(
    <label>{props.label}
      <textarea
        name={props.body}
        type='text'
        onChange={props.handlerFunction}
        value={props.content}
      />
    </label>
    );
  }

  export default CheckField;
