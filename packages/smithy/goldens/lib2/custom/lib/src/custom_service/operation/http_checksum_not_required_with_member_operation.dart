// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library custom_v2.custom_service.operation.http_checksum_not_required_with_member_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i8;
import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:custom_v2/src/custom_service/common/endpoint_resolver.dart'
    as _i6;
import 'package:custom_v2/src/custom_service/common/serializers.dart' as _i5;
import 'package:custom_v2/src/custom_service/model/http_checksum_not_required_with_member_input.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

class HttpChecksumNotRequiredWithMemberOperation extends _i1.HttpOperation<
    _i2.Uint8List,
    _i3.HttpChecksumNotRequiredWithMemberInput,
    _i1.Unit,
    _i1.Unit> {
  HttpChecksumNotRequiredWithMemberOperation({
    required String region,
    Uri? baseUri,
  })  : _region = region,
        _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.Uint8List,
          _i3.HttpChecksumNotRequiredWithMemberInput,
          _i1.Unit,
          _i1.Unit>> protocols = [
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
  _i1.HttpRequest buildRequest(
          _i3.HttpChecksumNotRequiredWithMemberInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/notRequiredWithMember';
        if (input.checksumAlgorithm != null) {
          b.headers['x-amz-request-algorithm'] = input.checksumAlgorithm!.value;
        }
        if (input.checksumAlgorithm != null) {
          b.requestInterceptors
              .add(_i4.WithChecksum(input.checksumAlgorithm!.value));
        }
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
    _i1.Unit payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'HttpChecksumNotRequiredWithMember';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i1.Unit> run(
    _i3.HttpChecksumNotRequiredWithMemberInput input, {
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
