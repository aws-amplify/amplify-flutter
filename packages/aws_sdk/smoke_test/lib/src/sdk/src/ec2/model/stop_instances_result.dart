// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.stop_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_state_change.dart';

part 'stop_instances_result.g.dart';

abstract class StopInstancesResult
    with _i1.AWSEquatable<StopInstancesResult>
    implements Built<StopInstancesResult, StopInstancesResultBuilder> {
  factory StopInstancesResult({List<InstanceStateChange>? stoppingInstances}) {
    return _$StopInstancesResult._(
        stoppingInstances: stoppingInstances == null
            ? null
            : _i2.BuiltList(stoppingInstances));
  }

  factory StopInstancesResult.build(
          [void Function(StopInstancesResultBuilder) updates]) =
      _$StopInstancesResult;

  const StopInstancesResult._();

  /// Constructs a [StopInstancesResult] from a [payload] and [response].
  factory StopInstancesResult.fromResponse(
    StopInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<StopInstancesResult>> serializers = [
    StopInstancesResultEc2QuerySerializer()
  ];

  /// Information about the stopped instances.
  _i2.BuiltList<InstanceStateChange>? get stoppingInstances;
  @override
  List<Object?> get props => [stoppingInstances];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StopInstancesResult')
      ..add(
        'stoppingInstances',
        stoppingInstances,
      );
    return helper.toString();
  }
}

class StopInstancesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<StopInstancesResult> {
  const StopInstancesResultEc2QuerySerializer() : super('StopInstancesResult');

  @override
  Iterable<Type> get types => const [
        StopInstancesResult,
        _$StopInstancesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  StopInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StopInstancesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instancesSet':
          result.stoppingInstances.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InstanceStateChange)],
            ),
          ) as _i2.BuiltList<InstanceStateChange>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StopInstancesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'StopInstancesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final StopInstancesResult(:stoppingInstances) = object;
    if (stoppingInstances != null) {
      result$
        ..add(const _i3.XmlElementName('InstancesSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          stoppingInstances,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(InstanceStateChange)],
          ),
        ));
    }
    return result$;
  }
}
