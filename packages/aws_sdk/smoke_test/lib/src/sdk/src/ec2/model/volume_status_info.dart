// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.volume_status_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_details.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_info_status.dart';

part 'volume_status_info.g.dart';

/// Describes the status of a volume.
abstract class VolumeStatusInfo
    with _i1.AWSEquatable<VolumeStatusInfo>
    implements Built<VolumeStatusInfo, VolumeStatusInfoBuilder> {
  /// Describes the status of a volume.
  factory VolumeStatusInfo({
    List<VolumeStatusDetails>? details,
    VolumeStatusInfoStatus? status,
  }) {
    return _$VolumeStatusInfo._(
      details: details == null ? null : _i2.BuiltList(details),
      status: status,
    );
  }

  /// Describes the status of a volume.
  factory VolumeStatusInfo.build(
      [void Function(VolumeStatusInfoBuilder) updates]) = _$VolumeStatusInfo;

  const VolumeStatusInfo._();

  static const List<_i3.SmithySerializer<VolumeStatusInfo>> serializers = [
    VolumeStatusInfoEc2QuerySerializer()
  ];

  /// The details of the volume status.
  _i2.BuiltList<VolumeStatusDetails>? get details;

  /// The status of the volume.
  VolumeStatusInfoStatus? get status;
  @override
  List<Object?> get props => [
        details,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VolumeStatusInfo')
      ..add(
        'details',
        details,
      )
      ..add(
        'status',
        status,
      );
    return helper.toString();
  }
}

class VolumeStatusInfoEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<VolumeStatusInfo> {
  const VolumeStatusInfoEc2QuerySerializer() : super('VolumeStatusInfo');

  @override
  Iterable<Type> get types => const [
        VolumeStatusInfo,
        _$VolumeStatusInfo,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VolumeStatusInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VolumeStatusInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'details':
          result.details.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(VolumeStatusDetails)],
            ),
          ) as _i2.BuiltList<VolumeStatusDetails>));
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(VolumeStatusInfoStatus),
          ) as VolumeStatusInfoStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    VolumeStatusInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'VolumeStatusInfoResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VolumeStatusInfo(:details, :status) = object;
    if (details != null) {
      result$
        ..add(const _i3.XmlElementName('Details'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          details,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(VolumeStatusDetails)],
          ),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(VolumeStatusInfoStatus),
        ));
    }
    return result$;
  }
}
