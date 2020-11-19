import consumer from "./consumer"

consumer.subscriptions.create("DataChannel", {
  connected() {
    console.log("--- SilverMon by silverstorm ---");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
  }
});
