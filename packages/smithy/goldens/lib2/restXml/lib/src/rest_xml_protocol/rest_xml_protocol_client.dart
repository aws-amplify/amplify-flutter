// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_v2.rest_xml_protocol.rest_xml_protocol_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/all_query_string_types_input.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/body_with_xml_name_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/constant_and_variable_query_string_input.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/constant_query_string_input.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/datetime_offsets_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/empty_input_and_empty_output_input.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/empty_input_and_empty_output_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/flattened_xml_map_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/flattened_xml_map_with_xml_name_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/flattened_xml_map_with_xml_namespace_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/fractional_seconds_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/greeting_with_errors_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/host_label_header_input.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/host_label_input.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_traits_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_traits_with_media_type_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_with_member_xml_name_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_with_structure_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_with_xml_name_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_with_xml_namespace_and_prefix_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_with_xml_namespace_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_prefix_headers_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_request_with_float_labels_input.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_request_with_greedy_label_in_path_input.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_request_with_labels_and_timestamp_format_input.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_request_with_labels_input.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_response_code_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/ignore_query_params_in_response_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/input_and_output_with_headers_io.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/nested_xml_maps_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/no_input_and_output_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/null_and_empty_headers_io.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/omits_null_serializes_empty_string_input.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/put_with_content_encoding_input.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/query_idempotency_token_auto_fill_input.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/query_params_as_string_list_map_input.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/query_precedence_input.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/recursive_shapes_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/simple_scalar_properties_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/timestamp_format_headers_io.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_attributes_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_attributes_on_payload_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_blobs_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_empty_strings_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_enums_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_int_enums_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_lists_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_maps_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_maps_xml_name_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_namespaces_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_timestamps_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_unions_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/all_query_string_types_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/body_with_xml_name_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/constant_and_variable_query_string_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/constant_query_string_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/datetime_offsets_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/empty_input_and_empty_output_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/endpoint_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/endpoint_with_host_label_header_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/endpoint_with_host_label_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/flattened_xml_map_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/flattened_xml_map_with_xml_name_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/flattened_xml_map_with_xml_namespace_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/fractional_seconds_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/greeting_with_errors_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/http_payload_traits_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/http_payload_traits_with_media_type_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/http_payload_with_member_xml_name_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/http_payload_with_structure_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/http_payload_with_xml_name_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/http_payload_with_xml_namespace_and_prefix_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/http_payload_with_xml_namespace_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/http_prefix_headers_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/http_request_with_float_labels_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/http_request_with_greedy_label_in_path_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/http_request_with_labels_and_timestamp_format_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/http_request_with_labels_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/http_response_code_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/ignore_query_params_in_response_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/input_and_output_with_headers_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/nested_xml_maps_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/no_input_and_no_output_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/no_input_and_output_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/null_and_empty_headers_client_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/null_and_empty_headers_server_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/omits_null_serializes_empty_string_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/put_with_content_encoding_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/query_idempotency_token_auto_fill_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/query_params_as_string_list_map_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/query_precedence_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/recursive_shapes_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/simple_scalar_properties_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/timestamp_format_headers_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/xml_attributes_on_payload_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/xml_attributes_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/xml_blobs_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/xml_empty_blobs_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/xml_empty_lists_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/xml_empty_maps_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/xml_empty_strings_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/xml_enums_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/xml_int_enums_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/xml_lists_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/xml_maps_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/xml_maps_xml_name_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/xml_namespaces_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/xml_timestamps_operation.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/xml_unions_operation.dart';
import 'package:smithy/smithy.dart' as _i2;

