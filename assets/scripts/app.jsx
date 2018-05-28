import React from 'react';
import { Switch, Route } from 'react-router-dom';

import Dashboard from './pages/dashboard';
import LiveImagery from './pages/live-imagery';

export default class App extends React.Component {
  render() {
    return (
      <div className='app-main'>
        <main>
          <Switch>
            <Route exact path='/app/dashboard' component={Dashboard} />
            <Route exact path='/app/live-imagery' component={LiveImagery} />
          </Switch>
        </main>
      </div>
    );
  }
}
