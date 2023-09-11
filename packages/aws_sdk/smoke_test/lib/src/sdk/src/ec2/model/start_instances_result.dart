// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.start_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_state_change.dart';

part 'start_instances_result.g.dart';

abstract class StartInstancesResult
    with _i1.AWSEquatable<StartInstancesResult>
    implements Built<StartInstancesResult, StartInstancesResultBuilder> {
  factory StartInstancesResult({List<InstanceStateChange>? startingInstances}) {
    return _$StartInstancesResult._(
        startingInstances: startingInstances == null
            ? null
            : _i2.BuiltList(startingInstances));
  }

  factory StartInstancesResult.build(
          [void Function(StartInstancesResultBuilder) updates]) =
      _$StartInstancesResult;

  const StartInstancesResult._();

  /// Constructs a [StartInstancesResult] from a [payload] and [response].
  factory StartInstancesResult.fromResponse(
    StartInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<StartInstancesResult>> serializers = [
    StartInstancesResultEc2QuerySerializer()
  ];

  /// Information about the started instances.
  _i2.BuiltList<InstanceStateChange>? get startingInstances;
  @override
  List<Object?> get props => [startingInstances];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StartInstancesResult')
      ..add(
        'startingInstances',
        startingInstances,
      );
    return helper.toString();
  }
}

class StartInstancesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<StartInstancesResult> {
  const StartInstancesResultEc2QuerySerializer()
      : super('StartInstancesResult');

  @override
  Iterable<Type> get types => const [
        StartInstancesResult,
        _$StartInstancesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  StartInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartInstancesResultBuilder();
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
          result.startingInstances.replace((const _i3.XmlBuiltListSerializer(
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
    StartInstancesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'StartInstancesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final StartInstancesResult(:startingInstances) = object;
    if (startingInstances != null) {
      result$
        ..add(const _i3.XmlElementName('InstancesSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          startingInstances,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(InstanceStateChange)],
          ),
        ));
    }
    return result$;
  }
}
