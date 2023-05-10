// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_query_v2.query_protocol.query_protocol_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_query_v2/src/query_protocol/model/datetime_offsets_output.dart'
    as _i3;
import 'package:aws_query_v2/src/query_protocol/model/empty_input_and_empty_output_input.dart'
    as _i6;
import 'package:aws_query_v2/src/query_protocol/model/empty_input_and_empty_output_output.dart'
    as _i5;
import 'package:aws_query_v2/src/query_protocol/model/flattened_xml_map_output.dart'
    as _i11;
import 'package:aws_query_v2/src/query_protocol/model/flattened_xml_map_with_xml_name_output.dart'
    as _i13;
import 'package:aws_query_v2/src/query_protocol/model/flattened_xml_map_with_xml_namespace_output.dart'
    as _i15;
import 'package:aws_query_v2/src/query_protocol/model/fractional_seconds_output.dart'
    as _i17;
import 'package:aws_query_v2/src/query_protocol/model/greeting_with_errors_output.dart'
    as _i19;
import 'package:aws_query_v2/src/query_protocol/model/host_label_input.dart'
    as _i9;
import 'package:aws_query_v2/src/query_protocol/model/ignores_wrapping_xml_name_output.dart'
    as _i22;
import 'package:aws_query_v2/src/query_protocol/model/nested_structures_input.dart'
    as _i24;
import 'package:aws_query_v2/src/query_protocol/model/no_input_and_output_input.dart'
    as _i28;
import 'package:aws_query_v2/src/query_protocol/model/no_input_and_output_output.dart'
    as _i27;
import 'package:aws_query_v2/src/query_protocol/model/query_idempotency_token_auto_fill_input.dart'
    as _i30;
import 'package:aws_query_v2/src/query_protocol/model/query_lists_input.dart'
    as _i32;
import 'package:aws_query_v2/src/query_protocol/model/query_maps_input.dart'
    as _i34;
import 'package:aws_query_v2/src/query_protocol/model/query_timestamps_input.dart'
    as _i36;
import 'package:aws_query_v2/src/query_protocol/model/recursive_xml_shapes_output.dart'
    as _i38;
import 'package:aws_query_v2/src/query_protocol/model/simple_input_params_input.dart'
    as _i40;
import 'package:aws_query_v2/src/query_protocol/model/simple_scalar_xml_properties_output.dart'
    as _i42;
import 'package:aws_query_v2/src/query_protocol/model/xml_blobs_output.dart'
    as _i44;
import 'package:aws_query_v2/src/query_protocol/model/xml_enums_output.dart'
    as _i51;
import 'package:aws_query_v2/src/query_protocol/model/xml_int_enums_output.dart'
    as _i53;
import 'package:aws_query_v2/src/query_protocol/model/xml_lists_output.dart'
    as _i47;
import 'package:aws_query_v2/src/query_protocol/model/xml_maps_output.dart'
    as _i49;
import 'package:aws_query_v2/src/query_protocol/model/xml_maps_xml_name_output.dart'
    as _i57;
import 'package:aws_query_v2/src/query_protocol/model/xml_namespaces_output.dart'
    as _i59;
import 'package:aws_query_v2/src/query_protocol/model/xml_timestamps_output.dart'
    as _i61;
import 'package:aws_query_v2/src/query_protocol/operation/datetime_offsets_operation.dart'
    as _i4;
import 'package:aws_query_v2/src/query_protocol/operation/empty_input_and_empty_output_operation.dart'
    as _i7;
import 'package:aws_query_v2/src/query_protocol/operation/endpoint_operation.dart'
    as _i8;
import 'package:aws_query_v2/src/query_protocol/operation/endpoint_with_host_label_operation.dart'
    as _i10;
import 'package:aws_query_v2/src/query_protocol/operation/flattened_xml_map_operation.dart'
    as _i12;
import 'package:aws_query_v2/src/query_protocol/operation/flattened_xml_map_with_xml_name_operation.dart'
    as _i14;
import 'package:aws_query_v2/src/query_protocol/operation/flattened_xml_map_with_xml_namespace_operation.dart'
    as _i16;
