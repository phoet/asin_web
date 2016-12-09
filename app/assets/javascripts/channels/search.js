App.search = App.cable.subscriptions.create("SearchChannel", {
  connected: function() {
    console.log('connected');
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    console.log('disconnected');
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    console.log('received');
    console.table(data);
    // Called when there's incoming data on the websocket for this channel
  }
});
