// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.access_key_last_used; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'access_key_last_used.g.dart';

/// Contains information about the last time an Amazon Web Services access key was used since IAM began tracking this information on April 22, 2015.
///
/// This data type is used as a response element in the GetAccessKeyLastUsed operation.
abstract class AccessKeyLastUsed
    with _i1.AWSEquatable<AccessKeyLastUsed>
    implements Built<AccessKeyLastUsed, AccessKeyLastUsedBuilder> {
  /// Contains information about the last time an Amazon Web Services access key was used since IAM began tracking this information on April 22, 2015.
  ///
  /// This data type is used as a response element in the GetAccessKeyLastUsed operation.
  factory AccessKeyLastUsed({
    required DateTime lastUsedDate,
    required String serviceName,
    required String region,
  }) {
    return _$AccessKeyLastUsed._(
      lastUsedDate: lastUsedDate,
      serviceName: serviceName,
      region: region,
    );
  }

  /// Contains information about the last time an Amazon Web Services access key was used since IAM began tracking this information on April 22, 2015.
  ///
  /// This data type is used as a response element in the GetAccessKeyLastUsed operation.
  factory AccessKeyLastUsed.build(
      [void Function(AccessKeyLastUsedBuilder) updates]) = _$AccessKeyLastUsed;

  const AccessKeyLastUsed._();

  static const List<_i2.SmithySerializer<AccessKeyLastUsed>> serializers = [
    AccessKeyLastUsedAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AccessKeyLastUsedBuilder b) {}

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the access key was most recently used. This field is null in the following situations:
  ///
  /// *   The user does not have an access key.
  ///
  /// *   An access key exists but has not been used since IAM began tracking this information.
  ///
  /// *   There is no sign-in data associated with the user.
  DateTime get lastUsedDate;

  /// The name of the Amazon Web Services service with which this access key was most recently used. The value of this field is "N/A" in the following situations:
  ///
  /// *   The user does not have an access key.
  ///
  /// *   An access key exists but has not been used since IAM started tracking this information.
  ///
  /// *   There is no sign-in data associated with the user.
  String get serviceName;

  /// The Amazon Web Services Region where this access key was most recently used. The value for this field is "N/A" in the following situations:
  ///
  /// *   The user does not have an access key.
  ///
  /// *   An access key exists but has not been used since IAM began tracking this information.
  ///
  /// *   There is no sign-in data associated with the user.
  ///
  ///
  /// For more information about Amazon Web Services Regions, see [Regions and endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html) in the Amazon Web Services General Reference.
  String get region;
  @override
  List<Object?> get props => [
        lastUsedDate,
        serviceName,
        region,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AccessKeyLastUsed')
      ..add(
        'lastUsedDate',
        lastUsedDate,
      )
      ..add(
        'serviceName',
        serviceName,
      )
      ..add(
        'region',
        region,
      );
    return helper.toString();
  }
}

class AccessKeyLastUsedAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<AccessKeyLastUsed> {
  const AccessKeyLastUsedAwsQuerySerializer() : super('AccessKeyLastUsed');

  @override
  Iterable<Type> get types => const [
        AccessKeyLastUsed,
        _$AccessKeyLastUsed,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  AccessKeyLastUsed deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccessKeyLastUsedBuilder();
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
        case 'ServiceName':
          result.serviceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    AccessKeyLastUsed object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AccessKeyLastUsedResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final AccessKeyLastUsed(:lastUsedDate, :serviceName, :region) = object;
    result$
      ..add(const _i2.XmlElementName('LastUsedDate'))
      ..add(serializers.serialize(
        lastUsedDate,
        specifiedType: const FullType.nullable(DateTime),
      ));
    result$
      ..add(const _i2.XmlElementName('ServiceName'))
      ..add(serializers.serialize(
        serviceName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('Region'))
      ..add(serializers.serialize(
        region,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
