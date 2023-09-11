// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_identity_id_format_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/id_format.dart';

part 'describe_identity_id_format_result.g.dart';

abstract class DescribeIdentityIdFormatResult
    with
        _i1.AWSEquatable<DescribeIdentityIdFormatResult>
    implements
        Built<DescribeIdentityIdFormatResult,
            DescribeIdentityIdFormatResultBuilder> {
  factory DescribeIdentityIdFormatResult({List<IdFormat>? statuses}) {
    return _$DescribeIdentityIdFormatResult._(
        statuses: statuses == null ? null : _i2.BuiltList(statuses));
  }

  factory DescribeIdentityIdFormatResult.build(
          [void Function(DescribeIdentityIdFormatResultBuilder) updates]) =
      _$DescribeIdentityIdFormatResult;

  const DescribeIdentityIdFormatResult._();

  /// Constructs a [DescribeIdentityIdFormatResult] from a [payload] and [response].
  factory DescribeIdentityIdFormatResult.fromResponse(
    DescribeIdentityIdFormatResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeIdentityIdFormatResult>>
      serializers = [DescribeIdentityIdFormatResultEc2QuerySerializer()];

  /// Information about the ID format for the resources.
  _i2.BuiltList<IdFormat>? get statuses;
  @override
  List<Object?> get props => [statuses];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeIdentityIdFormatResult')
      ..add(
        'statuses',
        statuses,
      );
    return helper.toString();
  }
}

class DescribeIdentityIdFormatResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeIdentityIdFormatResult> {
  const DescribeIdentityIdFormatResultEc2QuerySerializer()
      : super('DescribeIdentityIdFormatResult');

  @override
  Iterable<Type> get types => const [
        DescribeIdentityIdFormatResult,
        _$DescribeIdentityIdFormatResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeIdentityIdFormatResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeIdentityIdFormatResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
    DescribeIdentityIdFormatResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeIdentityIdFormatResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeIdentityIdFormatResult(:statuses) = object;
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
