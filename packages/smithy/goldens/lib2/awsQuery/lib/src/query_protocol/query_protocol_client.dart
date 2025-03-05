// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_query_v2.query_protocol.query_protocol_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_query_v2/src/query_protocol/model/datetime_offsets_output.dart';
import 'package:aws_query_v2/src/query_protocol/model/empty_input_and_empty_output_input.dart';
import 'package:aws_query_v2/src/query_protocol/model/empty_input_and_empty_output_output.dart';
import 'package:aws_query_v2/src/query_protocol/model/flattened_xml_map_output.dart';
import 'package:aws_query_v2/src/query_protocol/model/flattened_xml_map_with_xml_name_output.dart';
import 'package:aws_query_v2/src/query_protocol/model/flattened_xml_map_with_xml_namespace_output.dart';
import 'package:aws_query_v2/src/query_protocol/model/fractional_seconds_output.dart';
import 'package:aws_query_v2/src/query_protocol/model/greeting_with_errors_output.dart';
import 'package:aws_query_v2/src/query_protocol/model/host_label_input.dart';
import 'package:aws_query_v2/src/query_protocol/model/ignores_wrapping_xml_name_output.dart';
import 'package:aws_query_v2/src/query_protocol/model/nested_structures_input.dart';
import 'package:aws_query_v2/src/query_protocol/model/no_input_and_output_input.dart';
import 'package:aws_query_v2/src/query_protocol/model/no_input_and_output_output.dart';
import 'package:aws_query_v2/src/query_protocol/model/put_with_content_encoding_input.dart';
import 'package:aws_query_v2/src/query_protocol/model/query_idempotency_token_auto_fill_input.dart';
import 'package:aws_query_v2/src/query_protocol/model/query_lists_input.dart';
import 'package:aws_query_v2/src/query_protocol/model/query_maps_input.dart';
import 'package:aws_query_v2/src/query_protocol/model/query_timestamps_input.dart';
import 'package:aws_query_v2/src/query_protocol/model/recursive_xml_shapes_output.dart';
import 'package:aws_query_v2/src/query_protocol/model/simple_input_params_input.dart';
import 'package:aws_query_v2/src/query_protocol/model/simple_scalar_xml_properties_output.dart';
import 'package:aws_query_v2/src/query_protocol/model/xml_blobs_output.dart';
import 'package:aws_query_v2/src/query_protocol/model/xml_enums_output.dart';
import 'package:aws_query_v2/src/query_protocol/model/xml_int_enums_output.dart';
import 'package:aws_query_v2/src/query_protocol/model/xml_lists_output.dart';
import 'package:aws_query_v2/src/query_protocol/model/xml_maps_output.dart';
import 'package:aws_query_v2/src/query_protocol/model/xml_maps_xml_name_output.dart';
import 'package:aws_query_v2/src/query_protocol/model/xml_namespaces_output.dart';
import 'package:aws_query_v2/src/query_protocol/model/xml_timestamps_output.dart';
import 'package:aws_query_v2/src/query_protocol/operation/datetime_offsets_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/empty_input_and_empty_output_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/endpoint_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/endpoint_with_host_label_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/flattened_xml_map_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/flattened_xml_map_with_xml_name_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/flattened_xml_map_with_xml_namespace_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/fractional_seconds_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/greeting_with_errors_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/host_with_path_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/ignores_wrapping_xml_name_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/nested_structures_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/no_input_and_no_output_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/no_input_and_output_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/put_with_content_encoding_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/query_idempotency_token_auto_fill_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/query_lists_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/query_maps_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/query_timestamps_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/recursive_xml_shapes_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/simple_input_params_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/simple_scalar_xml_properties_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/xml_blobs_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/xml_empty_blobs_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/xml_empty_lists_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/xml_empty_maps_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/xml_enums_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/xml_int_enums_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/xml_lists_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/xml_maps_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/xml_maps_xml_name_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/xml_namespaces_operation.dart';
import 'package:aws_query_v2/src/query_protocol/operation/xml_timestamps_operation.dart';
import 'package:smithy/smithy.dart' as _i2;

