import React from 'react';

import socket from '../net/socket';

export default class LiveImagery extends React.Component {
  constructor(props) {
    super(props);
    this.state = { latestImage: null };
  }

  componentDidMount() {
    this.imageryChannel = socket.channel('imagery:live', {});

    this.imageryChannel.on('new', (msg) => {
      this.setState({
        latestImage: msg.data
      });
    });

    this.imageryChannel.join()
      .receive('ok', () => {
        console.log('live imagery channel connected');
      })
      .receive('error', () => {
        console.error('could not connect live imagery channel');
      });
  }

  componentWillUnmount() {
    this.imageryChannel.leave();
  }

  render() {
    let image;

    if (this.state.latestImage === null) {
      image = <b>No imagery.</b>;
    } else {
      image = (
        <img src={"data:image/jpeg;base64," + this.state.latestImage} />
      );
    }

    return (
      <div className='live-imagery'>
        {image}
      </div>
    );
  }
}
