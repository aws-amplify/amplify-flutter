// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.access_key; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/status_type.dart';

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
    required StatusType status,
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

  static const List<_i2.SmithySerializer<AccessKey>> serializers = [
    AccessKeyAwsQuerySerializer()
  ];

  /// The name of the IAM user that the access key is associated with.
  String get userName;

  /// The ID for this access key.
  String get accessKeyId;

  /// The status of the access key. `Active` means that the key is valid for API calls, while `Inactive` means it is not.
  StatusType get status;

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
    extends _i2.StructuredSmithySerializer<AccessKey> {
  const AccessKeyAwsQuerySerializer() : super('AccessKey');

  @override
  Iterable<Type> get types => const [
        AccessKey,
        _$AccessKey,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
            specifiedType: const FullType(StatusType),
          ) as StatusType);
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
      const _i2.XmlElementName(
        'AccessKeyResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
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
      ..add(const _i2.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('AccessKeyId'))
      ..add(serializers.serialize(
        accessKeyId,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('Status'))
      ..add(serializers.serialize(
        status,
        specifiedType: const FullType(StatusType),
      ));
    result$
      ..add(const _i2.XmlElementName('SecretAccessKey'))
      ..add(serializers.serialize(
        secretAccessKey,
        specifiedType: const FullType(String),
      ));
    if (createDate != null) {
      result$
        ..add(const _i2.XmlElementName('CreateDate'))
        ..add(serializers.serialize(
          createDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
