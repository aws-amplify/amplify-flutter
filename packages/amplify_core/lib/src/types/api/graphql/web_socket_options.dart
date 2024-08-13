import 'package:meta/meta.dart'; // Importing the 'meta' package to use the @internal annotation

/// An internal class to control websocket features after API plugin has been initialized.
@internal
class WebSocketOptions {
  /// Private constructor to prevent instantiation
  WebSocketOptions._();

  /// Private static boolean field
  static bool _autoReconnect = true;

  /// Static getter method for the boolean field
  @internal
  static bool get autoReconnect => _autoReconnect;

  /// Static setter method for the boolean field
  @internal
  static set autoReconnect(bool value) {
    _autoReconnect = value;
  }
}
