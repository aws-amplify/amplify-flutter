// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_xml_v1.rest_xml_protocol.operation.all_query_string_types_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i7;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_xml_v1/src/rest_xml_protocol/common/endpoint_resolver.dart'
    as _i5;
import 'package:rest_xml_v1/src/rest_xml_protocol/common/serializers.dart'
    as _i4;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/all_query_string_types_input.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This example uses all query string types.
class AllQueryStringTypesOperation extends _i1.HttpOperation<
    _i2.AllQueryStringTypesInputPayload,
    _i2.AllQueryStringTypesInput,
    _i1.Unit,
    _i1.Unit> {
  /// This example uses all query string types.
  AllQueryStringTypesOperation({
    required String region,
    Uri? baseUri,
  })  : _region = region,
        _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i2.AllQueryStringTypesInputPayload,
          _i2.AllQueryStringTypesInput, _i1.Unit, _i1.Unit>> protocols = [
    _i3.RestXmlProtocol(
      serializers: _i4.serializers,
      builderFactories: _i4.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
        const _i3.WithSdkInvocationId(),
        const _i3.WithSdkRequest(),
      ],
      responseInterceptors: [],
      noErrorWrapping: false,
    )
  ];

  late final _i3.AWSEndpoint _awsEndpoint = _i5.endpointResolver.resolve(
    _i5.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.AllQueryStringTypesInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = r'/AllQueryStringTypesInput';
        if (input.queryString != null) {
          b.queryParameters.add(
            'String',
            input.queryString!,
          );
        }
        if (input.queryStringList != null) {
          for (var value in input.queryStringList!) {
            b.queryParameters.add(
              'StringList',
              value,
            );
          }
        }
        if (input.queryStringSet != null) {
          for (var value in input.queryStringSet!) {
            b.queryParameters.add(
              'StringSet',
              value,
            );
          }
        }
        if (input.queryByte != null) {
          b.queryParameters.add(
            'Byte',
            input.queryByte!.toString(),
          );
        }
        if (input.queryShort != null) {
          b.queryParameters.add(
            'Short',
            input.queryShort!.toString(),
          );
        }
        if (input.queryInteger != null) {
          b.queryParameters.add(
            'Integer',
            input.queryInteger!.toString(),
          );
        }
        if (input.queryIntegerList != null) {
          for (var value in input.queryIntegerList!) {
            b.queryParameters.add(
              'IntegerList',
              value.toString(),
            );
          }
        }
        if (input.queryIntegerSet != null) {
          for (var value in input.queryIntegerSet!) {
            b.queryParameters.add(
              'IntegerSet',
              value.toString(),
            );
          }
        }
        if (input.queryLong != null) {
          b.queryParameters.add(
            'Long',
            input.queryLong!.toString(),
          );
        }
        if (input.queryFloat != null) {
          b.queryParameters.add(
            'Float',
            input.queryFloat!.toString(),
          );
        }
        if (input.queryDouble != null) {
          b.queryParameters.add(
            'Double',
            input.queryDouble!.toString(),
          );
        }
        if (input.queryDoubleList != null) {
          for (var value in input.queryDoubleList!) {
            b.queryParameters.add(
              'DoubleList',
              value.toString(),
            );
          }
        }
        if (input.queryBoolean != null) {
          b.queryParameters.add(
            'Boolean',
            input.queryBoolean!.toString(),
          );
        }
        if (input.queryBooleanList != null) {
          for (var value in input.queryBooleanList!) {
            b.queryParameters.add(
              'BooleanList',
              value.toString(),
            );
          }
        }
        if (input.queryTimestamp != null) {
          b.queryParameters.add(
            'Timestamp',
            _i1.Timestamp(input.queryTimestamp!)
                .format(_i1.TimestampFormat.dateTime)
                .toString(),
          );
        }
        if (input.queryTimestampList != null) {
          for (var value in input.queryTimestampList!) {
            b.queryParameters.add(
              'TimestampList',
              _i1.Timestamp(value)
                  .format(_i1.TimestampFormat.dateTime)
                  .toString(),
            );
          }
        }
        if (input.queryEnum != null) {
          b.queryParameters.add(
            'Enum',
            input.queryEnum!.value,
          );
        }
        if (input.queryEnumList != null) {
          for (var value in input.queryEnumList!) {
            b.queryParameters.add(
              'EnumList',
              value.value,
            );
          }
        }
        if (input.queryParamsMapOfStrings != null) {
          for (var entry in input.queryParamsMapOfStrings!.toMap().entries) {
            b.queryParameters.add(
              entry.key,
              entry.value,
            );
          }
        }
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
    _i1.Unit payload,
    _i6.AWSBaseHttpResponse response,
  ) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i7.Future<_i1.Unit> run(
    _i2.AllQueryStringTypesInput input, {
    _i1.HttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i7.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i6.AWSHeaders.sdkInvocationId: _i6.uuid(secure: true)}
      },
    );
  }
}
