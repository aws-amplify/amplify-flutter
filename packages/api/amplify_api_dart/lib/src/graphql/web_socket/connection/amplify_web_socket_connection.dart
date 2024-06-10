import 'package:amplify_api_dart/src/decorators/web_socket_auth_utils.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/connection/amplify_web_socket.dart'
    if (dart.library.io) 'amplify_web_socket_io.dart'
    if (dart.library.html) 'amplify_web_socket_web.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

/// Amplify Web socket connection class that provides a way to connect to a WebSocket server.
class AmplifyWebSocket {
  /// Constructor for AmplifyWebSocketConnection
  /// Takes in an [AWSApiConfig] and an [AmplifyAuthProviderRepository]
  AmplifyWebSocket({
    required this.config,
    required this.authProviderRepository,
  });

  /// The [Uri] for the web socket
  Future<Uri> get uri async {
    return generateConnectionUri(config, authProviderRepository);
  }

  /// Connect to a web socket server.
  Future<WebSocketChannel> connect() async {
    final uri = await this.uri;
    return AmplifyWebSocketConnection(
      config: config,
      authProviderRepository: authProviderRepository,
    ).connect(uri);
  }

  /// AWS Config
  final AWSApiConfig config;

  /// Amplify Auth Provider
  final AmplifyAuthProviderRepository authProviderRepository;
}
