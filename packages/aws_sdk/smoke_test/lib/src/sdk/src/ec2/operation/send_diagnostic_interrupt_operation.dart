// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.send_diagnostic_interrupt_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/send_diagnostic_interrupt_request.dart';

/// Sends a diagnostic interrupt to the specified Amazon EC2 instance to trigger a _kernel panic_ (on Linux instances), or a _blue screen_/_stop error_ (on Windows instances). For instances based on Intel and AMD processors, the interrupt is received as a _non-maskable interrupt_ (NMI).
///
/// In general, the operating system crashes and reboots when a kernel panic or stop error is triggered. The operating system can also be configured to perform diagnostic tasks, such as generating a memory dump file, loading a secondary kernel, or obtaining a call trace.
///
/// Before sending a diagnostic interrupt to your instance, ensure that its operating system is configured to perform the required diagnostic tasks.
///
/// For more information about configuring your operating system to generate a crash dump when a kernel panic or stop error occurs, see [Send a diagnostic interrupt (for advanced users)](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/diagnostic-interrupt.html) (Linux instances) or [Send a diagnostic interrupt (for advanced users)](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/diagnostic-interrupt.html) (Windows instances).
class SendDiagnosticInterruptOperation extends _i1.HttpOperation<
    SendDiagnosticInterruptRequest,
    SendDiagnosticInterruptRequest,
    _i1.Unit,
    _i1.Unit> {
  /// Sends a diagnostic interrupt to the specified Amazon EC2 instance to trigger a _kernel panic_ (on Linux instances), or a _blue screen_/_stop error_ (on Windows instances). For instances based on Intel and AMD processors, the interrupt is received as a _non-maskable interrupt_ (NMI).
  ///
  /// In general, the operating system crashes and reboots when a kernel panic or stop error is triggered. The operating system can also be configured to perform diagnostic tasks, such as generating a memory dump file, loading a secondary kernel, or obtaining a call trace.
  ///
  /// Before sending a diagnostic interrupt to your instance, ensure that its operating system is configured to perform the required diagnostic tasks.
  ///
  /// For more information about configuring your operating system to generate a crash dump when a kernel panic or stop error occurs, see [Send a diagnostic interrupt (for advanced users)](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/diagnostic-interrupt.html) (Linux instances) or [Send a diagnostic interrupt (for advanced users)](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/diagnostic-interrupt.html) (Windows instances).
  SendDiagnosticInterruptOperation({
    required String region,
    Uri? baseUri,
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.defaultChain(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<SendDiagnosticInterruptRequest,
          SendDiagnosticInterruptRequest, _i1.Unit, _i1.Unit>> protocols = [
    _i3.Ec2QueryProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.ec2,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'SendDiagnosticInterrupt',
      version: '2016-11-15',
    )
  ];

  late final _i3.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(SendDiagnosticInterruptRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
    _i1.Unit payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'SendDiagnosticInterrupt';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i1.Unit> run(
    SendDiagnosticInterruptRequest input, {
    _i4.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i5.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i4.AWSHeaders.sdkInvocationId: _i4.uuid(secure: true)},
      },
    );
  }
}
