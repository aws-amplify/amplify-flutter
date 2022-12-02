// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';
import 'dart:convert';

import 'package:amplify_api/src/graphql/providers/app_sync_api_key_auth_provider.dart';
import 'package:amplify_api/src/graphql/web_socket/blocs/web_socket_bloc.dart';
import 'package:amplify_api/src/graphql/web_socket/services/web_socket_service.dart';
import 'package:amplify_api/src/graphql/web_socket/state/web_socket_state.dart';
import 'package:amplify_api/src/graphql/web_socket/types/web_socket_types.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:async/async.dart';
import 'package:aws_common/testing.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:connectivity_plus_platform_interface/connectivity_plus_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:stream_channel/stream_channel.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

const testAccessToken = 'test-access-token-123';

class TestIamAuthProvider extends AWSIamAmplifyAuthProvider {
  @override
  Future<AWSCredentials> retrieve() async {
    return const AWSCredentials(
      'fake-access-key-123',
      'fake-secret-access-key-456',
    );
  }

  @override
  Future<AWSSignedRequest> authorizeRequest(
    AWSBaseHttpRequest request, {
    IamAuthProviderOptions? options,
  }) async {
    final signer = AWSSigV4Signer(
      credentialsProvider: AWSCredentialsProvider(await retrieve()),
    );
    final scope = AWSCredentialScope(
      region: options!.region,
      service: AWSService.appSync,
    );
    return signer.sign(
      request,
      credentialScope: scope,
      serviceConfiguration:
          options.serviceConfiguration ?? const BaseServiceConfiguration(),
    );
  }
}

class TestTokenAuthProvider extends TokenAmplifyAuthProvider {
  @override
  Future<String> getLatestAuthToken() async {
    return testAccessToken;
  }
}

void validateSignedRequest(AWSBaseHttpRequest request) {
  const userAgentHeader =
      zIsWeb ? AWSHeaders.amzUserAgent : AWSHeaders.userAgent;
  expect(
    request.headers[userAgentHeader],
    contains('aws-sigv4'),
  );
}

const testApiKeyConfig = AWSApiConfig(
  endpointType: EndpointType.graphQL,
  endpoint: 'https://abc123.appsync-api.us-east-1.amazonaws.com/graphql',
  region: 'us-east-1',
  authorizationType: APIAuthorizationType.apiKey,
  apiKey: 'abc-123',
);

const expectedApiKeyWebSocketConnectionUrl =
    'wss://abc123.appsync-realtime-api.us-east-1.amazonaws.com/graphql?header=eyJBY2NlcHQiOiJhcHBsaWNhdGlvbi9qc29uLCB0ZXh0L2phdmFzY3JpcHQiLCJDb250ZW50LUVuY29kaW5nIjoiYW16LTEuMCIsIkNvbnRlbnQtVHlwZSI6ImFwcGxpY2F0aW9uL2pzb247IGNoYXJzZXQ9dXRmLTgiLCJYLUFwaS1LZXkiOiJhYmMtMTIzIiwiSG9zdCI6ImFiYzEyMy5hcHBzeW5jLWFwaS51cy1lYXN0LTEuYW1hem9uYXdzLmNvbSJ9&payload=e30%3D';

AmplifyAuthProviderRepository getTestAuthProviderRepo() {
  final testAuthProviderRepo = AmplifyAuthProviderRepository()
    ..registerAuthProvider(
      APIAuthorizationType.apiKey.authProviderToken,
      AppSyncApiKeyAuthProvider(),
    );

  return testAuthProviderRepo;
}

const mockSubscriptionData = {
  'onCreatePost': {
    'id': '49d54440-cb80-4f20-964b-91c142761e82',
    'title':
        'Integration Test post - subscription create aa779f0d-0c92-4677-af32-e43f71b3eb55',
    'rating': 0,
    'created': null,
    'createdAt': '2022-08-15T18:22:15.410Z',
    'updatedAt': '2022-08-15T18:22:15.410Z',
    'blog': {
      'id': '164bd1f1-544c-40cb-a656-a7563b046e71',
      'name': 'Integration Test Blog with a post - create',
      'createdAt': '2022-08-15T18:22:15.164Z',
      'file': null,
      'files': null,
      'updatedAt': '2022-08-15T18:22:15.164Z'
    }
  }
};

const mockAckMessage = {
  'type': 'connection_ack',
  'payload': {'connectionTimeoutMs': 300000}
};

/// Hub Event Matchers
final connectedHubEvent = isA<SubscriptionHubEvent>().having(
  (event) => event.status,
  'status',
  SubscriptionStatus.connected,
);

final connectingHubEvent = isA<SubscriptionHubEvent>().having(
  (event) => event.status,
  'status',
  SubscriptionStatus.connecting,
);

final disconnectedHubEvent = isA<SubscriptionHubEvent>().having(
  (event) => event.status,
  'status',
  SubscriptionStatus.disconnected,
);

