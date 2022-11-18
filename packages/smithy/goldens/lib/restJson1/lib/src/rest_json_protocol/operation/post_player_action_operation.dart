// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.operation.post_player_action_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i8;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:rest_json1_v1/src/rest_json_protocol/common/endpoint_resolver.dart'
    as _i6;
import 'package:rest_json1_v1/src/rest_json_protocol/common/serializers.dart'
    as _i5;
import 'package:rest_json1_v1/src/rest_json_protocol/model/post_player_action_input.dart'
    as _i2;
import 'package:rest_json1_v1/src/rest_json_protocol/model/post_player_action_output.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This operation defines a union with a Unit member.
class PostPlayerActionOperation extends _i1.HttpOperation<
    _i2.PostPlayerActionInput,
    _i2.PostPlayerActionInput,
    _i3.PostPlayerActionOutput,
    _i3.PostPlayerActionOutput> {
  /// This operation defines a union with a Unit member.
  PostPlayerActionOperation({
    required String region,
    Uri? baseUri,
  })  : _region = region,
        _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i2.PostPlayerActionInput, _i2.PostPlayerActionInput,
          _i3.PostPlayerActionOutput, _i3.PostPlayerActionOutput>> protocols = [
    _i4.RestJson1Protocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithUserAgent('aws-sdk-dart/0.3.0'),
        const _i4.WithSdkInvocationId(),
        const _i4.WithSdkRequest(),
      ],
      responseInterceptors: [],
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = _i6.endpointResolver.resolve(
    _i6.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.PostPlayerActionInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/PostPlayerAction';
      });
  @override
  int successCode([_i3.PostPlayerActionOutput? output]) => 200;
  @override
  _i3.PostPlayerActionOutput buildOutput(
    _i3.PostPlayerActionOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.PostPlayerActionOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'PostPlayerAction';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.PostPlayerActionOutput> run(
    _i2.PostPlayerActionInput input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i8.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
      },
    );
  }
}
