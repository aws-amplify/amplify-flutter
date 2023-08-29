// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.stack_set_operation_preferences; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/region_concurrency_type.dart';

part 'stack_set_operation_preferences.g.dart';

/// The user-specified preferences for how CloudFormation performs a stack set operation.
///
/// For more information about maximum concurrent accounts and failure tolerance, see [Stack set operation options](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options).
abstract class StackSetOperationPreferences
    with
        _i1.AWSEquatable<StackSetOperationPreferences>
    implements
        Built<StackSetOperationPreferences,
            StackSetOperationPreferencesBuilder> {
  /// The user-specified preferences for how CloudFormation performs a stack set operation.
  ///
  /// For more information about maximum concurrent accounts and failure tolerance, see [Stack set operation options](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options).
  factory StackSetOperationPreferences({
    RegionConcurrencyType? regionConcurrencyType,
    List<String>? regionOrder,
    int? failureToleranceCount,
    int? failureTolerancePercentage,
    int? maxConcurrentCount,
    int? maxConcurrentPercentage,
  }) {
    return _$StackSetOperationPreferences._(
      regionConcurrencyType: regionConcurrencyType,
      regionOrder: regionOrder == null ? null : _i2.BuiltList(regionOrder),
      failureToleranceCount: failureToleranceCount,
      failureTolerancePercentage: failureTolerancePercentage,
      maxConcurrentCount: maxConcurrentCount,
      maxConcurrentPercentage: maxConcurrentPercentage,
    );
  }

  /// The user-specified preferences for how CloudFormation performs a stack set operation.
  ///
  /// For more information about maximum concurrent accounts and failure tolerance, see [Stack set operation options](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options).
  factory StackSetOperationPreferences.build(
          [void Function(StackSetOperationPreferencesBuilder) updates]) =
      _$StackSetOperationPreferences;

  const StackSetOperationPreferences._();

  static const List<_i3.SmithySerializer<StackSetOperationPreferences>>
      serializers = [StackSetOperationPreferencesAwsQuerySerializer()];

  /// The concurrency type of deploying StackSets operations in Regions, could be in parallel or one Region at a time.
  RegionConcurrencyType? get regionConcurrencyType;

  /// The order of the Regions where you want to perform the stack operation.
  _i2.BuiltList<String>? get regionOrder;

  /// The number of accounts, per Region, for which this operation can fail before CloudFormation stops the operation in that Region. If the operation is stopped in a Region, CloudFormation doesn't attempt the operation in any subsequent Regions.
  ///
  /// Conditional: You must specify either `FailureToleranceCount` or `FailureTolerancePercentage` (but not both).
  ///
  /// By default, `0` is specified.
  int? get failureToleranceCount;

  /// The percentage of accounts, per Region, for which this stack operation can fail before CloudFormation stops the operation in that Region. If the operation is stopped in a Region, CloudFormation doesn't attempt the operation in any subsequent Regions.
  ///
  /// When calculating the number of accounts based on the specified percentage, CloudFormation rounds _down_ to the next whole number.
  ///
  /// Conditional: You must specify either `FailureToleranceCount` or `FailureTolerancePercentage`, but not both.
  ///
  /// By default, `0` is specified.
  int? get failureTolerancePercentage;

  /// The maximum number of accounts in which to perform this operation at one time. This is dependent on the value of `FailureToleranceCount`.`MaxConcurrentCount` is at most one more than the `FailureToleranceCount`.
  ///
  /// Note that this setting lets you specify the _maximum_ for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.
  ///
  /// Conditional: You must specify either `MaxConcurrentCount` or `MaxConcurrentPercentage`, but not both.
  ///
  /// By default, `1` is specified.
  int? get maxConcurrentCount;

  /// The maximum percentage of accounts in which to perform this operation at one time.
  ///
  /// When calculating the number of accounts based on the specified percentage, CloudFormation rounds down to the next whole number. This is true except in cases where rounding down would result is zero. In this case, CloudFormation sets the number as one instead.
  ///
  /// Note that this setting lets you specify the _maximum_ for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.
  ///
  /// Conditional: You must specify either `MaxConcurrentCount` or `MaxConcurrentPercentage`, but not both.
  ///
  /// By default, `1` is specified.
  int? get maxConcurrentPercentage;
  @override
  List<Object?> get props => [
        regionConcurrencyType,
        regionOrder,
        failureToleranceCount,
        failureTolerancePercentage,
        maxConcurrentCount,
        maxConcurrentPercentage,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StackSetOperationPreferences')
      ..add(
        'regionConcurrencyType',
        regionConcurrencyType,
      )
      ..add(
        'regionOrder',
        regionOrder,
      )
      ..add(
        'failureToleranceCount',
        failureToleranceCount,
      )
      ..add(
        'failureTolerancePercentage',
        failureTolerancePercentage,
      )
      ..add(
        'maxConcurrentCount',
        maxConcurrentCount,
      )
      ..add(
        'maxConcurrentPercentage',
        maxConcurrentPercentage,
      );
    return helper.toString();
  }
}

class StackSetOperationPreferencesAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<StackSetOperationPreferences> {
  const StackSetOperationPreferencesAwsQuerySerializer()
      : super('StackSetOperationPreferences');

  @override
  Iterable<Type> get types => const [
        StackSetOperationPreferences,
        _$StackSetOperationPreferences,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackSetOperationPreferences deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackSetOperationPreferencesBuilder();
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
        case 'RegionConcurrencyType':
          result.regionConcurrencyType = (serializers.deserialize(
            value,
            specifiedType: const FullType(RegionConcurrencyType),
          ) as RegionConcurrencyType);
        case 'RegionOrder':
          result.regionOrder.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'FailureToleranceCount':
          result.failureToleranceCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'FailureTolerancePercentage':
          result.failureTolerancePercentage = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'MaxConcurrentCount':
          result.maxConcurrentCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'MaxConcurrentPercentage':
          result.maxConcurrentPercentage = (serializers.deserialize(
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
    StackSetOperationPreferences object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'StackSetOperationPreferencesResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final StackSetOperationPreferences(
      :regionConcurrencyType,
      :regionOrder,
      :failureToleranceCount,
      :failureTolerancePercentage,
      :maxConcurrentCount,
      :maxConcurrentPercentage
    ) = object;
    if (regionConcurrencyType != null) {
      result$
        ..add(const _i3.XmlElementName('RegionConcurrencyType'))
        ..add(serializers.serialize(
          regionConcurrencyType,
          specifiedType: const FullType.nullable(RegionConcurrencyType),
        ));
    }
    if (regionOrder != null) {
      result$
        ..add(const _i3.XmlElementName('RegionOrder'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          regionOrder,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (failureToleranceCount != null) {
      result$
        ..add(const _i3.XmlElementName('FailureToleranceCount'))
        ..add(serializers.serialize(
          failureToleranceCount,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (failureTolerancePercentage != null) {
      result$
        ..add(const _i3.XmlElementName('FailureTolerancePercentage'))
        ..add(serializers.serialize(
          failureTolerancePercentage,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (maxConcurrentCount != null) {
      result$
        ..add(const _i3.XmlElementName('MaxConcurrentCount'))
        ..add(serializers.serialize(
          maxConcurrentCount,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (maxConcurrentPercentage != null) {
      result$
        ..add(const _i3.XmlElementName('MaxConcurrentPercentage'))
        ..add(serializers.serialize(
          maxConcurrentPercentage,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result$;
  }
}