import 'package:aws_query_v2/src/query_protocol/operation/fractional_seconds_operation.dart'
    as _i18;
import 'package:aws_query_v2/src/query_protocol/operation/greeting_with_errors_operation.dart'
    as _i20;
import 'package:aws_query_v2/src/query_protocol/operation/host_with_path_operation.dart'
    as _i21;
import 'package:aws_query_v2/src/query_protocol/operation/ignores_wrapping_xml_name_operation.dart'
    as _i23;
import 'package:aws_query_v2/src/query_protocol/operation/nested_structures_operation.dart'
    as _i25;
import 'package:aws_query_v2/src/query_protocol/operation/no_input_and_no_output_operation.dart'
    as _i26;
import 'package:aws_query_v2/src/query_protocol/operation/no_input_and_output_operation.dart'
    as _i29;
import 'package:aws_query_v2/src/query_protocol/operation/query_idempotency_token_auto_fill_operation.dart'
    as _i31;
import 'package:aws_query_v2/src/query_protocol/operation/query_lists_operation.dart'
    as _i33;
import 'package:aws_query_v2/src/query_protocol/operation/query_maps_operation.dart'
    as _i35;
import 'package:aws_query_v2/src/query_protocol/operation/query_timestamps_operation.dart'
    as _i37;
import 'package:aws_query_v2/src/query_protocol/operation/recursive_xml_shapes_operation.dart'
    as _i39;
import 'package:aws_query_v2/src/query_protocol/operation/simple_input_params_operation.dart'
    as _i41;
import 'package:aws_query_v2/src/query_protocol/operation/simple_scalar_xml_properties_operation.dart'
    as _i43;
import 'package:aws_query_v2/src/query_protocol/operation/xml_blobs_operation.dart'
    as _i45;
import 'package:aws_query_v2/src/query_protocol/operation/xml_empty_blobs_operation.dart'
    as _i46;
import 'package:aws_query_v2/src/query_protocol/operation/xml_empty_lists_operation.dart'
    as _i48;
import 'package:aws_query_v2/src/query_protocol/operation/xml_empty_maps_operation.dart'
    as _i50;
import 'package:aws_query_v2/src/query_protocol/operation/xml_enums_operation.dart'
    as _i52;
import 'package:aws_query_v2/src/query_protocol/operation/xml_int_enums_operation.dart'
    as _i54;
import 'package:aws_query_v2/src/query_protocol/operation/xml_lists_operation.dart'
    as _i55;
import 'package:aws_query_v2/src/query_protocol/operation/xml_maps_operation.dart'
    as _i56;
import 'package:aws_query_v2/src/query_protocol/operation/xml_maps_xml_name_operation.dart'
    as _i58;
import 'package:aws_query_v2/src/query_protocol/operation/xml_namespaces_operation.dart'
    as _i60;