/// A REST XML service that sends XML requests and responses.
class RestXmlProtocolClient {
  /// A REST XML service that sends XML requests and responses.
  const RestXmlProtocolClient({
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

  /// This example uses all query string types.
  _i2.SmithyOperation<void> allQueryStringTypes(
    AllQueryStringTypesInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return AllQueryStringTypesOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// The following example serializes a body that uses an XML name, changing the wrapper name.
  _i2.SmithyOperation<BodyWithXmlNameInputOutput> bodyWithXmlName(
    BodyWithXmlNameInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return BodyWithXmlNameOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This example uses fixed query string params and variable query string params. The fixed query string parameters and variable parameters must both be serialized (implementations may need to merge them together).
  _i2.SmithyOperation<void> constantAndVariableQueryString(
    ConstantAndVariableQueryStringInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return ConstantAndVariableQueryStringOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This example uses a constant query string parameters and a label. This simply tests that labels and query string parameters are compatible. The fixed query string parameter named "hello" should in no way conflict with the label, `{hello}`.
  _i2.SmithyOperation<void> constantQueryString(
    ConstantQueryStringInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return ConstantQueryStringOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<DatetimeOffsetsOutput> datetimeOffsets(
      {_i1.AWSHttpClient? client}) {
    return DatetimeOffsetsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// The example tests how requests and responses are serialized when there's no request or response payload because the operation has an empty input and empty output structure that reuses the same shape. While this should be rare, code generators must support this.
  _i2.SmithyOperation<EmptyInputAndEmptyOutputOutput> emptyInputAndEmptyOutput(
    EmptyInputAndEmptyOutputInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return EmptyInputAndEmptyOutputOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> endpointOperation({_i1.AWSHttpClient? client}) {
    return EndpointOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> endpointWithHostLabelHeaderOperation(
    HostLabelHeaderInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return EndpointWithHostLabelHeaderOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> endpointWithHostLabelOperation(
    HostLabelInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return EndpointWithHostLabelOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Flattened maps
  _i2.SmithyOperation<FlattenedXmlMapInputOutput> flattenedXmlMap(
    FlattenedXmlMapInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return FlattenedXmlMapOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Flattened maps with @xmlName
  _i2.SmithyOperation<FlattenedXmlMapWithXmlNameInputOutput>
      flattenedXmlMapWithXmlName(
    FlattenedXmlMapWithXmlNameInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return FlattenedXmlMapWithXmlNameOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Flattened maps with @xmlNamespace and @xmlName
  _i2.SmithyOperation<FlattenedXmlMapWithXmlNamespaceOutput>
      flattenedXmlMapWithXmlNamespace({_i1.AWSHttpClient? client}) {
    return FlattenedXmlMapWithXmlNamespaceOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<FractionalSecondsOutput> fractionalSeconds(
      {_i1.AWSHttpClient? client}) {
    return FractionalSecondsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// This operation has three possible return values: 1. A successful response in the form of GreetingWithErrorsOutput 2. An InvalidGreeting error. 3. A BadRequest error. Implementations must be able to successfully take a response and properly (de)serialize successful and error responses based on the the presence of the
  _i2.SmithyOperation<GreetingWithErrorsOutput> greetingWithErrors(
      {_i1.AWSHttpClient? client}) {
    return GreetingWithErrorsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// This examples serializes a blob shape in the payload. In this example, no XML document is synthesized because the payload is not a structure or a union type.
  _i2.SmithyOperation<HttpPayloadTraitsInputOutput> httpPayloadTraits(
    HttpPayloadTraitsInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpPayloadTraitsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This examples uses a `@mediaType` trait on the payload to force a custom content-type to be serialized.
  _i2.SmithyOperation<HttpPayloadTraitsWithMediaTypeInputOutput>
      httpPayloadTraitsWithMediaType(
    HttpPayloadTraitsWithMediaTypeInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpPayloadTraitsWithMediaTypeOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// The following example serializes a payload that uses an XML name on the member, changing the wrapper name.
  _i2.SmithyOperation<HttpPayloadWithMemberXmlNameInputOutput>
      httpPayloadWithMemberXmlName(
    HttpPayloadWithMemberXmlNameInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpPayloadWithMemberXmlNameOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This examples serializes a structure in the payload. Note that serializing a structure changes the wrapper element name to match the targeted structure.
  _i2.SmithyOperation<HttpPayloadWithStructureInputOutput>
      httpPayloadWithStructure(
    HttpPayloadWithStructureInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpPayloadWithStructureOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// The following example serializes a payload that uses an XML name, changing the wrapper name.
  _i2.SmithyOperation<HttpPayloadWithXmlNameInputOutput> httpPayloadWithXmlName(
    HttpPayloadWithXmlNameInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpPayloadWithXmlNameOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// The following example serializes a payload that uses an XML namespace.
  _i2.SmithyOperation<HttpPayloadWithXmlNamespaceInputOutput>
      httpPayloadWithXmlNamespace(
    HttpPayloadWithXmlNamespaceInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpPayloadWithXmlNamespaceOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// The following example serializes a payload that uses an XML namespace.
  _i2.SmithyOperation<HttpPayloadWithXmlNamespaceAndPrefixInputOutput>
      httpPayloadWithXmlNamespaceAndPrefix(
    HttpPayloadWithXmlNamespaceAndPrefixInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpPayloadWithXmlNamespaceAndPrefixOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This examples adds headers to the input of a request and response by prefix.///
  /// See also:
  /// - [httpPrefixHeaders Trait](https://smithy.io/2.0/spec/http-bindings.html#httpprefixheaders-trait)

  _i2.SmithyOperation<HttpPrefixHeadersInputOutput> httpPrefixHeaders(
    HttpPrefixHeadersInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpPrefixHeadersOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> httpRequestWithFloatLabels(
    HttpRequestWithFloatLabelsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpRequestWithFloatLabelsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> httpRequestWithGreedyLabelInPath(
    HttpRequestWithGreedyLabelInPathInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpRequestWithGreedyLabelInPathOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// The example tests how requests are serialized when there's no input payload but there are HTTP labels.
  _i2.SmithyOperation<void> httpRequestWithLabels(
    HttpRequestWithLabelsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpRequestWithLabelsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// The example tests how requests serialize different timestamp formats in the URI path.
  _i2.SmithyOperation<void> httpRequestWithLabelsAndTimestampFormat(
    HttpRequestWithLabelsAndTimestampFormatInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return HttpRequestWithLabelsAndTimestampFormatOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<HttpResponseCodeOutput> httpResponseCode(
      {_i1.AWSHttpClient? client}) {
    return HttpResponseCodeOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// This example ensures that query string bound request parameters are serialized in the body of responses if the structure is used in both the request and response.
  _i2.SmithyOperation<IgnoreQueryParamsInResponseOutput>
      ignoreQueryParamsInResponse({_i1.AWSHttpClient? client}) {
    return IgnoreQueryParamsInResponseOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// The example tests how requests and responses are serialized when there is no input or output payload but there are HTTP header bindings.
  _i2.SmithyOperation<InputAndOutputWithHeadersIo> inputAndOutputWithHeaders(
    InputAndOutputWithHeadersIo input, {
    _i1.AWSHttpClient? client,
  }) {
    return InputAndOutputWithHeadersOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<NestedXmlMapsInputOutput> nestedXmlMaps(
    NestedXmlMapsInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return NestedXmlMapsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// The example tests how requests and responses are serialized when there's no request or response payload because the operation has no input or output. While this should be rare, code generators must support this.
  _i2.SmithyOperation<void> noInputAndNoOutput({_i1.AWSHttpClient? client}) {
    return NoInputAndNoOutputOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// The example tests how requests and responses are serialized when there's no request or response payload because the operation has no input and the output is empty. While this should be rare, code generators must support this.
  _i2.SmithyOperation<NoInputAndOutputOutput> noInputAndOutput(
      {_i1.AWSHttpClient? client}) {
    return NoInputAndOutputOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// Null and empty headers are not sent over the wire.
  _i2.SmithyOperation<NullAndEmptyHeadersIo> nullAndEmptyHeadersClient(
    NullAndEmptyHeadersIo input, {
    _i1.AWSHttpClient? client,
  }) {
    return NullAndEmptyHeadersClientOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Null and empty headers are not sent over the wire.
  _i2.SmithyOperation<NullAndEmptyHeadersIo> nullAndEmptyHeadersServer(
    NullAndEmptyHeadersIo input, {
    _i1.AWSHttpClient? client,
  }) {
    return NullAndEmptyHeadersServerOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Omits null, but serializes empty string value.
  _i2.SmithyOperation<void> omitsNullSerializesEmptyString(
    OmitsNullSerializesEmptyStringInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return OmitsNullSerializesEmptyStringOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> putWithContentEncoding(
    PutWithContentEncodingInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return PutWithContentEncodingOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Automatically adds idempotency tokens.
  _i2.SmithyOperation<void> queryIdempotencyTokenAutoFill(
    QueryIdempotencyTokenAutoFillInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return QueryIdempotencyTokenAutoFillOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> queryParamsAsStringListMap(
    QueryParamsAsStringListMapInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return QueryParamsAsStringListMapOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> queryPrecedence(
    QueryPrecedenceInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return QueryPrecedenceOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Recursive shapes
  _i2.SmithyOperation<RecursiveShapesInputOutput> recursiveShapes(
    RecursiveShapesInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return RecursiveShapesOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<SimpleScalarPropertiesInputOutput> simpleScalarProperties(
    SimpleScalarPropertiesInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return SimpleScalarPropertiesOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// The example tests how timestamp request and response headers are serialized.
  _i2.SmithyOperation<TimestampFormatHeadersIo> timestampFormatHeaders(
    TimestampFormatHeadersIo input, {
    _i1.AWSHttpClient? client,
  }) {
    return TimestampFormatHeadersOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This example serializes an XML attributes on synthesized document.
  _i2.SmithyOperation<XmlAttributesInputOutput> xmlAttributes(
    XmlAttributesInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return XmlAttributesOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This example serializes an XML attributes on a document targeted by httpPayload.
  _i2.SmithyOperation<XmlAttributesOnPayloadInputOutput> xmlAttributesOnPayload(
    XmlAttributesOnPayloadInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return XmlAttributesOnPayloadOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Blobs are base64 encoded
  _i2.SmithyOperation<XmlBlobsInputOutput> xmlBlobs(
    XmlBlobsInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return XmlBlobsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Blobs are base64 encoded
  _i2.SmithyOperation<XmlBlobsInputOutput> xmlEmptyBlobs(
    XmlBlobsInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return XmlEmptyBlobsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<XmlListsInputOutput> xmlEmptyLists(
    XmlListsInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return XmlEmptyListsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<XmlMapsInputOutput> xmlEmptyMaps(
    XmlMapsInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return XmlEmptyMapsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<XmlEmptyStringsInputOutput> xmlEmptyStrings(
    XmlEmptyStringsInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return XmlEmptyStringsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This example serializes enums as top level properties, in lists, sets, and maps.
  _i2.SmithyOperation<XmlEnumsInputOutput> xmlEnums(
    XmlEnumsInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return XmlEnumsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This example serializes enums as top level properties, in lists, sets, and maps.
  _i2.SmithyOperation<XmlIntEnumsInputOutput> xmlIntEnums(
    XmlIntEnumsInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return XmlIntEnumsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This test case serializes XML lists for the following cases for both input and output: 1. Normal XML lists. 2. Normal XML sets. 3. XML lists of lists. 4. XML lists with @xmlName on its members 5. Flattened XML lists. 6. Flattened XML lists with @xmlName. 7. Flattened XML lists with @xmlNamespace. 8. Lists of structures. 9. Flattened XML list of structures
  _i2.SmithyOperation<XmlListsInputOutput> xmlLists(
    XmlListsInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return XmlListsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// The example tests basic map serialization.
  _i2.SmithyOperation<XmlMapsInputOutput> xmlMaps(
    XmlMapsInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return XmlMapsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<XmlMapsXmlNameInputOutput> xmlMapsXmlName(
    XmlMapsXmlNameInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return XmlMapsXmlNameOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<XmlNamespacesInputOutput> xmlNamespaces(
    XmlNamespacesInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return XmlNamespacesOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This tests how timestamps are serialized, including using the default format of date-time and various @timestampFormat trait values.
  _i2.SmithyOperation<XmlTimestampsInputOutput> xmlTimestamps(
    XmlTimestampsInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return XmlTimestampsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<XmlUnionsInputOutput> xmlUnions(
    XmlUnionsInputOutput input, {
    _i1.AWSHttpClient? client,
  }) {
    return XmlUnionsOperation(
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
