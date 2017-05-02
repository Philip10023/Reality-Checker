import React from 'react';
import { Route, IndexRoute, Router, browserHistory } from 'react-router';
import CheckShowContainer from './containers/CheckShowContainer';

const App = (props) => {
  return (
    <Router history={browserHistory}>
      <Route path='/' >
        <Route path='/categories/:id' component={CheckShowContainer} />
      </Route>
    </Router>
  );
}

export default App;
