// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library aws_query_v1.query_protocol.test.fractional_seconds_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v1/src/query_protocol/model/fractional_seconds_output.dart';
import 'package:aws_query_v1/src/query_protocol/operation/fractional_seconds_operation.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'AwsQueryDateTimeWithFractionalSeconds (response)',
    () async {
      await _i2.httpResponseTest(
        operation: FractionalSecondsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsQueryDateTimeWithFractionalSeconds',
          documentation:
              'Ensures that clients can correctly parse datetime timestamps with fractional seconds',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<FractionalSecondsResponse xmlns="https://example.com/">\n    <FractionalSecondsResult>\n        <datetime>2000-01-02T20:34:56.123Z</datetime>\n    </FractionalSecondsResult>\n</FractionalSecondsResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'datetime': 946845296.123},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 200,
        ),
        outputSerializers: const [FractionalSecondsOutputAwsQuerySerializer()],
      );
    },
  );
}

class FractionalSecondsOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<FractionalSecondsOutput> {
  const FractionalSecondsOutputAwsQuerySerializer()
      : super('FractionalSecondsOutput');

  @override
  Iterable<Type> get types => const [FractionalSecondsOutput];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  FractionalSecondsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FractionalSecondsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'datetime':
          result.datetime = _i3.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FractionalSecondsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
