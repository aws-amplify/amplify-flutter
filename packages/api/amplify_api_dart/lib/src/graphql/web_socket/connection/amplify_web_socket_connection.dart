import 'package:amplify_api_dart/src/decorators/web_socket_auth_utils.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

/// An Abstract class that provides a way to connect to a WebSocket server.
/// Provides platform specific implementations.
class AmplifyWebSocketConnection {
  /// Constructor for AmplifyWebSocket
  /// Takes in an [AWSApiConfig] and an [AmplifyAuthProviderRepository]
  AmplifyWebSocketConnection({
    required this.config,
    required this.authProviderRepository,
  });

  /// Connect to a web socket server at the specified [uri].
  Future<WebSocketChannel> connect(Uri uri) async {
    throw UnimplementedError('connect() has not been implemented.');
  }

  /// fetch auth headers
  Future<Map<String, String>> getAuthHeaders() async {
    return authorizeConnection(config, authProviderRepository);
  }

  /// AWS Config
  final AWSApiConfig config;

  /// Amplify Auth Provider
  final AmplifyAuthProviderRepository authProviderRepository;

  /// Websocket Protocols
  List<String> webSocketProtocols = ['graphql-ws'];
}
