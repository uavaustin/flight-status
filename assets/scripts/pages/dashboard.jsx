import React from 'react';

import mapboxgl from 'mapbox-gl';

mapboxgl.accessToken = process.env.MAPBOX_TOKEN;

class Map extends React.Component {
  componentDidMount() {
    this.map = new mapboxgl.Map({
      container: this.mapContainer,
      style: 'mapbox://styles/mapbox/light-v9'
    });
  }

  componentWillUnmount() {
    this.map.remove();
  }

  render() {
    const style = {
      position: 'absolute',
      top: 0,
      bottom: 0,
      width: '100%'
    };

    return <div style={style} ref={el => this.mapContainer = el} />;
  }
}

export default class Dashboard extends React.Component {
  render() {
    return (
      <div className='dashboard'>
        <Map />
      </div>
    );
  }
}
