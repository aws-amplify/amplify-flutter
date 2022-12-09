// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.operation.update_global_table_settings_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i16;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_table_not_found_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/index_not_found_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/internal_server_error.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/invalid_endpoint_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/limit_exceeded_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_not_found_exception.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/resource_in_use_exception.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_global_table_settings_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_global_table_settings_output.dart'
    as _i3;

/// Updates settings for a global table.
class UpdateGlobalTableSettingsOperation extends _i1.HttpOperation<
    _i2.UpdateGlobalTableSettingsInput,
    _i2.UpdateGlobalTableSettingsInput,
    _i3.UpdateGlobalTableSettingsOutput,
    _i3.UpdateGlobalTableSettingsOutput> {
  /// Updates settings for a global table.
  UpdateGlobalTableSettingsOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.UpdateGlobalTableSettingsInput,
          _i2.UpdateGlobalTableSettingsInput,
          _i3.UpdateGlobalTableSettingsOutput,
          _i3.UpdateGlobalTableSettingsOutput>> protocols = [
    _i5.AwsJson1_0Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'DynamoDB_20120810.UpdateGlobalTableSettings',
        ),
        _i5.WithSigV4(
          region: _region,
          service: _i7.AWSService.dynamoDb,
          credentialsProvider: _credentialsProvider,
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.3.0'),
        const _i5.WithSdkInvocationId(),
        const _i5.WithSdkRequest(),
      ],
      responseInterceptors: [],
    )
  ];

  late final _i5.AWSEndpoint _awsEndpoint = _i8.endpointResolver.resolve(
    _i8.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i4.AWSCredentialsProvider _credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i2.UpdateGlobalTableSettingsInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.UpdateGlobalTableSettingsOutput? output]) => 200;
  @override
  _i3.UpdateGlobalTableSettingsOutput buildOutput(
    _i3.UpdateGlobalTableSettingsOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.UpdateGlobalTableSettingsOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'GlobalTableNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i9.GlobalTableNotFoundException,
          builder: _i9.GlobalTableNotFoundException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'IndexNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i10.IndexNotFoundException,
          builder: _i10.IndexNotFoundException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InternalServerError',
          ),
          _i1.ErrorKind.server,
          _i11.InternalServerError,
          builder: _i11.InternalServerError.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InvalidEndpointException',
          ),
          _i1.ErrorKind.client,
          _i12.InvalidEndpointException,
          statusCode: 421,
          builder: _i12.InvalidEndpointException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          _i13.LimitExceededException,
          builder: _i13.LimitExceededException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ReplicaNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i14.ReplicaNotFoundException,
          builder: _i14.ReplicaNotFoundException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ResourceInUseException',
          ),
          _i1.ErrorKind.client,
          _i15.ResourceInUseException,
          builder: _i15.ResourceInUseException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'UpdateGlobalTableSettings';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.UpdateGlobalTableSettingsOutput> run(
    _i2.UpdateGlobalTableSettingsInput input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i16.runZoned(
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
