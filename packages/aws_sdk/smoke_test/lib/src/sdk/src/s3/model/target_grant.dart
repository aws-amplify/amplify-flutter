// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.target_grant; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_logs_permission.dart';
import 'package:smoke_test/src/sdk/src/s3/model/grantee.dart';

part 'target_grant.g.dart';

/// Container for granting information.
///
/// Buckets that use the bucket owner enforced setting for Object Ownership don't support target grants. For more information, see [Permissions server access log delivery](https://docs.aws.amazon.com/AmazonS3/latest/userguide/enable-server-access-logging.html#grant-log-delivery-permissions-general) in the _Amazon S3 User Guide_.
abstract class TargetGrant
    with _i1.AWSEquatable<TargetGrant>
    implements Built<TargetGrant, TargetGrantBuilder> {
  /// Container for granting information.
  ///
  /// Buckets that use the bucket owner enforced setting for Object Ownership don't support target grants. For more information, see [Permissions server access log delivery](https://docs.aws.amazon.com/AmazonS3/latest/userguide/enable-server-access-logging.html#grant-log-delivery-permissions-general) in the _Amazon S3 User Guide_.
  factory TargetGrant({
    Grantee? grantee,
    BucketLogsPermission? permission,
  }) {
    return _$TargetGrant._(
      grantee: grantee,
      permission: permission,
    );
  }

  /// Container for granting information.
  ///
  /// Buckets that use the bucket owner enforced setting for Object Ownership don't support target grants. For more information, see [Permissions server access log delivery](https://docs.aws.amazon.com/AmazonS3/latest/userguide/enable-server-access-logging.html#grant-log-delivery-permissions-general) in the _Amazon S3 User Guide_.
  factory TargetGrant.build([void Function(TargetGrantBuilder) updates]) =
      _$TargetGrant;

  const TargetGrant._();

  static const List<_i2.SmithySerializer<TargetGrant>> serializers = [
    TargetGrantRestXmlSerializer()
  ];

  /// Container for the person being granted permissions.
  Grantee? get grantee;

  /// Logging permissions assigned to the grantee for the bucket.
  BucketLogsPermission? get permission;
  @override
  List<Object?> get props => [
        grantee,
        permission,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TargetGrant')
      ..add(
        'grantee',
        grantee,
      )
      ..add(
        'permission',
        permission,
      );
    return helper.toString();
  }
}

class TargetGrantRestXmlSerializer
    extends _i2.StructuredSmithySerializer<TargetGrant> {
  const TargetGrantRestXmlSerializer() : super('TargetGrant');

  @override
  Iterable<Type> get types => const [
        TargetGrant,
        _$TargetGrant,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  TargetGrant deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TargetGrantBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Grantee':
          result.grantee.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Grantee),
          ) as Grantee));
        case 'Permission':
          result.permission = (serializers.deserialize(
            value,
            specifiedType: const FullType(BucketLogsPermission),
          ) as BucketLogsPermission);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TargetGrant object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TargetGrant',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final TargetGrant(:grantee, :permission) = object;
    if (grantee != null) {
      result$
        ..add(const _i2.XmlElementName(
          'Grantee',
          _i2.XmlNamespace(
            'http://www.w3.org/2001/XMLSchema-instance',
            'xsi',
          ),
        ))
        ..add(serializers.serialize(
          grantee,
          specifiedType: const FullType(Grantee),
        ));
    }
    if (permission != null) {
      result$
        ..add(const _i2.XmlElementName('Permission'))
        ..add(serializers.serialize(
          permission,
          specifiedType: const FullType.nullable(BucketLogsPermission),
        ));
    }
    return result$;
  }
}
