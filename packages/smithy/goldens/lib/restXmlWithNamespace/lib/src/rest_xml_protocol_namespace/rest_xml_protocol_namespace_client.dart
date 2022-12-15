// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_xml_with_namespace_v1.rest_xml_protocol_namespace.rest_xml_protocol_namespace_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:rest_xml_with_namespace_v1/src/rest_xml_protocol_namespace/model/simple_scalar_properties_input_output.dart'
    as _i3;
import 'package:rest_xml_with_namespace_v1/src/rest_xml_protocol_namespace/operation/simple_scalar_properties_operation.dart'
    as _i4;
import 'package:smithy/smithy.dart' as _i2;

/// A REST XML service that sends XML requests and responses. This service and test case is complementary to the test cases in the \`restXml\` directory, but the service under test here has the \`xmlNamespace\` trait applied to it. See https://github.com/awslabs/smithy/issues/616
class RestXmlProtocolNamespaceClient {
  /// A REST XML service that sends XML requests and responses. This service and test case is complementary to the test cases in the \`restXml\` directory, but the service under test here has the \`xmlNamespace\` trait applied to it. See https://github.com/awslabs/smithy/issues/616
  const RestXmlProtocolNamespaceClient({
    _i1.AWSHttpClient? client,
    required String region,
    Uri? baseUri,
    List<_i2.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i2.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _client = client,
        _region = region,
        _baseUri = baseUri,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  final _i1.AWSHttpClient? _client;

  final String _region;

  final Uri? _baseUri;

  final List<_i2.HttpRequestInterceptor> _requestInterceptors;

  final List<_i2.HttpResponseInterceptor> _responseInterceptors;

  _i2.SmithyOperation<_i3.SimpleScalarPropertiesInputOutput>
      simpleScalarProperties(
    _i3.SimpleScalarPropertiesInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i4.SimpleScalarPropertiesOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }
}
