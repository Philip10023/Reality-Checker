import React from 'react';
import { ControlLabel } from 'react-bootstrap'
import { FormControl } from 'react-bootstrap'

const CheckField = (props) => {
  return(
  <div>
    <ControlLabel>{props.label}</ControlLabel>
      <FormControl
        name={props.body}
        type='text'
        onChange={props.handlerFunction}
        value={props.content}
      />
      <FormControl.Feedback />
  </div>
    );
  }

  export default CheckField;
