#  WebSocketClient

This is an internal implementation of WebSocketClient. It uses Apple's URLSessionWebSocketTask under the hood.


The primary objective of this module is to offer convenient APIs for reading from and writing to WebSocket connections. 
Moreover, it supervises WebSocket connections by monitoring changes in network reachability and retrying in cases of transient internal server failures.

## RetryWithJitter

This component implements a general full jitter retry strategy as outlined in [an AWS blog post](https://aws.amazon.com/blogs/architecture/exponential-backoff-and-jitter/).