final pendingDisconnectedHubEvent = isA<SubscriptionHubEvent>().having(
  (event) => event.status,
  'status',
  SubscriptionStatus.pendingDisconnected,
);

final failedHubEvent = isA<SubscriptionHubEvent>().having(
  (event) => event.status,
  'status',
  SubscriptionStatus.failed,
);

WebSocketChannel getMockWebSocketChannel(Uri uri) {
  return MockWebSocketChannel();
}

WebSocketMessage startAck(String subscriptionID) => WebSocketMessage(
      messageType: MessageType.startAck,
      id: subscriptionID,
    );

void initMockConnection(
  MockWebSocketBloc bloc,
  MockWebSocketService service,
  String id,
) {
  bloc.stream.listen((event) {
    final state = event;
    if (state is ConnectingState &&
        state.networkState == NetworkState.connected) {
      service.channel.sink.add(jsonEncode(mockAckMessage));
    } else if (state is ConnectedState) {
      service.channel.sink.add(jsonEncode(startAck(id)));
    }
  });
}

// Mock WebSocket

class MockWebSocketSink extends DelegatingStreamSink<dynamic>
    implements WebSocketSink {
  MockWebSocketSink(super.sink);

  @override
  Future<void> close([int? closeCode, String? closeReason]) => super.close();
}

class MockWebSocketChannel extends WebSocketChannel {
  MockWebSocketChannel() : super(streamChannel);

  // ignore: close_sinks
  final controller = StreamController<dynamic>.broadcast();

  static StreamChannel<List<int>> streamChannel =
      StreamChannel(const Stream.empty(), NullStreamSink());

  @override
  Stream<dynamic> get stream => controller.stream;

  @override
  WebSocketSink get sink => MockWebSocketSink(controller.sink);
}

// Mock Connectivity Plus

const ConnectivityResult kCheckConnectivityResult = ConnectivityResult.wifi;

class MockConnectivityPlatform extends Mock
    with MockPlatformInterfaceMixin
    implements ConnectivityPlatform {
  // ignore: close_sinks
  final StreamController<ConnectivityResult> controller =
      StreamController<ConnectivityResult>.broadcast();

  @override
  Future<ConnectivityResult> checkConnectivity() async {
    return kCheckConnectivityResult;
  }

  @override
  Stream<ConnectivityResult> get onConnectivityChanged {
    return controller.stream;
  }
}

// From https://docs.amplify.aws/lib/graphqlapi/authz/q/platform/flutter/#oidc

const testOidcToken = '[OPEN-ID-CONNECT-TOKEN]';
const testFunctionToken = '[FUNCTION-CONNECT-TOKEN]';

class CustomOIDCProvider extends OIDCAuthProvider {
  const CustomOIDCProvider();

  @override
  Future<String?> getLatestAuthToken() async => testOidcToken;
}

class CustomFunctionProvider extends FunctionAuthProvider {
  const CustomFunctionProvider();

  @override
  Future<String?> getLatestAuthToken() async => testFunctionToken;
}

class MockWebSocketBloc extends WebSocketBloc {
  MockWebSocketBloc({
    required super.config,
    required super.authProviderRepo,
    required super.wsService,
    required super.subscriptionOptions,
    required super.pollClientOverride,
    required super.connectivityOverride,
  });
}

class MockWebSocketService extends AmplifyWebSocketService {
  MockWebSocketService({this.badInit = false});

  late MockWebSocketChannel channel;

  /// fails init process
  bool badInit;

  @override
  Stream<WebSocketEvent> init(WebSocketState state) {
    if (badInit) {
      return Stream.error(
        WebSocketChannelException('Mock Web Socket Exception'),
      );
    }
    channel = MockWebSocketChannel();

    sink = channel.sink;

    return transformStream(channel.stream);
  }

  @override
  Future<void> unsubscribe(
    String subscriptionId,
  ) async {
    await super.unsubscribe(subscriptionId);

    final completeMessage =
        jsonEncode({'id': subscriptionId, 'type': 'complete'});
    channel.sink.add(completeMessage);
  }
}

class MockPollClient {
  MockPollClient({
    this.induceTimeout = false,
    this.sendUnhealthyResponse = false,
    this.maxFailAttempts = 5,
  });

  bool induceTimeout;
  bool sendUnhealthyResponse;
  int maxFailAttempts;

  MockAWSHttpClient get client {
    var mockPollFailCount = 0;

    return MockAWSHttpClient((request, _) async {
      if (sendUnhealthyResponse) {
        return AWSHttpResponse(
          statusCode: 400,
          body: utf8.encode('unhealthy'),
        );
      }

      if (induceTimeout && mockPollFailCount++ <= maxFailAttempts) {
        await Future<void>.delayed(const Duration(seconds: 10));
      }

      return AWSHttpResponse(
        statusCode: 200,
        body: utf8.encode('healthy'),
      );
    });
  }
}
