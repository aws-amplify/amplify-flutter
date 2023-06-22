// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.account_limit; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'account_limit.g.dart';

/// The AccountLimit data type.
///
/// CloudFormation has the following limits per account:
///
/// *   Number of concurrent resources
///
/// *   Number of stacks
///
/// *   Number of stack outputs
///
///
/// For more information about these account limits, and other CloudFormation limits, see [CloudFormation quotas](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html) in the _CloudFormation User Guide_.
abstract class AccountLimit
    with _i1.AWSEquatable<AccountLimit>
    implements Built<AccountLimit, AccountLimitBuilder> {
  /// The AccountLimit data type.
  ///
  /// CloudFormation has the following limits per account:
  ///
  /// *   Number of concurrent resources
  ///
  /// *   Number of stacks
  ///
  /// *   Number of stack outputs
  ///
  ///
  /// For more information about these account limits, and other CloudFormation limits, see [CloudFormation quotas](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html) in the _CloudFormation User Guide_.
  factory AccountLimit({
    String? name,
    int? value,
  }) {
    return _$AccountLimit._(
      name: name,
      value: value,
    );
  }

  /// The AccountLimit data type.
  ///
  /// CloudFormation has the following limits per account:
  ///
  /// *   Number of concurrent resources
  ///
  /// *   Number of stacks
  ///
  /// *   Number of stack outputs
  ///
  ///
  /// For more information about these account limits, and other CloudFormation limits, see [CloudFormation quotas](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html) in the _CloudFormation User Guide_.
  factory AccountLimit.build([void Function(AccountLimitBuilder) updates]) =
      _$AccountLimit;

  const AccountLimit._();

  static const List<_i2.SmithySerializer<AccountLimit>> serializers = [
    AccountLimitAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AccountLimitBuilder b) {}

  /// The name of the account limit.
  ///
  /// Values: `ConcurrentResourcesLimit` | `StackLimit` | `StackOutputsLimit`
  String? get name;

  /// The value that's associated with the account limit name.
  int? get value;
  @override
  List<Object?> get props => [
        name,
        value,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AccountLimit')
      ..add(
        'name',
        name,
      )
      ..add(
        'value',
        value,
      );
    return helper.toString();
  }
}

class AccountLimitAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<AccountLimit> {
  const AccountLimitAwsQuerySerializer() : super('AccountLimit');

  @override
  Iterable<Type> get types => const [
        AccountLimit,
        _$AccountLimit,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  AccountLimit deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountLimitBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Value':
          result.value = (serializers.deserialize(
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
    AccountLimit object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AccountLimitResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final AccountLimit(:name, :value) = object;
    if (name != null) {
      result$
        ..add(const _i2.XmlElementName('Name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    if (value != null) {
      result$
        ..add(const _i2.XmlElementName('Value'))
        ..add(serializers.serialize(
          value,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result$;
  }
}
