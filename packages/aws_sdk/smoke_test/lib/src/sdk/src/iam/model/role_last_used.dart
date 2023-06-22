// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.role_last_used; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'role_last_used.g.dart';

/// Contains information about the last time that an IAM role was used. This includes the date and time and the Region in which the role was last used. Activity is only reported for the trailing 400 days. This period can be shorter if your Region began supporting these features within the last year. The role might have been used more than 400 days ago. For more information, see [Regions where data is tracked](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period) in the _IAM user Guide_.
///
/// This data type is returned as a response element in the GetRole and GetAccountAuthorizationDetails operations.
abstract class RoleLastUsed
    with _i1.AWSEquatable<RoleLastUsed>
    implements Built<RoleLastUsed, RoleLastUsedBuilder> {
  /// Contains information about the last time that an IAM role was used. This includes the date and time and the Region in which the role was last used. Activity is only reported for the trailing 400 days. This period can be shorter if your Region began supporting these features within the last year. The role might have been used more than 400 days ago. For more information, see [Regions where data is tracked](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period) in the _IAM user Guide_.
  ///
  /// This data type is returned as a response element in the GetRole and GetAccountAuthorizationDetails operations.
  factory RoleLastUsed({
    DateTime? lastUsedDate,
    String? region,
  }) {
    return _$RoleLastUsed._(
      lastUsedDate: lastUsedDate,
      region: region,
    );
  }

  /// Contains information about the last time that an IAM role was used. This includes the date and time and the Region in which the role was last used. Activity is only reported for the trailing 400 days. This period can be shorter if your Region began supporting these features within the last year. The role might have been used more than 400 days ago. For more information, see [Regions where data is tracked](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period) in the _IAM user Guide_.
  ///
  /// This data type is returned as a response element in the GetRole and GetAccountAuthorizationDetails operations.
  factory RoleLastUsed.build([void Function(RoleLastUsedBuilder) updates]) =
      _$RoleLastUsed;

  const RoleLastUsed._();

  static const List<_i2.SmithySerializer<RoleLastUsed>> serializers = [
    RoleLastUsedAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RoleLastUsedBuilder b) {}

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601) that the role was last used.
  ///
  /// This field is null if the role has not been used within the IAM tracking period. For more information about the tracking period, see [Regions where data is tracked](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period) in the _IAM User Guide_.
  DateTime? get lastUsedDate;

  /// The name of the Amazon Web Services Region in which the role was last used.
  String? get region;
  @override
  List<Object?> get props => [
        lastUsedDate,
        region,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RoleLastUsed')
      ..add(
        'lastUsedDate',
        lastUsedDate,
      )
      ..add(
        'region',
        region,
      );
    return helper.toString();
  }
}

class RoleLastUsedAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<RoleLastUsed> {
  const RoleLastUsedAwsQuerySerializer() : super('RoleLastUsed');

  @override
  Iterable<Type> get types => const [
        RoleLastUsed,
        _$RoleLastUsed,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  RoleLastUsed deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RoleLastUsedBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'LastUsedDate':
          result.lastUsedDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'Region':
          result.region = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RoleLastUsed object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RoleLastUsedResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final RoleLastUsed(:lastUsedDate, :region) = object;
    if (lastUsedDate != null) {
      result$
        ..add(const _i2.XmlElementName('LastUsedDate'))
        ..add(serializers.serialize(
          lastUsedDate,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (region != null) {
      result$
        ..add(const _i2.XmlElementName('Region'))
        ..add(serializers.serialize(
          region,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
