// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db_streams.model.list_streams_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/stream.dart'
    as _i2;

part 'list_streams_output.g.dart';

/// Represents the output of a `ListStreams` operation.
abstract class ListStreamsOutput
    with _i1.AWSEquatable<ListStreamsOutput>
    implements Built<ListStreamsOutput, ListStreamsOutputBuilder> {
  /// Represents the output of a `ListStreams` operation.
  factory ListStreamsOutput({
    String? lastEvaluatedStreamArn,
    List<_i2.Stream>? streams,
  }) {
    return _$ListStreamsOutput._(
      lastEvaluatedStreamArn: lastEvaluatedStreamArn,
      streams: streams == null ? null : _i3.BuiltList(streams),
    );
  }

  /// Represents the output of a `ListStreams` operation.
  factory ListStreamsOutput.build(
      [void Function(ListStreamsOutputBuilder) updates]) = _$ListStreamsOutput;

  const ListStreamsOutput._();

  /// Constructs a [ListStreamsOutput] from a [payload] and [response].
  factory ListStreamsOutput.fromResponse(
    ListStreamsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    ListStreamsOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListStreamsOutputBuilder b) {}

  /// The stream ARN of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request.
  ///
  /// If `LastEvaluatedStreamArn` is empty, then the "last page" of results has been processed and there is no more data to be retrieved.
  ///
  /// If `LastEvaluatedStreamArn` is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when `LastEvaluatedStreamArn` is empty.
  String? get lastEvaluatedStreamArn;

  /// A list of stream descriptors associated with the current account and endpoint.
  _i3.BuiltList<_i2.Stream>? get streams;
  @override
  List<Object?> get props => [
        lastEvaluatedStreamArn,
        streams,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListStreamsOutput');
    helper.add(
      'lastEvaluatedStreamArn',
      lastEvaluatedStreamArn,
    );
    helper.add(
      'streams',
      streams,
    );
    return helper.toString();
  }
}

class ListStreamsOutputAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<ListStreamsOutput> {
  const ListStreamsOutputAwsJson10Serializer() : super('ListStreamsOutput');

  @override
  Iterable<Type> get types => const [
        ListStreamsOutput,
        _$ListStreamsOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ListStreamsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListStreamsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'LastEvaluatedStreamArn':
          if (value != null) {
            result.lastEvaluatedStreamArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Streams':
          if (value != null) {
            result.streams.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Stream)],
              ),
            ) as _i3.BuiltList<_i2.Stream>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as ListStreamsOutput);
    final result = <Object?>[];
    if (payload.lastEvaluatedStreamArn != null) {
      result
        ..add('LastEvaluatedStreamArn')
        ..add(serializers.serialize(
          payload.lastEvaluatedStreamArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.streams != null) {
      result
        ..add('Streams')
        ..add(serializers.serialize(
          payload.streams!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.Stream)],
          ),
        ));
    }
    return result;
  }
}
