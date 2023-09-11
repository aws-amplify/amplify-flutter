// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.principal_id_format; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/id_format.dart';

part 'principal_id_format.g.dart';

/// PrincipalIdFormat description
abstract class PrincipalIdFormat
    with _i1.AWSEquatable<PrincipalIdFormat>
    implements Built<PrincipalIdFormat, PrincipalIdFormatBuilder> {
  /// PrincipalIdFormat description
  factory PrincipalIdFormat({
    String? arn,
    List<IdFormat>? statuses,
  }) {
    return _$PrincipalIdFormat._(
      arn: arn,
      statuses: statuses == null ? null : _i2.BuiltList(statuses),
    );
  }

  /// PrincipalIdFormat description
  factory PrincipalIdFormat.build(
      [void Function(PrincipalIdFormatBuilder) updates]) = _$PrincipalIdFormat;

  const PrincipalIdFormat._();

  static const List<_i3.SmithySerializer<PrincipalIdFormat>> serializers = [
    PrincipalIdFormatEc2QuerySerializer()
  ];

  /// PrincipalIdFormatARN description
  String? get arn;

  /// PrincipalIdFormatStatuses description
  _i2.BuiltList<IdFormat>? get statuses;
  @override
  List<Object?> get props => [
        arn,
        statuses,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PrincipalIdFormat')
      ..add(
        'arn',
        arn,
      )
      ..add(
        'statuses',
        statuses,
      );
    return helper.toString();
  }
}

class PrincipalIdFormatEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<PrincipalIdFormat> {
  const PrincipalIdFormatEc2QuerySerializer() : super('PrincipalIdFormat');

  @override
  Iterable<Type> get types => const [
        PrincipalIdFormat,
        _$PrincipalIdFormat,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PrincipalIdFormat deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrincipalIdFormatBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'arn':
          result.arn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'statusSet':
          result.statuses.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(IdFormat)],
            ),
          ) as _i2.BuiltList<IdFormat>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PrincipalIdFormat object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'PrincipalIdFormatResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PrincipalIdFormat(:arn, :statuses) = object;
    if (arn != null) {
      result$
        ..add(const _i3.XmlElementName('Arn'))
        ..add(serializers.serialize(
          arn,
          specifiedType: const FullType(String),
        ));
    }
    if (statuses != null) {
      result$
        ..add(const _i3.XmlElementName('StatusSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          statuses,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(IdFormat)],
          ),
        ));
    }
    return result$;
  }
}
