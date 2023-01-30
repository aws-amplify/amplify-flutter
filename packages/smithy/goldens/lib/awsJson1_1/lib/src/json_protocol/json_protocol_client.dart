// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library aws_json1_1_v1.json_protocol.json_protocol_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_json1_1_v1/src/json_protocol/model/greeting_with_errors_output.dart'
    as _i8;
import 'package:aws_json1_1_v1/src/json_protocol/model/host_label_input.dart'
    as _i6;
import 'package:aws_json1_1_v1/src/json_protocol/model/json_enums_input_output.dart'
    as _i11;
import 'package:aws_json1_1_v1/src/json_protocol/model/kitchen_sink.dart'
    as _i15;
import 'package:aws_json1_1_v1/src/json_protocol/model/null_operation_input_output.dart'
    as _i17;
import 'package:aws_json1_1_v1/src/json_protocol/model/operation_with_optional_input_output_input.dart'
    as _i20;
import 'package:aws_json1_1_v1/src/json_protocol/model/operation_with_optional_input_output_output.dart'
    as _i19;
import 'package:aws_json1_1_v1/src/json_protocol/model/put_and_get_inline_documents_input_output.dart'
    as _i22;
import 'package:aws_json1_1_v1/src/json_protocol/model/simple_scalar_properties_input_output.dart'
    as _i24;
import 'package:aws_json1_1_v1/src/json_protocol/model/union_input_output.dart'
    as _i13;
import 'package:aws_json1_1_v1/src/json_protocol/operation/empty_operation.dart'
    as _i4;
import 'package:aws_json1_1_v1/src/json_protocol/operation/endpoint_operation.dart'
    as _i5;
import 'package:aws_json1_1_v1/src/json_protocol/operation/endpoint_with_host_label_operation.dart'
    as _i7;
import 'package:aws_json1_1_v1/src/json_protocol/operation/greeting_with_errors_operation.dart'
    as _i9;
import 'package:aws_json1_1_v1/src/json_protocol/operation/host_with_path_operation.dart'
    as _i10;
import 'package:aws_json1_1_v1/src/json_protocol/operation/json_enums_operation.dart'
    as _i12;
import 'package:aws_json1_1_v1/src/json_protocol/operation/json_unions_operation.dart'
    as _i14;
import 'package:aws_json1_1_v1/src/json_protocol/operation/kitchen_sink_operation.dart'
    as _i16;
import 'package:aws_json1_1_v1/src/json_protocol/operation/null_operation.dart'
    as _i18;
import 'package:aws_json1_1_v1/src/json_protocol/operation/operation_with_optional_input_output_operation.dart'
    as _i21;
import 'package:aws_json1_1_v1/src/json_protocol/operation/put_and_get_inline_documents_operation.dart'
    as _i23;
import 'package:aws_json1_1_v1/src/json_protocol/operation/simple_scalar_properties_operation.dart'
    as _i25;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

class JsonProtocolClient {
  const JsonProtocolClient({
    _i1.AWSHttpClient? client,
    required String region,
    Uri? baseUri,
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.environment(),
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

  _i3.SmithyOperation<void> emptyOperation({
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i4.EmptyOperation(
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
    return _i5.EndpointOperation(
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
    _i6.HostLabelInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i7.EndpointWithHostLabelOperation(
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

  /// This operation has three possible return values: 1. A successful response in the form of GreetingWithErrorsOutput 2. An InvalidGreeting error. 3. A ComplexError error. Implementations must be able to successfully take a response and properly deserialize successful and error responses.
  _i3.SmithyOperation<_i8.GreetingWithErrorsOutput> greetingWithErrors({
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i9.GreetingWithErrorsOperation(
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
    return _i10.HostWithPathOperation(
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
  _i3.SmithyOperation<_i11.JsonEnumsInputOutput> jsonEnums(
    _i11.JsonEnumsInputOutput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i12.JsonEnumsOperation(
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
  _i3.SmithyOperation<_i13.UnionInputOutput> jsonUnions(
    _i13.UnionInputOutput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i14.JsonUnionsOperation(
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

  _i3.SmithyOperation<_i15.KitchenSink> kitchenSinkOperation(
    _i15.KitchenSink input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i16.KitchenSinkOperation(
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

  _i3.SmithyOperation<_i17.NullOperationInputOutput> nullOperation(
    _i17.NullOperationInputOutput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i18.NullOperation(
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

  _i3.SmithyOperation<_i19.OperationWithOptionalInputOutputOutput>
      operationWithOptionalInputOutput(
    _i20.OperationWithOptionalInputOutputInput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i21.OperationWithOptionalInputOutputOperation(
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
  _i3.SmithyOperation<_i22.PutAndGetInlineDocumentsInputOutput>
      putAndGetInlineDocuments(
    _i22.PutAndGetInlineDocumentsInputOutput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i23.PutAndGetInlineDocumentsOperation(
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

  _i3.SmithyOperation<_i24.SimpleScalarPropertiesInputOutput>
      simpleScalarProperties(
    _i24.SimpleScalarPropertiesInputOutput input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i25.SimpleScalarPropertiesOperation(
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
