// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_xml_with_namespace_v1.rest_xml_protocol_namespace.rest_xml_protocol_namespace_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i1;

import 'package:rest_xml_with_namespace_v1/src/rest_xml_protocol_namespace/model/simple_scalar_properties_input_output.dart'
    as _i2;
import 'package:rest_xml_with_namespace_v1/src/rest_xml_protocol_namespace/operation/simple_scalar_properties_operation.dart'
    as _i4;
import 'package:smithy/smithy.dart' as _i3;

/// A REST XML service that sends XML requests and responses. This service and test case is complementary to the test cases in the \`restXml\` directory, but the service under test here has the \`xmlNamespace\` trait applied to it. See https://github.com/awslabs/smithy/issues/616
class RestXmlProtocolNamespaceClient {
  /// A REST XML service that sends XML requests and responses. This service and test case is complementary to the test cases in the \`restXml\` directory, but the service under test here has the \`xmlNamespace\` trait applied to it. See https://github.com/awslabs/smithy/issues/616
  const RestXmlProtocolNamespaceClient({required String region, Uri? baseUri})
      : _region = region,
        _baseUri = baseUri;

  final String _region;

  final Uri? _baseUri;

  _i1.Future<_i2.SimpleScalarPropertiesInputOutput> simpleScalarProperties(
      _i2.SimpleScalarPropertiesInputOutput input,
      {_i3.HttpClient? client}) {
    return _i4.SimpleScalarPropertiesOperation(
            region: _region, baseUri: _baseUri)
        .run(input, client: client);
  }
}
