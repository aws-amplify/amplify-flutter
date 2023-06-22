// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.access_key; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/status_type.dart' as _i2;

part 'access_key.g.dart';

/// Contains information about an Amazon Web Services access key.
///
/// This data type is used as a response element in the CreateAccessKey and ListAccessKeys operations.
///
/// The `SecretAccessKey` value is returned only in response to CreateAccessKey. You can get a secret access key only when you first create an access key; you cannot recover the secret access key later. If you lose a secret access key, you must create a new access key.
abstract class AccessKey
    with _i1.AWSEquatable<AccessKey>
    implements Built<AccessKey, AccessKeyBuilder> {
  /// Contains information about an Amazon Web Services access key.
  ///
  /// This data type is used as a response element in the CreateAccessKey and ListAccessKeys operations.
  ///
  /// The `SecretAccessKey` value is returned only in response to CreateAccessKey. You can get a secret access key only when you first create an access key; you cannot recover the secret access key later. If you lose a secret access key, you must create a new access key.
  factory AccessKey({
    required String userName,
    required String accessKeyId,
    required _i2.StatusType status,
    required String secretAccessKey,
    DateTime? createDate,
  }) {
    return _$AccessKey._(
      userName: userName,
      accessKeyId: accessKeyId,
      status: status,
      secretAccessKey: secretAccessKey,
      createDate: createDate,
    );
  }

  /// Contains information about an Amazon Web Services access key.
  ///
  /// This data type is used as a response element in the CreateAccessKey and ListAccessKeys operations.
  ///
  /// The `SecretAccessKey` value is returned only in response to CreateAccessKey. You can get a secret access key only when you first create an access key; you cannot recover the secret access key later. If you lose a secret access key, you must create a new access key.
  factory AccessKey.build([void Function(AccessKeyBuilder) updates]) =
      _$AccessKey;

  const AccessKey._();

  static const List<_i3.SmithySerializer<AccessKey>> serializers = [
    AccessKeyAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AccessKeyBuilder b) {}

  /// The name of the IAM user that the access key is associated with.
  String get userName;

  /// The ID for this access key.
  String get accessKeyId;

  /// The status of the access key. `Active` means that the key is valid for API calls, while `Inactive` means it is not.
  _i2.StatusType get status;

  /// The secret key used to sign requests.
  String get secretAccessKey;

  /// The date when the access key was created.
  DateTime? get createDate;
  @override
  List<Object?> get props => [
        userName,
        accessKeyId,
        status,
        secretAccessKey,
        createDate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AccessKey')
      ..add(
        'userName',
        userName,
      )
      ..add(
        'accessKeyId',
        accessKeyId,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'secretAccessKey',
        '***SENSITIVE***',
      )
      ..add(
        'createDate',
        createDate,
      );
    return helper.toString();
  }
}

class AccessKeyAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<AccessKey> {
  const AccessKeyAwsQuerySerializer() : super('AccessKey');

  @override
  Iterable<Type> get types => const [
        AccessKey,
        _$AccessKey,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  AccessKey deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccessKeyBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'UserName':
          result.userName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AccessKeyId':
          result.accessKeyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.StatusType),
          ) as _i2.StatusType);
        case 'SecretAccessKey':
          result.secretAccessKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CreateDate':
          result.createDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AccessKey object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AccessKeyResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final AccessKey(
      :userName,
      :accessKeyId,
      :status,
      :secretAccessKey,
      :createDate
    ) = object;
    result$
      ..add(const _i3.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i3.XmlElementName('AccessKeyId'))
      ..add(serializers.serialize(
        accessKeyId,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i3.XmlElementName('Status'))
      ..add(serializers.serialize(
        status,
        specifiedType: const FullType.nullable(_i2.StatusType),
      ));
    result$
      ..add(const _i3.XmlElementName('SecretAccessKey'))
      ..add(serializers.serialize(
        secretAccessKey,
        specifiedType: const FullType(String),
      ));
    if (createDate != null) {
      result$
        ..add(const _i3.XmlElementName('CreateDate'))
        ..add(serializers.serialize(
          createDate,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}
