import 'package:aws_common/aws_common.dart';
import 'package:http/src/streamed_response.dart';
import 'package:http/src/streamed_request.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/smithy.dart';

part 'kitchen_sink_model.g.dart';

class SmokeTest extends HttpJsonOperation<SmokeTestRequest, SmokeTestResponse> {
  const SmokeTest()
      : super(
          method: 'POST',
          path: '/smoketest/{label1}/foo',
        );

  @override
  Map<String, String> headers(SmokeTestRequest input) => {
        if (input.header1 != null) 'X-Header-1': input.header1!,
        if (input.header2 != null) 'X-Header-2': input.header2!,
      };

  @override
  Map<String, String> queryParameters(SmokeTestRequest input) => {
        if (input.query1 != null) 'Query1': input.query1!,
      };

  @override
  String label(SmokeTestRequest input, String key) {
    switch (key) {
      case 'label1':
        return input.label1;
    }
    return super.label(input, key);
  }

  @override
  final JsonConstructor<SmokeTestResponse> responseConstructor =
      SmokeTestResponse.fromJson;
}

@JsonSerializer.serializableRequest
class SmokeTestRequest with AWSSerializable {
  const SmokeTestRequest({
    this.header1,
    this.header2,
    this.query1,
    required this.label1,
    this.payload1,
    this.payload2,
    this.payload3,
  });

  @JsonKey(ignore: true)
  @HttpHeader('X-Header1')
  final String? header1;

  @JsonKey(ignore: true)
  @HttpHeader('X-Header2')
  final String? header2;

  @JsonKey(ignore: true)
  @HttpQuery('Query1')
  final String? query1;

  @JsonKey(ignore: true)
  @HttpLabel()
  final String label1;

  final String? payload1;
  final int? payload2;
  final Nested? payload3;

  @override
  Map<String, dynamic> toJson() => _$SmokeTestRequestToJson(this);
}

@JsonSerializer.serializable
class Nested with AWSSerializable {
  const Nested({
    required this.member1,
    required this.member2,
  });

  factory Nested.fromJson(Map<String, dynamic> json) => _$NestedFromJson(json);

  final String member1;
  final String member2;

  @override
  Map<String, dynamic> toJson() => _$NestedToJson(this);
}

@JsonSerializer.serializableResponse
class SmokeTestResponse with AWSSerializable {
  const SmokeTestResponse({
    this.strHeader,
    this.intHeader,
    this.tsListHeader,
    this.payload1,
    this.payload2,
    this.nested,
    this.payload4,
  });

  @JsonKey(ignore: true)
  @HttpHeader('X-Header1')
  final String? strHeader;

  @JsonKey(ignore: true)
  @HttpHeader('X-Header2')
  final int? intHeader;

  @JsonKey(ignore: true)
  @HttpHeader('X-Header3')
  final List<Timestamp>? tsListHeader;

  final String? payload1;
  final String? payload2;
  final Nested? nested;

  @TimestampSerializer.dateTime
  @TimestampFormat(TimestampSerializationFormat.dateTime)
  final Timestamp? payload4;

  factory SmokeTestResponse.fromJson(Map<String, dynamic> json) =>
      _$SmokeTestResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SmokeTestResponseToJson(this);
}

class SmokeTestError extends SmithyClientException {
  const SmokeTestError(this.nested);

  final NestedErrorData nested;
}

class NestedErrorData {
  const NestedErrorData({
    this.field1,
  });

  final int? field1;
}

class ExplicitStringOperation extends HttpRawOperation<String?,
    ExplicitStringRequest, ExplicitStringResponse> {
  const ExplicitStringOperation()
      : super(
          method: 'POST',
          path: '/explicit/string',
        );

  @override
  RawResponseConstructor<String?, ExplicitStringResponse>
      get responseConstructor => ExplicitStringResponse.new;
}

class ExplicitStringRequest implements Payload<String?> {
  const ExplicitStringRequest(this.payload1);

  @HttpPayload()
  final String? payload1;

  @override
  String? getPayload() => payload1;
}

@JsonSerializer.serializableResponse
class ExplicitStringResponse {
  const ExplicitStringResponse(this.payload1);

  @HttpPayload()
  final String? payload1;
}

class ExplicitBlobOperation extends HttpRawOperation<List<int>?,
    ExplicitBlobRequest, ExplicitBlobResponse> {
  const ExplicitBlobOperation()
      : super(
          method: 'POST',
          path: '/explicit/string',
        );

  @override
  RawResponseConstructor<List<int>?, ExplicitBlobResponse>
      get responseConstructor => ExplicitBlobResponse.new;
}

class ExplicitBlobRequest implements Payload<List<int>?> {
  const ExplicitBlobRequest(this.payload1);

  @HttpPayload()
  final List<int>? payload1;

  @override
  List<int>? getPayload() => payload1;
}

class ExplicitBlobResponse {
  const ExplicitBlobResponse(this.payload1);

  @HttpPayload()
  final List<int>? payload1;
}

typedef BodyStream = Stream<List<int>>;

class ExplicitBlobStream extends HttpStreamingRawOperation<List<int>,
    ExplicitBlobStreamRequest, ExplicitBlobStreamResponse> {
  ExplicitBlobStream()
      : super(
          method: 'POST',
          path: '/explicit/struct',
        );

  @override
  StreamingResponseContructor<List<int>, ExplicitBlobStreamResponse>
      get responseConstructor => ExplicitBlobStreamResponse.new;
}

class ExplicitBlobStreamRequest implements Payload<Stream<List<int>>> {
  const ExplicitBlobStreamRequest(this.payload1);

  final BodyStream payload1;

  @override
  Stream<List<int>> getPayload() => payload1;
}

class ExplicitBlobStreamResponse {
  const ExplicitBlobStreamResponse(this.payload1);

  final BodyStream payload1;
}
