// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library aws_json1_0_v1.json_rpc_10.json_rpc10_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/empty_input_and_empty_output_input.dart'
    as _i4;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/empty_input_and_empty_output_output.dart'
    as _i3;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/endpoint_with_host_label_operation_input.dart'
    as _i7;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/greeting_with_errors_input.dart'
    as _i10;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/greeting_with_errors_output.dart'
    as _i9;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/json_unions_input.dart'
    as _i14;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/json_unions_output.dart'
    as _i13;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/no_input_and_output_output.dart'
    as _i17;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/simple_scalar_properties_input.dart'
    as _i20;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/simple_scalar_properties_output.dart'
    as _i19;
import 'package:aws_json1_0_v1/src/json_rpc_10/operation/empty_input_and_empty_output_operation.dart'
    as _i5;
import 'package:aws_json1_0_v1/src/json_rpc_10/operation/endpoint_operation.dart'
    as _i6;
import 'package:aws_json1_0_v1/src/json_rpc_10/operation/endpoint_with_host_label_operation.dart'
    as _i8;
import 'package:aws_json1_0_v1/src/json_rpc_10/operation/greeting_with_errors_operation.dart'
    as _i11;
import 'package:aws_json1_0_v1/src/json_rpc_10/operation/host_with_path_operation.dart'
    as _i12;
import 'package:aws_json1_0_v1/src/json_rpc_10/operation/json_unions_operation.dart'
    as _i15;
import 'package:aws_json1_0_v1/src/json_rpc_10/operation/no_input_and_no_output_operation.dart'
    as _i16;
import 'package:aws_json1_0_v1/src/json_rpc_10/operation/no_input_and_output_operation.dart'
    as _i18;
import 'package:aws_json1_0_v1/src/json_rpc_10/operation/simple_scalar_properties_operation.dart'
    as _i21;
import 'package:smithy/smithy.dart' as _i2;

class JsonRpc10Client {
  const JsonRpc10Client({
    _i1.AWSHttpClient? client,
    required String region,
    Uri? baseUri,
  })  : _client = client,
        _region = region,
        _baseUri = baseUri;

  final _i1.AWSHttpClient? _client;

  final String _region;

  final Uri? _baseUri;

  /// The example tests how requests and responses are serialized when there's no request or response payload because the operation has an empty input and empty output structure that reuses the same shape. While this should be rare, code generators must support this.
  _i2.SmithyOperation<_i3.EmptyInputAndEmptyOutputOutput>
      emptyInputAndEmptyOutput(
    _i4.EmptyInputAndEmptyOutputInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i5.EmptyInputAndEmptyOutputOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> endpointOperation({_i1.AWSHttpClient? client}) {
    return _i6.EndpointOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> endpointWithHostLabelOperation(
    _i7.EndpointWithHostLabelOperationInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i8.EndpointWithHostLabelOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This operation has three possible return values: 1. A successful response in the form of GreetingWithErrorsOutput 2. An InvalidGreeting error. 3. A ComplexError error. Implementations must be able to successfully take a response and properly deserialize successful and error responses.
  _i2.SmithyOperation<_i9.GreetingWithErrorsOutput> greetingWithErrors(
    _i10.GreetingWithErrorsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i11.GreetingWithErrorsOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> hostWithPathOperation({_i1.AWSHttpClient? client}) {
    return _i12.HostWithPathOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// This operation uses unions for inputs and outputs.
  _i2.SmithyOperation<_i13.JsonUnionsOutput> jsonUnions(
    _i14.JsonUnionsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i15.JsonUnionsOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// The example tests how requests and responses are serialized when there's no request or response payload because the operation has no input or output. While this should be rare, code generators must support this.
  _i2.SmithyOperation<void> noInputAndNoOutput({_i1.AWSHttpClient? client}) {
    return _i16.NoInputAndNoOutputOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// The example tests how requests and responses are serialized when there's no request or response payload because the operation has no input and the output is empty. While this should be rare, code generators must support this.
  _i2.SmithyOperation<_i17.NoInputAndOutputOutput> noInputAndOutput(
      {_i1.AWSHttpClient? client}) {
    return _i18.NoInputAndOutputOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<_i19.SimpleScalarPropertiesOutput> simpleScalarProperties(
    _i20.SimpleScalarPropertiesInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i21.SimpleScalarPropertiesOperation(
      region: _region,
      baseUri: _baseUri,
    ).run(
      input,
      client: client ?? _client,
    );
  }
}
