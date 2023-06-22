// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_query_v1.query_protocol.model.query_timestamps_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'query_timestamps_input.g.dart';

abstract class QueryTimestampsInput
    with
        _i1.HttpInput<QueryTimestampsInput>,
        _i2.AWSEquatable<QueryTimestampsInput>
    implements Built<QueryTimestampsInput, QueryTimestampsInputBuilder> {
  factory QueryTimestampsInput({
    DateTime? normalFormat,
    DateTime? epochMember,
    DateTime? epochTarget,
  }) {
    return _$QueryTimestampsInput._(
      normalFormat: normalFormat,
      epochMember: epochMember,
      epochTarget: epochTarget,
    );
  }

  factory QueryTimestampsInput.build(
          [void Function(QueryTimestampsInputBuilder) updates]) =
      _$QueryTimestampsInput;

  const QueryTimestampsInput._();

  factory QueryTimestampsInput.fromRequest(
    QueryTimestampsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<QueryTimestampsInput>> serializers = [
    QueryTimestampsInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QueryTimestampsInputBuilder b) {}
  DateTime? get normalFormat;
  DateTime? get epochMember;
  DateTime? get epochTarget;
  @override
  QueryTimestampsInput getPayload() => this;
  @override
  List<Object?> get props => [
        normalFormat,
        epochMember,
        epochTarget,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('QueryTimestampsInput')
      ..add(
        'normalFormat',
        normalFormat,
      )
      ..add(
        'epochMember',
        epochMember,
      )
      ..add(
        'epochTarget',
        epochTarget,
      );
    return helper.toString();
  }
}

class QueryTimestampsInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<QueryTimestampsInput> {
  const QueryTimestampsInputAwsQuerySerializer()
      : super('QueryTimestampsInput');

  @override
  Iterable<Type> get types => const [
        QueryTimestampsInput,
        _$QueryTimestampsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  QueryTimestampsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueryTimestampsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'normalFormat':
          result.normalFormat = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'epochMember':
          result.epochMember = _i1.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'epochTarget':
          result.epochTarget = _i1.TimestampSerializer.epochSeconds.deserialize(
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
    QueryTimestampsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'QueryTimestampsInputResponse',
        _i1.XmlNamespace('https://example.com/'),
      )
    ];
    final QueryTimestampsInput(:normalFormat, :epochMember, :epochTarget) =
        object;
    if (normalFormat != null) {
      result$
        ..add(const _i1.XmlElementName('normalFormat'))
        ..add(serializers.serialize(
          normalFormat,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (epochMember != null) {
      result$
        ..add(const _i1.XmlElementName('epochMember'))
        ..add(_i1.TimestampSerializer.epochSeconds.serialize(
          serializers,
          epochMember,
        ));
    }
    if (epochTarget != null) {
      result$
        ..add(const _i1.XmlElementName('epochTarget'))
        ..add(_i1.TimestampSerializer.epochSeconds.serialize(
          serializers,
          epochTarget,
        ));
    }
    return result$;
  }
}
