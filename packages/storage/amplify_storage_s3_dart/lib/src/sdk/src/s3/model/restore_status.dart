// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.restore_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'restore_status.g.dart';

/// Specifies the restoration status of an object. Objects in certain storage classes must be restored before they can be retrieved. For more information about these storage classes and how to work with archived objects, see [Working with archived objects](https://docs.aws.amazon.com/AmazonS3/latest/userguide/archived-objects.html) in the _Amazon S3 User Guide_.
///
/// This functionality is not supported for directory buckets. Only the S3 Express One Zone storage class is supported by directory buckets to store objects.
abstract class RestoreStatus
    with _i1.AWSEquatable<RestoreStatus>
    implements Built<RestoreStatus, RestoreStatusBuilder> {
  /// Specifies the restoration status of an object. Objects in certain storage classes must be restored before they can be retrieved. For more information about these storage classes and how to work with archived objects, see [Working with archived objects](https://docs.aws.amazon.com/AmazonS3/latest/userguide/archived-objects.html) in the _Amazon S3 User Guide_.
  ///
  /// This functionality is not supported for directory buckets. Only the S3 Express One Zone storage class is supported by directory buckets to store objects.
  factory RestoreStatus({
    bool? isRestoreInProgress,
    DateTime? restoreExpiryDate,
  }) {
    return _$RestoreStatus._(
      isRestoreInProgress: isRestoreInProgress,
      restoreExpiryDate: restoreExpiryDate,
    );
  }

  /// Specifies the restoration status of an object. Objects in certain storage classes must be restored before they can be retrieved. For more information about these storage classes and how to work with archived objects, see [Working with archived objects](https://docs.aws.amazon.com/AmazonS3/latest/userguide/archived-objects.html) in the _Amazon S3 User Guide_.
  ///
  /// This functionality is not supported for directory buckets. Only the S3 Express One Zone storage class is supported by directory buckets to store objects.
  factory RestoreStatus.build([void Function(RestoreStatusBuilder) updates]) =
      _$RestoreStatus;

  const RestoreStatus._();

  static const List<_i2.SmithySerializer<RestoreStatus>> serializers = [
    RestoreStatusRestXmlSerializer()
  ];

  /// Specifies whether the object is currently being restored. If the object restoration is in progress, the header returns the value `TRUE`. For example:
  ///
  /// `x-amz-optional-object-attributes: IsRestoreInProgress="true"`
  ///
  /// If the object restoration has completed, the header returns the value `FALSE`. For example:
  ///
  /// `x-amz-optional-object-attributes: IsRestoreInProgress="false", RestoreExpiryDate="2012-12-21T00:00:00.000Z"`
  ///
  /// If the object hasn't been restored, there is no header response.
  bool? get isRestoreInProgress;

  /// Indicates when the restored copy will expire. This value is populated only if the object has already been restored. For example:
  ///
  /// `x-amz-optional-object-attributes: IsRestoreInProgress="false", RestoreExpiryDate="2012-12-21T00:00:00.000Z"`
  DateTime? get restoreExpiryDate;
  @override
  List<Object?> get props => [
        isRestoreInProgress,
        restoreExpiryDate,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RestoreStatus')
      ..add(
        'isRestoreInProgress',
        isRestoreInProgress,
      )
      ..add(
        'restoreExpiryDate',
        restoreExpiryDate,
      );
    return helper.toString();
  }
}

class RestoreStatusRestXmlSerializer
    extends _i2.StructuredSmithySerializer<RestoreStatus> {
  const RestoreStatusRestXmlSerializer() : super('RestoreStatus');

  @override
  Iterable<Type> get types => const [
        RestoreStatus,
        _$RestoreStatus,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  RestoreStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestoreStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'IsRestoreInProgress':
          result.isRestoreInProgress = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'RestoreExpiryDate':
          result.restoreExpiryDate = (serializers.deserialize(
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
    RestoreStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RestoreStatus',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final RestoreStatus(:isRestoreInProgress, :restoreExpiryDate) = object;
    if (isRestoreInProgress != null) {
      result$
        ..add(const _i2.XmlElementName('IsRestoreInProgress'))
        ..add(serializers.serialize(
          isRestoreInProgress,
          specifiedType: const FullType(bool),
        ));
    }
    if (restoreExpiryDate != null) {
      result$
        ..add(const _i2.XmlElementName('RestoreExpiryDate'))
        ..add(serializers.serialize(
          restoreExpiryDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
