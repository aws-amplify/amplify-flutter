// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_v2.rest_xml_protocol.operation.input_and_output_with_headers_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i4;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:rest_xml_v2/src/rest_xml_protocol/common/endpoint_resolver.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/common/serializers.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/input_and_output_with_headers_io.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

/// The example tests how requests and responses are serialized when there is no input or output payload but there are HTTP header bindings.
class InputAndOutputWithHeadersOperation extends _i1.HttpOperation<
    InputAndOutputWithHeadersIoPayload,
    InputAndOutputWithHeadersIo,
    InputAndOutputWithHeadersIoPayload,
    InputAndOutputWithHeadersIo> {
  /// The example tests how requests and responses are serialized when there is no input or output payload but there are HTTP header bindings.
  InputAndOutputWithHeadersOperation({
    required String region,
    Uri? baseUri,
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<
          InputAndOutputWithHeadersIoPayload,
          InputAndOutputWithHeadersIo,
          InputAndOutputWithHeadersIoPayload,
          InputAndOutputWithHeadersIo>> protocols = [
    _i2.RestXmlProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i2.WithSdkInvocationId(),
            const _i2.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      noErrorWrapping: false,
    )
  ];

  late final _i2.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(InputAndOutputWithHeadersIo input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/InputAndOutputWithHeaders';
        if (input.headerString != null) {
          if (input.headerString!.isNotEmpty) {
            b.headers['X-String'] = input.headerString!;
          }
        }
        if (input.headerByte != null) {
          b.headers['X-Byte'] = input.headerByte!.toString();
        }
        if (input.headerShort != null) {
          b.headers['X-Short'] = input.headerShort!.toString();
        }
        if (input.headerInteger != null) {
          b.headers['X-Integer'] = input.headerInteger!.toString();
        }
        if (input.headerLong != null) {
          b.headers['X-Long'] = input.headerLong!.toString();
        }
        if (input.headerFloat != null) {
          b.headers['X-Float'] = input.headerFloat!.toString();
        }
        if (input.headerDouble != null) {
          b.headers['X-Double'] = input.headerDouble!.toString();
        }
        if (input.headerTrueBool != null) {
          b.headers['X-Boolean1'] = input.headerTrueBool!.toString();
        }
        if (input.headerFalseBool != null) {
          b.headers['X-Boolean2'] = input.headerFalseBool!.toString();
        }
        if (input.headerStringList != null) {
          if (input.headerStringList!.isNotEmpty) {
            b.headers['X-StringList'] = input.headerStringList!
                .map((el) => _i1.sanitizeHeader(el))
                .join(', ');
          }
        }
        if (input.headerStringSet != null) {
          if (input.headerStringSet!.isNotEmpty) {
            b.headers['X-StringSet'] = input.headerStringSet!
                .map((el) => _i1.sanitizeHeader(el))
                .join(', ');
          }
        }
        if (input.headerIntegerList != null) {
          if (input.headerIntegerList!.isNotEmpty) {
            b.headers['X-IntegerList'] = input.headerIntegerList!
                .map((el) => el.toString())
                .map((el) => _i1.sanitizeHeader(el))
                .join(', ');
          }
        }
        if (input.headerBooleanList != null) {
          if (input.headerBooleanList!.isNotEmpty) {
            b.headers['X-BooleanList'] = input.headerBooleanList!
                .map((el) => el.toString())
                .map((el) => _i1.sanitizeHeader(el))
                .join(', ');
          }
        }
        if (input.headerTimestampList != null) {
          if (input.headerTimestampList!.isNotEmpty) {
            b.headers['X-TimestampList'] = input.headerTimestampList!
                .map((el) => _i1.Timestamp(el)
                    .format(_i1.TimestampFormat.httpDate)
                    .toString())
                .map((el) => _i1.sanitizeHeader(
                      el,
                      isTimestampList: true,
                    ))
                .join(', ');
          }
        }
        if (input.headerEnum != null) {
          b.headers['X-Enum'] = input.headerEnum!.value;
        }
        if (input.headerEnumList != null) {
          if (input.headerEnumList!.isNotEmpty) {
            b.headers['X-EnumList'] = input.headerEnumList!
                .map((el) => el.value)
                .map((el) => _i1.sanitizeHeader(el))
                .join(', ');
          }
        }
      });

  @override
  int successCode([InputAndOutputWithHeadersIo? output]) => 200;

  @override
  InputAndOutputWithHeadersIo buildOutput(
    InputAndOutputWithHeadersIoPayload payload,
    _i3.AWSBaseHttpResponse response,
  ) =>
      InputAndOutputWithHeadersIo.fromResponse(
        payload,
        response,
      );

  @override
  List<_i1.SmithyError> get errorTypes => const [];

  @override
  String get runtimeTypeName => 'InputAndOutputWithHeaders';

  @override
  _i2.AWSRetryer get retryer => _i2.AWSRetryer();

  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;

  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;

  @override
  _i1.SmithyOperation<InputAndOutputWithHeadersIo> run(
    InputAndOutputWithHeadersIo input, {
    _i3.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i4.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i3.AWSHeaders.sdkInvocationId: _i3.uuid(secure: true)},
      },
    );
  }
}
