// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db_streams.model.list_streams_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/stream.dart';

part 'list_streams_output.g.dart';

/// Represents the output of a `ListStreams` operation.
abstract class ListStreamsOutput
    with _i1.AWSEquatable<ListStreamsOutput>
    implements Built<ListStreamsOutput, ListStreamsOutputBuilder> {
  /// Represents the output of a `ListStreams` operation.
  factory ListStreamsOutput({
    List<Stream>? streams,
    String? lastEvaluatedStreamArn,
  }) {
    return _$ListStreamsOutput._(
      streams: streams == null ? null : _i2.BuiltList(streams),
      lastEvaluatedStreamArn: lastEvaluatedStreamArn,
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

  static const List<_i3.SmithySerializer<ListStreamsOutput>> serializers = [
    ListStreamsOutputAwsJson10Serializer()
  ];

  /// A list of stream descriptors associated with the current account and endpoint.
  _i2.BuiltList<Stream>? get streams;

  /// The stream ARN of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request.
  ///
  /// If `LastEvaluatedStreamArn` is empty, then the "last page" of results has been processed and there is no more data to be retrieved.
  ///
  /// If `LastEvaluatedStreamArn` is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when `LastEvaluatedStreamArn` is empty.
  String? get lastEvaluatedStreamArn;
  @override
  List<Object?> get props => [
        streams,
        lastEvaluatedStreamArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListStreamsOutput')
      ..add(
        'streams',
        streams,
      )
      ..add(
        'lastEvaluatedStreamArn',
        lastEvaluatedStreamArn,
      );
    return helper.toString();
  }
}

class ListStreamsOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<ListStreamsOutput> {
  const ListStreamsOutputAwsJson10Serializer() : super('ListStreamsOutput');

  @override
  Iterable<Type> get types => const [
        ListStreamsOutput,
        _$ListStreamsOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Streams':
          result.streams.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Stream)],
            ),
          ) as _i2.BuiltList<Stream>));
        case 'LastEvaluatedStreamArn':
          result.lastEvaluatedStreamArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListStreamsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ListStreamsOutput(:streams, :lastEvaluatedStreamArn) = object;
    if (streams != null) {
      result$
        ..add('Streams')
        ..add(serializers.serialize(
          streams,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Stream)],
          ),
        ));
    }
    if (lastEvaluatedStreamArn != null) {
      result$
        ..add('LastEvaluatedStreamArn')
        ..add(serializers.serialize(
          lastEvaluatedStreamArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
