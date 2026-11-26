// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:aws_face_liveness/aws_face_liveness.dart';
import 'package:aws_face_liveness/src/pigeons/aws_face_liveness_pigeon.g.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

const _startChannel =
    'dev.flutter.pigeon.aws_face_liveness.AwsFaceLivenessHostApi.start';
const _fetchCredentialsChannel =
    'dev.flutter.pigeon.aws_face_liveness.AwsFaceLivenessFlutterApi.fetchCredentials';
const _codec = AwsFaceLivenessFlutterApi.pigeonChannelCodec;

final class _FakeCredentialsProvider implements AWSCredentialsProvider {
  _FakeCredentialsProvider(this.credentials);

  final AWSCredentials credentials;

  @override
  Future<AWSCredentials> resolve() async => credentials;
}

final class _NeverCompletingCredentialsProvider
    implements AWSCredentialsProvider {
  @override
  Future<AWSCredentials> resolve() => Completer<AWSCredentials>().future;
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final messenger =
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;

  AwsFaceLiveness liveness([AWSCredentials? credentials]) => AwsFaceLiveness(
    credentialsProvider: _FakeCredentialsProvider(
      credentials ?? const StaticCredentials('akid', 'secret'),
    ),
  );

  /// Handles `start` by calling [onStart] with the decoded request and
  /// replying with its result, a pigeon-encoded response list.
  void mockStart(Future<List<Object?>> Function(LivenessStartRequest) onStart) {
    messenger.setMockMessageHandler(_startChannel, (message) async {
      final args = _codec.decodeMessage(message)! as List<Object?>;
      final reply = await onStart(args.single! as LivenessStartRequest);
      return _codec.encodeMessage(reply);
    });
  }

  /// Calls the Dart credentials handler the way native code does.
  Future<LivenessCredentials?> fetchCredentials() async {
    final completer = Completer<LivenessCredentials?>();
    await messenger.handlePlatformMessage(
      _fetchCredentialsChannel,
      _codec.encodeMessage(null),
      (reply) {
        final decoded = _codec.decodeMessage(reply) as List<Object?>?;
        completer.complete(decoded?.single as LivenessCredentials?);
      },
    );
    return completer.future;
  }

  tearDown(() => messenger.setMockMessageHandler(_startChannel, null));

  test('start sends the request and completes on success', () async {
    LivenessStartRequest? received;
    mockStart((request) async {
      received = request;
      return [null];
    });

    await liveness().start(
      sessionId: 'session',
      region: 'us-east-1',
      disableStartView: true,
    );

    expect(received?.sessionId, 'session');
    expect(received?.region, 'us-east-1');
    expect(received?.disableStartView, isTrue);
  });

  test('start maps platform errors to FaceLivenessException', () async {
    mockStart(
      (_) async => ['sessionNotFound', 'Session not found.', 'Use a new one.'],
    );

    await expectLater(
      liveness().start(sessionId: 'session', region: 'us-east-1'),
      throwsA(
        isA<FaceLivenessException>()
            .having(
              (e) => e.code,
              'code',
              FaceLivenessErrorCode.sessionNotFound,
            )
            .having((e) => e.message, 'message', 'Session not found.')
            .having(
              (e) => e.recoverySuggestion,
              'recoverySuggestion',
              'Use a new one.',
            ),
      ),
    );
  });

  test('unrecognized platform error codes map to unknown', () async {
    mockStart((_) async => ['somethingNew', null, null]);

    await expectLater(
      liveness().start(sessionId: 'session', region: 'us-east-1'),
      throwsA(
        isA<FaceLivenessException>().having(
          (e) => e.code,
          'code',
          FaceLivenessErrorCode.unknown,
        ),
      ),
    );
  });

  test('start rejects empty arguments without calling native', () async {
    var called = false;
    mockStart((_) async {
      called = true;
      return [null];
    });

    await expectLater(
      liveness().start(sessionId: '', region: 'us-east-1'),
      throwsArgumentError,
    );
    expect(called, isFalse);
  });

  test('native can fetch temporary credentials while start runs', () async {
    final expiration = DateTime.utc(2030);
    LivenessCredentials? fetched;
    mockStart((_) async {
      fetched = await fetchCredentials();
      return [null];
    });

    await liveness(
      TemporaryCredentials('akid', 'secret', 'token', expiration),
    ).start(sessionId: 'session', region: 'us-east-1');

    expect(fetched?.accessKeyId, 'akid');
    expect(fetched?.secretAccessKey, 'secret');
    expect(fetched?.sessionToken, 'token');
    expect(
      fetched?.expirationEpochSeconds,
      expiration.millisecondsSinceEpoch ~/ 1000,
    );
  });

  test('static credentials have no session token or expiration', () async {
    LivenessCredentials? fetched;
    mockStart((_) async {
      fetched = await fetchCredentials();
      return [null];
    });

    await liveness().start(sessionId: 'session', region: 'us-east-1');

    expect(fetched?.accessKeyId, 'akid');
    expect(fetched?.sessionToken, isNull);
    expect(fetched?.expirationEpochSeconds, isNull);
  });

  test('the credentials handler is removed after start completes', () async {
    mockStart((_) async => [null]);
    await liveness().start(sessionId: 'session', region: 'us-east-1');

    expect(await fetchCredentials(), isNull);
  });

  test('a concurrent start is rejected without replacing the '
      'credentials handler', () async {
    final release = Completer<void>();
    var startCalls = 0;
    mockStart((_) async {
      startCalls++;
      await release.future;
      return [null];
    });

    final first = liveness(
      const StaticCredentials('first', 'secret'),
    ).start(sessionId: 'session', region: 'us-east-1');
    await pumpEventQueue();

    await expectLater(
      liveness(
        const StaticCredentials('second', 'secret'),
      ).start(sessionId: 'other', region: 'us-east-1'),
      throwsA(
        isA<FaceLivenessException>().having(
          (e) => e.code,
          'code',
          FaceLivenessErrorCode.alreadyInProgress,
        ),
      ),
    );
    expect(startCalls, 1);
    expect((await fetchCredentials())?.accessKeyId, 'first');

    release.complete();
    await first;

    // A new check can start once the first one finishes.
    mockStart((_) async => [null]);
    await liveness().start(sessionId: 'session', region: 'us-east-1');
  });

  test('start sends the FaceMovement camera', () async {
    LivenessStartRequest? received;
    mockStart((request) async {
      received = request;
      return [null];
    });

    await liveness().start(sessionId: 'session', region: 'us-east-1');
    expect(received?.faceMovementCamera, LivenessCameraPosition.front);

    await liveness().start(
      sessionId: 'session',
      region: 'us-east-1',
      faceMovementCamera: FaceLivenessCamera.back,
    );
    expect(received?.faceMovementCamera, LivenessCameraPosition.back);
  });

  test('a credentials provider that never completes times out', () {
    fakeAsync((async) {
      List<Object?>? reply;
      mockStart((_) async {
        await messenger.handlePlatformMessage(
          _fetchCredentialsChannel,
          _codec.encodeMessage(null),
          (data) => reply = _codec.decodeMessage(data) as List<Object?>?,
        );
        return [null];
      });

      unawaited(
        AwsFaceLiveness(
          credentialsProvider: _NeverCompletingCredentialsProvider(),
        ).start(sessionId: 'session', region: 'us-east-1'),
      );
      async
        ..flushMicrotasks()
        ..elapse(const Duration(seconds: 29))
        ..flushMicrotasks();
      expect(reply, isNull);

      async
        ..elapse(const Duration(seconds: 2))
        ..flushMicrotasks();
      // Pigeon error replies are [code, message, details].
      expect(reply, hasLength(3));
    });
  });

  test('credentials are redacted from toString', () {
    final credentials = LivenessCredentials(
      accessKeyId: 'akid',
      secretAccessKey: 'super-secret',
      sessionToken: 'super-token',
      expirationEpochSeconds: 1,
    );

    expect(credentials.toString(), isNot(contains('super-secret')));
    expect(credentials.toString(), isNot(contains('super-token')));
  });
}
