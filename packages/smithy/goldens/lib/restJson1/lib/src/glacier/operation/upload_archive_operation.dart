// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v1.glacier.operation.upload_archive_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i2;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:rest_json1_v1/src/glacier/common/endpoint_resolver.dart';
import 'package:rest_json1_v1/src/glacier/common/serializers.dart';
import 'package:rest_json1_v1/src/glacier/model/archive_creation_output.dart';
import 'package:rest_json1_v1/src/glacier/model/invalid_parameter_value_exception.dart';
import 'package:rest_json1_v1/src/glacier/model/missing_parameter_value_exception.dart';
import 'package:rest_json1_v1/src/glacier/model/request_timeout_exception.dart';
import 'package:rest_json1_v1/src/glacier/model/resource_not_found_exception.dart';
import 'package:rest_json1_v1/src/glacier/model/service_unavailable_exception.dart';
import 'package:rest_json1_v1/src/glacier/model/upload_archive_input.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

class UploadArchiveOperation extends _i1.HttpOperation<_i2.Stream<List<int>>,
    UploadArchiveInput, ArchiveCreationOutputPayload, ArchiveCreationOutput> {
  UploadArchiveOperation({
    required String region,
    Uri? baseUri,
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.defaultChain(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<_i2.Stream<List<int>>, UploadArchiveInput,
          ArchiveCreationOutputPayload, ArchiveCreationOutput>> protocols = [
    _i4.RestJson1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            _i4.WithSigV4(
              region: _region,
              service: _i5.AWSService.glacier,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(UploadArchiveInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/{accountId}/vaults/{vaultName}/archives';
        if (input.archiveDescription != null) {
          if (input.archiveDescription!.isNotEmpty) {
            b.headers['x-amz-archive-description'] = input.archiveDescription!;
          }
        }
        if (input.checksum != null) {
          if (input.checksum!.isNotEmpty) {
            b.headers['x-amz-sha256-tree-hash'] = input.checksum!;
          }
        }
      });

  @override
  int successCode([ArchiveCreationOutput? output]) => 201;

  @override
  ArchiveCreationOutput buildOutput(
    ArchiveCreationOutputPayload payload,
    _i5.AWSBaseHttpResponse response,
  ) =>
      ArchiveCreationOutput.fromResponse(
        payload,
        response,
      );

  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<InvalidParameterValueException,
            InvalidParameterValueException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.glacier',
            shape: 'InvalidParameterValueException',
          ),
          _i1.ErrorKind.client,
          InvalidParameterValueException,
          statusCode: 400,
          builder: InvalidParameterValueException.fromResponse,
        ),
        _i1.SmithyError<MissingParameterValueException,
            MissingParameterValueException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.glacier',
            shape: 'MissingParameterValueException',
          ),
          _i1.ErrorKind.client,
          MissingParameterValueException,
          statusCode: 400,
          builder: MissingParameterValueException.fromResponse,
        ),
        _i1.SmithyError<RequestTimeoutException, RequestTimeoutException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.glacier',
            shape: 'RequestTimeoutException',
          ),
          _i1.ErrorKind.client,
          RequestTimeoutException,
          statusCode: 408,
          builder: RequestTimeoutException.fromResponse,
        ),
        _i1.SmithyError<ResourceNotFoundException, ResourceNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.glacier',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          ResourceNotFoundException,
          statusCode: 404,
          builder: ResourceNotFoundException.fromResponse,
        ),
        _i1.SmithyError<ServiceUnavailableException,
            ServiceUnavailableException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.glacier',
            shape: 'ServiceUnavailableException',
          ),
          _i1.ErrorKind.server,
          ServiceUnavailableException,
          statusCode: 500,
          builder: ServiceUnavailableException.fromResponse,
        ),
      ];

  @override
  String get runtimeTypeName => 'UploadArchive';

  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();

  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;

  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;

  @override
  _i1.SmithyOperation<ArchiveCreationOutput> run(
    UploadArchiveInput input, {
    _i5.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i2.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i5.AWSHeaders.sdkInvocationId: _i5.uuid(secure: true)},
      },
    );
  }
}
