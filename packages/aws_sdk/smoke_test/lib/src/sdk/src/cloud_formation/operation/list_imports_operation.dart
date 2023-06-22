// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.operation.list_imports_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i10;

import 'package:aws_common/aws_common.dart' as _i8;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i5;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/endpoint_resolver.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/serializers.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_imports_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_imports_output.dart'
    as _i3;

/// Lists all stacks that are importing an exported output value. To modify or remove an exported output value, first use this action to see which stacks are using it. To see the exported output values in your account, see ListExports.
///
/// For more information about importing an exported output value, see the [Fn::ImportValue](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html) function.
class ListImportsOperation extends _i1.PaginatedHttpOperation<
    _i2.ListImportsInput,
    _i2.ListImportsInput,
    _i3.ListImportsOutput,
    _i3.ListImportsOutput,
    String,
    void,
    _i4.BuiltList<String>> {
  /// Lists all stacks that are importing an exported output value. To modify or remove an exported output value, first use this action to see which stacks are using it. To see the exported output values in your account, see ListExports.
  ///
  /// For more information about importing an exported output value, see the [Fn::ImportValue](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html) function.
  ListImportsOperation({
    required String region,
    Uri? baseUri,
    _i5.AWSCredentialsProvider credentialsProvider =
        const _i5.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<_i2.ListImportsInput, _i2.ListImportsInput,
          _i3.ListImportsOutput, _i3.ListImportsOutput>> protocols = [
    _i6.AwsQueryProtocol(
      serializers: _i7.serializers,
      builderFactories: _i7.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i6.WithSigV4(
              region: _region,
              service: _i8.AWSService.cloudFormation,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i6.WithSdkInvocationId(),
            const _i6.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'ListImports',
      version: '2010-05-15',
    )
  ];

  late final _i6.AWSEndpoint _awsEndpoint = _i9.endpointResolver.resolve(
    _i9.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i5.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.ListImportsInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ListImportsOutput? output]) => 200;
  @override
  _i3.ListImportsOutput buildOutput(
    _i3.ListImportsOutput payload,
    _i8.AWSBaseHttpResponse response,
  ) =>
      _i3.ListImportsOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'ListImports';
  @override
  _i6.AWSRetryer get retryer => _i6.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ListImportsOutput> run(
    _i2.ListImportsInput input, {
    _i8.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i10.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i8.AWSHeaders.sdkInvocationId: _i8.uuid(secure: true)},
      },
    );
  }

  @override
  String? getToken(_i3.ListImportsOutput output) => output.nextToken;
  @override
  _i4.BuiltList<String> getItems(_i3.ListImportsOutput output) =>
      output.imports ?? _i4.BuiltList();
  @override
  _i2.ListImportsInput rebuildInput(
    _i2.ListImportsInput input,
    String token,
    void pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
      });
}
