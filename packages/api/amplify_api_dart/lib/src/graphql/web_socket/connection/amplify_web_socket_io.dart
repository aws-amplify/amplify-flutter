import 'package:amplify_api_dart/src/graphql/web_socket/connection/amplify_web_socket.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

/// Amplify Websocket implementation using the `web_socket_channel` package.
class AmplifyWebSocketIO extends AmplifyWebSocketConnection {
  /// Amplify Websocket IO implementation using the `web_socket_channel` package.
  AmplifyWebSocketIO({
    required super.config,
    required super.authProviderRepository,
  });

  /// Connect to a WebSocket server at the specified [uri].
  @override
  Future<WebSocketChannel> connect(Uri uri) async {
    final headers = await getAuthHeaders();
    return Future.value(
      IOWebSocketChannel.connect(
        uri,
        headers: headers,
        protocols: webSocketProtocols,
      ),
    );
  }
}
