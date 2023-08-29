// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.change; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_type.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_change.dart';

part 'change.g.dart';

/// The `Change` structure describes the changes CloudFormation will perform if you execute the change set.
abstract class Change
    with _i1.AWSEquatable<Change>
    implements Built<Change, ChangeBuilder> {
  /// The `Change` structure describes the changes CloudFormation will perform if you execute the change set.
  factory Change({
    ChangeType? type,
    int? hookInvocationCount,
    ResourceChange? resourceChange,
  }) {
    return _$Change._(
      type: type,
      hookInvocationCount: hookInvocationCount,
      resourceChange: resourceChange,
    );
  }

  /// The `Change` structure describes the changes CloudFormation will perform if you execute the change set.
  factory Change.build([void Function(ChangeBuilder) updates]) = _$Change;

  const Change._();

  static const List<_i2.SmithySerializer<Change>> serializers = [
    ChangeAwsQuerySerializer()
  ];

  /// The type of entity that CloudFormation changes. Currently, the only entity type is `Resource`.
  ChangeType? get type;

  /// Is either `null`, if no hooks invoke for the resource, or contains the number of hooks that will invoke for the resource.
  int? get hookInvocationCount;

  /// A `ResourceChange` structure that describes the resource and action that CloudFormation will perform.
  ResourceChange? get resourceChange;
  @override
  List<Object?> get props => [
        type,
        hookInvocationCount,
        resourceChange,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Change')
      ..add(
        'type',
        type,
      )
      ..add(
        'hookInvocationCount',
        hookInvocationCount,
      )
      ..add(
        'resourceChange',
        resourceChange,
      );
    return helper.toString();
  }
}

class ChangeAwsQuerySerializer extends _i2.StructuredSmithySerializer<Change> {
  const ChangeAwsQuerySerializer() : super('Change');

  @override
  Iterable<Type> get types => const [
        Change,
        _$Change,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  Change deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChangeBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(ChangeType),
          ) as ChangeType);
        case 'HookInvocationCount':
          result.hookInvocationCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ResourceChange':
          result.resourceChange.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ResourceChange),
          ) as ResourceChange));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Change object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ChangeResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final Change(:type, :hookInvocationCount, :resourceChange) = object;
    if (type != null) {
      result$
        ..add(const _i2.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType.nullable(ChangeType),
        ));
    }
    if (hookInvocationCount != null) {
      result$
        ..add(const _i2.XmlElementName('HookInvocationCount'))
        ..add(serializers.serialize(
          hookInvocationCount,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (resourceChange != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceChange'))
        ..add(serializers.serialize(
          resourceChange,
          specifiedType: const FullType(ResourceChange),
        ));
    }
    return result$;
  }
}
