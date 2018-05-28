/** Contains the websocket connection to the server. */

import { Socket } from 'phoenix';

let socket = new Socket('/socket', { params: { token: window.userToken } });

// We'll go ahead and connect it so other files importing this one
// can subscribe to topics right away.
socket.connect();

export default socket;
