// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.account; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/throttle_settings.dart'
    as _i2;

part 'account.g.dart';

/// Represents an AWS account that is associated with API Gateway.
abstract class Account
    with _i1.AWSEquatable<Account>
    implements Built<Account, AccountBuilder> {
  /// Represents an AWS account that is associated with API Gateway.
  factory Account({
    String? cloudwatchRoleArn,
    _i2.ThrottleSettings? throttleSettings,
    List<String>? features,
    String? apiKeyVersion,
  }) {
    return _$Account._(
      cloudwatchRoleArn: cloudwatchRoleArn,
      throttleSettings: throttleSettings,
      features: features == null ? null : _i3.BuiltList(features),
      apiKeyVersion: apiKeyVersion,
    );
  }

  /// Represents an AWS account that is associated with API Gateway.
  factory Account.build([void Function(AccountBuilder) updates]) = _$Account;

  const Account._();

  /// Constructs a [Account] from a [payload] and [response].
  factory Account.fromResponse(
    Account payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<Account>> serializers = [
    AccountRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AccountBuilder b) {}

  /// The ARN of an Amazon CloudWatch role for the current Account.
  String? get cloudwatchRoleArn;

  /// Specifies the API request limits configured for the current Account.
  _i2.ThrottleSettings? get throttleSettings;

  /// A list of features supported for the account. When usage plans are enabled, the features list will include an entry of `"UsagePlans"`.
  _i3.BuiltList<String>? get features;

  /// The version of the API keys used for the account.
  String? get apiKeyVersion;
  @override
  List<Object?> get props => [
        cloudwatchRoleArn,
        throttleSettings,
        features,
        apiKeyVersion,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Account')
      ..add(
        'cloudwatchRoleArn',
        cloudwatchRoleArn,
      )
      ..add(
        'throttleSettings',
        throttleSettings,
      )
      ..add(
        'features',
        features,
      )
      ..add(
        'apiKeyVersion',
        apiKeyVersion,
      );
    return helper.toString();
  }
}

class AccountRestJson1Serializer
    extends _i4.StructuredSmithySerializer<Account> {
  const AccountRestJson1Serializer() : super('Account');

  @override
  Iterable<Type> get types => const [
        Account,
        _$Account,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  Account deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'apiKeyVersion':
          result.apiKeyVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'cloudwatchRoleArn':
          result.cloudwatchRoleArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'features':
          result.features.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'throttleSettings':
          result.throttleSettings.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ThrottleSettings),
          ) as _i2.ThrottleSettings));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Account object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final Account(
      :apiKeyVersion,
      :cloudwatchRoleArn,
      :features,
      :throttleSettings
    ) = object;
    if (apiKeyVersion != null) {
      result$
        ..add('apiKeyVersion')
        ..add(serializers.serialize(
          apiKeyVersion,
          specifiedType: const FullType(String),
        ));
    }
    if (cloudwatchRoleArn != null) {
      result$
        ..add('cloudwatchRoleArn')
        ..add(serializers.serialize(
          cloudwatchRoleArn,
          specifiedType: const FullType(String),
        ));
    }
    if (features != null) {
      result$
        ..add('features')
        ..add(serializers.serialize(
          features,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (throttleSettings != null) {
      result$
        ..add('throttleSettings')
        ..add(serializers.serialize(
          throttleSettings,
          specifiedType: const FullType(_i2.ThrottleSettings),
        ));
    }
    return result$;
  }
}
