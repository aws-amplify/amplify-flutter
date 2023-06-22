// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.account_aggregation_source; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'account_aggregation_source.g.dart';

/// A collection of accounts and regions.
abstract class AccountAggregationSource
    with _i1.AWSEquatable<AccountAggregationSource>
    implements
        Built<AccountAggregationSource, AccountAggregationSourceBuilder> {
  /// A collection of accounts and regions.
  factory AccountAggregationSource({
    required List<String> accountIds,
    bool? allAwsRegions,
    List<String>? awsRegions,
  }) {
    allAwsRegions ??= false;
    return _$AccountAggregationSource._(
      accountIds: _i2.BuiltList(accountIds),
      allAwsRegions: allAwsRegions,
      awsRegions: awsRegions == null ? null : _i2.BuiltList(awsRegions),
    );
  }

  /// A collection of accounts and regions.
  factory AccountAggregationSource.build(
          [void Function(AccountAggregationSourceBuilder) updates]) =
      _$AccountAggregationSource;

  const AccountAggregationSource._();

  static const List<_i3.SmithySerializer<AccountAggregationSource>>
      serializers = [AccountAggregationSourceAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AccountAggregationSourceBuilder b) {
    b.allAwsRegions = false;
  }

  /// The 12-digit account ID of the account being aggregated.
  _i2.BuiltList<String> get accountIds;

  /// If true, aggregate existing Config regions and future regions.
  bool get allAwsRegions;

  /// The source regions being aggregated.
  _i2.BuiltList<String>? get awsRegions;
  @override
  List<Object?> get props => [
        accountIds,
        allAwsRegions,
        awsRegions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AccountAggregationSource')
      ..add(
        'accountIds',
        accountIds,
      )
      ..add(
        'allAwsRegions',
        allAwsRegions,
      )
      ..add(
        'awsRegions',
        awsRegions,
      );
    return helper.toString();
  }
}

class AccountAggregationSourceAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<AccountAggregationSource> {
  const AccountAggregationSourceAwsJson11Serializer()
      : super('AccountAggregationSource');

  @override
  Iterable<Type> get types => const [
        AccountAggregationSource,
        _$AccountAggregationSource,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  AccountAggregationSource deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountAggregationSourceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AccountIds':
          result.accountIds.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'AllAwsRegions':
          result.allAwsRegions = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'AwsRegions':
          result.awsRegions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AccountAggregationSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AccountAggregationSource(:accountIds, :allAwsRegions, :awsRegions) =
        object;
    result$.addAll([
      'AccountIds',
      serializers.serialize(
        accountIds,
        specifiedType: const FullType(
          _i2.BuiltList,
          [FullType(String)],
        ),
      ),
      'AllAwsRegions',
      serializers.serialize(
        allAwsRegions,
        specifiedType: const FullType(bool),
      ),
    ]);
    if (awsRegions != null) {
      result$
        ..add('AwsRegions')
        ..add(serializers.serialize(
          awsRegions,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
