/// The steps taken to create a new web socket connection
enum ConnectingStep {
  /// Open web socket channel
  connect,

  /// Send connection init message
  sendInitMessage,

  /// Wait for start ack message
  waitingForConnectionAck,

  /// Web socket is ready
  ready,
}
