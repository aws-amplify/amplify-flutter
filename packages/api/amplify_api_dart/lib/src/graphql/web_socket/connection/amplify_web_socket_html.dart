import 'dart:convert';

import 'package:amplify_api_dart/src/graphql/web_socket/connection/amplify_web_socket.dart';
import 'package:web_socket_channel/html.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

/// Amplify Websocket implementation using the `web_socket_channel` package.
class AmplifyWebSocketHTML extends AmplifyWebSocketConnection {
  /// Amplify Websocket HTML implementation using the `web_socket_channel` package.
  AmplifyWebSocketHTML({
    required super.config,
    required super.authProviderRepository,
  });

  /// Connect to a WebSocket server at the specified [uri].
  @override
  Future<WebSocketChannel> connect(Uri uri) {
    final authorizationHeaders = getAuthHeaders();
    // TODO(equartey): Add auth to protocol per AppSync Spec
    final encodedAuthHeaders =
        base64.encode(json.encode(authorizationHeaders).codeUnits);
    webSocketProtocols.add('authorization: $encodedAuthHeaders');
    return Future.value(
      HtmlWebSocketChannel.connect(uri, protocols: webSocketProtocols),
    );
  }
}
