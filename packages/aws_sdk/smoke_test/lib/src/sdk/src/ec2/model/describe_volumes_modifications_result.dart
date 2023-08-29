// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_volumes_modifications_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_modification.dart';

part 'describe_volumes_modifications_result.g.dart';

abstract class DescribeVolumesModificationsResult
    with
        _i1.AWSEquatable<DescribeVolumesModificationsResult>
    implements
        Built<DescribeVolumesModificationsResult,
            DescribeVolumesModificationsResultBuilder> {
  factory DescribeVolumesModificationsResult({
    List<VolumeModification>? volumesModifications,
    String? nextToken,
  }) {
    return _$DescribeVolumesModificationsResult._(
      volumesModifications: volumesModifications == null
          ? null
          : _i2.BuiltList(volumesModifications),
      nextToken: nextToken,
    );
  }

  factory DescribeVolumesModificationsResult.build(
          [void Function(DescribeVolumesModificationsResultBuilder) updates]) =
      _$DescribeVolumesModificationsResult;

  const DescribeVolumesModificationsResult._();

  /// Constructs a [DescribeVolumesModificationsResult] from a [payload] and [response].
  factory DescribeVolumesModificationsResult.fromResponse(
    DescribeVolumesModificationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeVolumesModificationsResult>>
      serializers = [DescribeVolumesModificationsResultEc2QuerySerializer()];

  /// Information about the volume modifications.
  _i2.BuiltList<VolumeModification>? get volumesModifications;

  /// The token to include in another request to get the next page of items. This value is `null` if there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        volumesModifications,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeVolumesModificationsResult')
          ..add(
            'volumesModifications',
            volumesModifications,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeVolumesModificationsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeVolumesModificationsResult> {
  const DescribeVolumesModificationsResultEc2QuerySerializer()
      : super('DescribeVolumesModificationsResult');

  @override
  Iterable<Type> get types => const [
        DescribeVolumesModificationsResult,
        _$DescribeVolumesModificationsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVolumesModificationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVolumesModificationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'volumeModificationSet':
          result.volumesModifications.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(VolumeModification)],
            ),
          ) as _i2.BuiltList<VolumeModification>));
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
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
    DescribeVolumesModificationsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeVolumesModificationsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVolumesModificationsResult(
      :volumesModifications,
      :nextToken
    ) = object;
    if (volumesModifications != null) {
      result$
        ..add(const _i3.XmlElementName('VolumeModificationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          volumesModifications,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(VolumeModification)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
