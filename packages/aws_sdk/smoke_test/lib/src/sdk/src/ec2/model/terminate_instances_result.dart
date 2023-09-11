// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.terminate_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_state_change.dart';

part 'terminate_instances_result.g.dart';

abstract class TerminateInstancesResult
    with _i1.AWSEquatable<TerminateInstancesResult>
    implements
        Built<TerminateInstancesResult, TerminateInstancesResultBuilder> {
  factory TerminateInstancesResult(
      {List<InstanceStateChange>? terminatingInstances}) {
    return _$TerminateInstancesResult._(
        terminatingInstances: terminatingInstances == null
            ? null
            : _i2.BuiltList(terminatingInstances));
  }

  factory TerminateInstancesResult.build(
          [void Function(TerminateInstancesResultBuilder) updates]) =
      _$TerminateInstancesResult;

  const TerminateInstancesResult._();

  /// Constructs a [TerminateInstancesResult] from a [payload] and [response].
  factory TerminateInstancesResult.fromResponse(
    TerminateInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<TerminateInstancesResult>>
      serializers = [TerminateInstancesResultEc2QuerySerializer()];

  /// Information about the terminated instances.
  _i2.BuiltList<InstanceStateChange>? get terminatingInstances;
  @override
  List<Object?> get props => [terminatingInstances];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TerminateInstancesResult')
      ..add(
        'terminatingInstances',
        terminatingInstances,
      );
    return helper.toString();
  }
}

class TerminateInstancesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<TerminateInstancesResult> {
  const TerminateInstancesResultEc2QuerySerializer()
      : super('TerminateInstancesResult');

  @override
  Iterable<Type> get types => const [
        TerminateInstancesResult,
        _$TerminateInstancesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TerminateInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TerminateInstancesResultBuilder();
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
          result.terminatingInstances.replace((const _i3.XmlBuiltListSerializer(
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
    TerminateInstancesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TerminateInstancesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TerminateInstancesResult(:terminatingInstances) = object;
    if (terminatingInstances != null) {
      result$
        ..add(const _i3.XmlElementName('InstancesSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          terminatingInstances,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(InstanceStateChange)],
          ),
        ));
    }
    return result$;
  }
}
