// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_json1_1_v2.json_protocol.json_protocol_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_json1_1_v2/src/json_protocol/model/datetime_offsets_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/fractional_seconds_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/greeting_with_errors_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/host_label_input.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/json_enums_input_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/json_int_enums_input_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/kitchen_sink.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/null_operation_input_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/operation_with_optional_input_output_input.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/operation_with_optional_input_output_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/put_and_get_inline_documents_input_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/put_with_content_encoding_input.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/simple_scalar_properties_input_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/union_input_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/operation/datetime_offsets_operation.dart';
import 'package:aws_json1_1_v2/src/json_protocol/operation/empty_operation.dart';
import 'package:aws_json1_1_v2/src/json_protocol/operation/endpoint_operation.dart';
import 'package:aws_json1_1_v2/src/json_protocol/operation/endpoint_with_host_label_operation.dart';
import 'package:aws_json1_1_v2/src/json_protocol/operation/fractional_seconds_operation.dart';
import 'package:aws_json1_1_v2/src/json_protocol/operation/greeting_with_errors_operation.dart';
import 'package:aws_json1_1_v2/src/json_protocol/operation/host_with_path_operation.dart';
import 'package:aws_json1_1_v2/src/json_protocol/operation/json_enums_operation.dart';
import 'package:aws_json1_1_v2/src/json_protocol/operation/json_int_enums_operation.dart';
import 'package:aws_json1_1_v2/src/json_protocol/operation/json_unions_operation.dart';
import 'package:aws_json1_1_v2/src/json_protocol/operation/kitchen_sink_operation.dart';
import 'package:aws_json1_1_v2/src/json_protocol/operation/null_operation.dart';
import 'package:aws_json1_1_v2/src/json_protocol/operation/operation_with_optional_input_output_operation.dart';
import 'package:aws_json1_1_v2/src/json_protocol/operation/put_and_get_inline_documents_operation.dart';
import 'package:aws_json1_1_v2/src/json_protocol/operation/put_with_content_encoding_operation.dart';
import 'package:aws_json1_1_v2/src/json_protocol/operation/simple_scalar_properties_operation.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

class JsonProtocolClient {
  const JsonProtocolClient({
    _i1.AWSHttpClient? client,
    required String region,
    Uri? baseUri,
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.defaultChain(),
    List<_i3.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i3.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _client = client,
        _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  final _i1.AWSHttpClient? _client;

  final String _region;

  final Uri? _baseUri;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  final List<_i3.HttpRequestInterceptor> _requestInterceptors;

  final List<_i3.HttpResponseInterceptor> _responseInterceptors;

  _i3.SmithyOperation<DatetimeOffsetsOutput> datetimeOffsets({
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DatetimeOffsetsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i3.Unit(),
      client: client ?? _client,
    );
  }

  _i3.SmithyOperation<void> emptyOperation({
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return EmptyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i3.Unit(),
      client: client ?? _client,
    );
  }

  _i3.SmithyOperation<void> endpointOperation({
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return EndpointOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i3.Unit(),
      client: client ?? _client,
    );
  }

  _i3.SmithyOperation<void> endpointWithHostLabelOperation(
    HostLabelInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return EndpointWithHostLabelOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i3.SmithyOperation<FractionalSecondsOutput> fractionalSeconds({
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return FractionalSecondsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i3.Unit(),
      client: client ?? _client,
    );
  }

  /// This operation has three possible return values: 1. A successful response in the form of GreetingWithErrorsOutput 2. An InvalidGreeting error. 3. A ComplexError error. Implementations must be able to successfully take a response and properly deserialize successful and error responses.
  _i3.SmithyOperation<GreetingWithErrorsOutput> greetingWithErrors({
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GreetingWithErrorsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i3.Unit(),
      client: client ?? _client,
    );
  }

  _i3.SmithyOperation<void> hostWithPathOperation({
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return HostWithPathOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i3.Unit(),
      client: client ?? _client,
    );
  }

  /// This example serializes enums as top level properties, in lists, sets, and maps.
  _i3.SmithyOperation<JsonEnumsInputOutput> jsonEnums(
    JsonEnumsInputOutput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return JsonEnumsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This example serializes intEnums as top level properties, in lists, sets, and maps.
  _i3.SmithyOperation<JsonIntEnumsInputOutput> jsonIntEnums(
    JsonIntEnumsInputOutput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return JsonIntEnumsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This operation uses unions for inputs and outputs.
  _i3.SmithyOperation<UnionInputOutput> jsonUnions(
    UnionInputOutput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return JsonUnionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i3.SmithyOperation<KitchenSink> kitchenSinkOperation(
    KitchenSink input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return KitchenSinkOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i3.SmithyOperation<NullOperationInputOutput> nullOperation(
    NullOperationInputOutput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return NullOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i3.SmithyOperation<OperationWithOptionalInputOutputOutput>
      operationWithOptionalInputOutput(
    OperationWithOptionalInputOutputInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return OperationWithOptionalInputOutputOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This example serializes an inline document as part of the payload.
  _i3.SmithyOperation<PutAndGetInlineDocumentsInputOutput>
      putAndGetInlineDocuments(
    PutAndGetInlineDocumentsInputOutput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PutAndGetInlineDocumentsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i3.SmithyOperation<void> putWithContentEncoding(
    PutWithContentEncodingInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PutWithContentEncodingOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i3.SmithyOperation<SimpleScalarPropertiesInputOutput> simpleScalarProperties(
    SimpleScalarPropertiesInputOutput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return SimpleScalarPropertiesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }
}
