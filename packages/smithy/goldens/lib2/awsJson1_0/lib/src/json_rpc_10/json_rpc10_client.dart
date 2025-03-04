// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_json1_0_v2.json_rpc_10.json_rpc10_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_json1_0_v2/src/json_rpc_10/model/empty_input_and_empty_output_input.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/empty_input_and_empty_output_output.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/endpoint_with_host_label_operation_input.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/greeting_with_errors_input.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/greeting_with_errors_output.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/json_unions_input.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/json_unions_output.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/no_input_and_output_output.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/put_with_content_encoding_input.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/simple_scalar_properties_input.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/model/simple_scalar_properties_output.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/operation/empty_input_and_empty_output_operation.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/operation/endpoint_operation.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/operation/endpoint_with_host_label_operation.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/operation/greeting_with_errors_operation.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/operation/host_with_path_operation.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/operation/json_unions_operation.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/operation/no_input_and_no_output_operation.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/operation/no_input_and_output_operation.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/operation/put_with_content_encoding_operation.dart';
import 'package:aws_json1_0_v2/src/json_rpc_10/operation/simple_scalar_properties_operation.dart';
import 'package:smithy/smithy.dart' as _i2;

class JsonRpc10Client {
  const JsonRpc10Client({
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

  _i2.SmithyOperation<void> endpointWithHostLabelOperation(
    EndpointWithHostLabelOperationInput input, {
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

  /// This operation has three possible return values: 1. A successful response in the form of GreetingWithErrorsOutput 2. An InvalidGreeting error. 3. A ComplexError error. Implementations must be able to successfully take a response and properly deserialize successful and error responses.
  _i2.SmithyOperation<GreetingWithErrorsOutput> greetingWithErrors(
    GreetingWithErrorsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return GreetingWithErrorsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
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

  /// This operation uses unions for inputs and outputs.
  _i2.SmithyOperation<JsonUnionsOutput> jsonUnions(
    JsonUnionsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return JsonUnionsOperation(
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

  _i2.SmithyOperation<SimpleScalarPropertiesOutput> simpleScalarProperties(
    SimpleScalarPropertiesInput input, {
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
}