/// A query service that sends query requests and XML responses.
class QueryProtocolClient {
  /// A query service that sends query requests and XML responses.
  const QueryProtocolClient({
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

  /// The example tests how requests and responses are serialized when there's no request or response members. While this should be rare, code generators must support this.
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
  _i2.SmithyOperation<FlattenedXmlMapOutput> flattenedXmlMap(
      {_i1.AWSHttpClient? client}) {
    return FlattenedXmlMapOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// Flattened maps with @xmlName
  _i2.SmithyOperation<FlattenedXmlMapWithXmlNameOutput>
      flattenedXmlMapWithXmlName({_i1.AWSHttpClient? client}) {
    return FlattenedXmlMapWithXmlNameOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
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

  /// This operation has three possible return values: 1. A successful response in the form of GreetingWithErrorsOutput 2. An InvalidGreeting error. 3. A BadRequest error.
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

  _i2.SmithyOperation<void> hostWithPathOperation({_i1.AWSHttpClient? client}) {
    return HostWithPathOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// The xmlName trait on the output structure is ignored in AWS Query. The wrapping element is always operation name + "Response", and inside of that wrapper is another wrapper named operation name + "Result".
  _i2.SmithyOperation<IgnoresWrappingXmlNameOutput> ignoresWrappingXmlName(
      {_i1.AWSHttpClient? client}) {
    return IgnoresWrappingXmlNameOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// This test serializes nested and recursive structure members.
  _i2.SmithyOperation<void> nestedStructures(
    NestedStructuresInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return NestedStructuresOperation(
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

  /// The example tests how requests and responses are serialized when there's no request payload or response members. While this should be rare, code generators must support this.
  _i2.SmithyOperation<NoInputAndOutputOutput> noInputAndOutput(
    NoInputAndOutputInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return NoInputAndOutputOperation(
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

  /// This test serializes simple and complex lists.
  _i2.SmithyOperation<void> queryLists(
    QueryListsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return QueryListsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This test serializes simple and complex maps.
  _i2.SmithyOperation<void> queryMaps(
    QueryMapsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return QueryMapsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This test serializes timestamps. 1. Timestamps are serialized as RFC 3339 date-time values by default. 2. A timestampFormat trait on a member changes the format. 3. A timestampFormat trait on the shape targeted by the member changes the format.
  _i2.SmithyOperation<void> queryTimestamps(
    QueryTimestampsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return QueryTimestampsOperation(
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
  _i2.SmithyOperation<RecursiveXmlShapesOutput> recursiveXmlShapes(
      {_i1.AWSHttpClient? client}) {
    return RecursiveXmlShapesOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// This test serializes strings, numbers, and boolean values.
  _i2.SmithyOperation<void> simpleInputParams(
    SimpleInputParamsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return SimpleInputParamsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<SimpleScalarXmlPropertiesOutput>
      simpleScalarXmlProperties({_i1.AWSHttpClient? client}) {
    return SimpleScalarXmlPropertiesOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// Blobs are base64 encoded
  _i2.SmithyOperation<XmlBlobsOutput> xmlBlobs({_i1.AWSHttpClient? client}) {
    return XmlBlobsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<XmlBlobsOutput> xmlEmptyBlobs(
      {_i1.AWSHttpClient? client}) {
    return XmlEmptyBlobsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<XmlListsOutput> xmlEmptyLists(
      {_i1.AWSHttpClient? client}) {
    return XmlEmptyListsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<XmlMapsOutput> xmlEmptyMaps({_i1.AWSHttpClient? client}) {
    return XmlEmptyMapsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// This example serializes enums as top level properties, in lists, sets, and maps.
  _i2.SmithyOperation<XmlEnumsOutput> xmlEnums({_i1.AWSHttpClient? client}) {
    return XmlEnumsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// This example serializes enums as top level properties, in lists, sets, and maps.
  _i2.SmithyOperation<XmlIntEnumsOutput> xmlIntEnums(
      {_i1.AWSHttpClient? client}) {
    return XmlIntEnumsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// This test case serializes XML lists for the following cases for both input and output: 1. Normal XML lists. 2. Normal XML sets. 3. XML lists of lists. 4. XML lists with @xmlName on its members 5. Flattened XML lists. 6. Flattened XML lists with @xmlName. 7. Lists of structures.
  _i2.SmithyOperation<XmlListsOutput> xmlLists({_i1.AWSHttpClient? client}) {
    return XmlListsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// The example tests basic map serialization.
  _i2.SmithyOperation<XmlMapsOutput> xmlMaps({_i1.AWSHttpClient? client}) {
    return XmlMapsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<XmlMapsXmlNameOutput> xmlMapsXmlName(
      {_i1.AWSHttpClient? client}) {
    return XmlMapsXmlNameOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<XmlNamespacesOutput> xmlNamespaces(
      {_i1.AWSHttpClient? client}) {
    return XmlNamespacesOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// This tests how timestamps are serialized, including using the default format of date-time and various @timestampFormat trait values.
  _i2.SmithyOperation<XmlTimestampsOutput> xmlTimestamps(
      {_i1.AWSHttpClient? client}) {
    return XmlTimestampsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }
}
