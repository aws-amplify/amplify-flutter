// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fast_launch_snapshot_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'fast_launch_snapshot_configuration_request.g.dart';

/// Configuration settings for creating and managing pre-provisioned snapshots for a fast-launch enabled Windows AMI.
abstract class FastLaunchSnapshotConfigurationRequest
    with
        _i1.AWSEquatable<FastLaunchSnapshotConfigurationRequest>
    implements
        Built<FastLaunchSnapshotConfigurationRequest,
            FastLaunchSnapshotConfigurationRequestBuilder> {
  /// Configuration settings for creating and managing pre-provisioned snapshots for a fast-launch enabled Windows AMI.
  factory FastLaunchSnapshotConfigurationRequest({int? targetResourceCount}) {
    targetResourceCount ??= 0;
    return _$FastLaunchSnapshotConfigurationRequest._(
        targetResourceCount: targetResourceCount);
  }

  /// Configuration settings for creating and managing pre-provisioned snapshots for a fast-launch enabled Windows AMI.
  factory FastLaunchSnapshotConfigurationRequest.build(
      [void Function(FastLaunchSnapshotConfigurationRequestBuilder)
          updates]) = _$FastLaunchSnapshotConfigurationRequest;

  const FastLaunchSnapshotConfigurationRequest._();

  static const List<
          _i2.SmithySerializer<FastLaunchSnapshotConfigurationRequest>>
      serializers = [
    FastLaunchSnapshotConfigurationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FastLaunchSnapshotConfigurationRequestBuilder b) {
    b.targetResourceCount = 0;
  }

  /// The number of pre-provisioned snapshots to keep on hand for a fast-launch enabled Windows AMI.
  int get targetResourceCount;
  @override
  List<Object?> get props => [targetResourceCount];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('FastLaunchSnapshotConfigurationRequest')
          ..add(
            'targetResourceCount',
            targetResourceCount,
          );
    return helper.toString();
  }
}

class FastLaunchSnapshotConfigurationRequestEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<FastLaunchSnapshotConfigurationRequest> {
  const FastLaunchSnapshotConfigurationRequestEc2QuerySerializer()
      : super('FastLaunchSnapshotConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        FastLaunchSnapshotConfigurationRequest,
        _$FastLaunchSnapshotConfigurationRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FastLaunchSnapshotConfigurationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FastLaunchSnapshotConfigurationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TargetResourceCount':
          result.targetResourceCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FastLaunchSnapshotConfigurationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'FastLaunchSnapshotConfigurationRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final FastLaunchSnapshotConfigurationRequest(:targetResourceCount) = object;
    result$
      ..add(const _i2.XmlElementName('TargetResourceCount'))
      ..add(serializers.serialize(
        targetResourceCount,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