import 'package:aws_query_v2/src/query_protocol/operation/xml_timestamps_operation.dart'
    as _i62;
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

  _i2.SmithyOperation<_i3.DatetimeOffsetsOutput> datetimeOffsets(
      {_i1.AWSHttpClient? client}) {
    return _i4.DatetimeOffsetsOperation(
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
  _i2.SmithyOperation<_i5.EmptyInputAndEmptyOutputOutput>
      emptyInputAndEmptyOutput(
    _i6.EmptyInputAndEmptyOutputInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i7.EmptyInputAndEmptyOutputOperation(
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
    return _i8.EndpointOperation(
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
    _i9.HostLabelInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i10.EndpointWithHostLabelOperation(
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
  _i2.SmithyOperation<_i11.FlattenedXmlMapOutput> flattenedXmlMap(
      {_i1.AWSHttpClient? client}) {
    return _i12.FlattenedXmlMapOperation(
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
  _i2.SmithyOperation<_i13.FlattenedXmlMapWithXmlNameOutput>
      flattenedXmlMapWithXmlName({_i1.AWSHttpClient? client}) {
    return _i14.FlattenedXmlMapWithXmlNameOperation(
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
  _i2.SmithyOperation<_i15.FlattenedXmlMapWithXmlNamespaceOutput>
      flattenedXmlMapWithXmlNamespace({_i1.AWSHttpClient? client}) {
    return _i16.FlattenedXmlMapWithXmlNamespaceOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<_i17.FractionalSecondsOutput> fractionalSeconds(
      {_i1.AWSHttpClient? client}) {
    return _i18.FractionalSecondsOperation(
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
  _i2.SmithyOperation<_i19.GreetingWithErrorsOutput> greetingWithErrors(
      {_i1.AWSHttpClient? client}) {
    return _i20.GreetingWithErrorsOperation(
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
    return _i21.HostWithPathOperation(
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
  _i2.SmithyOperation<_i22.IgnoresWrappingXmlNameOutput> ignoresWrappingXmlName(
      {_i1.AWSHttpClient? client}) {
    return _i23.IgnoresWrappingXmlNameOperation(
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
    _i24.NestedStructuresInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i25.NestedStructuresOperation(
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
    return _i26.NoInputAndNoOutputOperation(
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
  _i2.SmithyOperation<_i27.NoInputAndOutputOutput> noInputAndOutput(
    _i28.NoInputAndOutputInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i29.NoInputAndOutputOperation(
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
    _i30.QueryIdempotencyTokenAutoFillInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i31.QueryIdempotencyTokenAutoFillOperation(
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
    _i32.QueryListsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i33.QueryListsOperation(
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
    _i34.QueryMapsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i35.QueryMapsOperation(
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
    _i36.QueryTimestampsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i37.QueryTimestampsOperation(
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
  _i2.SmithyOperation<_i38.RecursiveXmlShapesOutput> recursiveXmlShapes(
      {_i1.AWSHttpClient? client}) {
    return _i39.RecursiveXmlShapesOperation(
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
    _i40.SimpleInputParamsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i41.SimpleInputParamsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<_i42.SimpleScalarXmlPropertiesOutput>
      simpleScalarXmlProperties({_i1.AWSHttpClient? client}) {
    return _i43.SimpleScalarXmlPropertiesOperation(
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
  _i2.SmithyOperation<_i44.XmlBlobsOutput> xmlBlobs(
      {_i1.AWSHttpClient? client}) {
    return _i45.XmlBlobsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<_i44.XmlBlobsOutput> xmlEmptyBlobs(
      {_i1.AWSHttpClient? client}) {
    return _i46.XmlEmptyBlobsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<_i47.XmlListsOutput> xmlEmptyLists(
      {_i1.AWSHttpClient? client}) {
    return _i48.XmlEmptyListsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<_i49.XmlMapsOutput> xmlEmptyMaps(
      {_i1.AWSHttpClient? client}) {
    return _i50.XmlEmptyMapsOperation(
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
  _i2.SmithyOperation<_i51.XmlEnumsOutput> xmlEnums(
      {_i1.AWSHttpClient? client}) {
    return _i52.XmlEnumsOperation(
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
  _i2.SmithyOperation<_i53.XmlIntEnumsOutput> xmlIntEnums(
      {_i1.AWSHttpClient? client}) {
    return _i54.XmlIntEnumsOperation(
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
  _i2.SmithyOperation<_i47.XmlListsOutput> xmlLists(
      {_i1.AWSHttpClient? client}) {
    return _i55.XmlListsOperation(
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
  _i2.SmithyOperation<_i49.XmlMapsOutput> xmlMaps({_i1.AWSHttpClient? client}) {
    return _i56.XmlMapsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<_i57.XmlMapsXmlNameOutput> xmlMapsXmlName(
      {_i1.AWSHttpClient? client}) {
    return _i58.XmlMapsXmlNameOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<_i59.XmlNamespacesOutput> xmlNamespaces(
      {_i1.AWSHttpClient? client}) {
    return _i60.XmlNamespacesOperation(
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
  _i2.SmithyOperation<_i61.XmlTimestampsOutput> xmlTimestamps(
      {_i1.AWSHttpClient? client}) {
    return _i62.XmlTimestampsOperation(
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
