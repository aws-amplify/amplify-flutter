// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.invalid_object_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/intelligent_tiering_access_tier.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/storage_class.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_object_state.g.dart';

/// Object is archived and inaccessible until restored.
///
/// If the object you are retrieving is stored in the S3 Glacier Flexible Retrieval storage class, the S3 Glacier Deep Archive storage class, the S3 Intelligent-Tiering Archive Access tier, or the S3 Intelligent-Tiering Deep Archive Access tier, before you can retrieve the object you must first restore a copy using [RestoreObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html). Otherwise, this operation returns an `InvalidObjectState` error. For information about restoring archived objects, see [Restoring Archived Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html) in the _Amazon S3 User Guide_.
abstract class InvalidObjectState
    with _i1.AWSEquatable<InvalidObjectState>
    implements
        Built<InvalidObjectState, InvalidObjectStateBuilder>,
        _i2.SmithyHttpException {
  /// Object is archived and inaccessible until restored.
  ///
  /// If the object you are retrieving is stored in the S3 Glacier Flexible Retrieval storage class, the S3 Glacier Deep Archive storage class, the S3 Intelligent-Tiering Archive Access tier, or the S3 Intelligent-Tiering Deep Archive Access tier, before you can retrieve the object you must first restore a copy using [RestoreObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html). Otherwise, this operation returns an `InvalidObjectState` error. For information about restoring archived objects, see [Restoring Archived Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html) in the _Amazon S3 User Guide_.
  factory InvalidObjectState({
    StorageClass? storageClass,
    IntelligentTieringAccessTier? accessTier,
  }) {
    return _$InvalidObjectState._(
      storageClass: storageClass,
      accessTier: accessTier,
    );
  }

  /// Object is archived and inaccessible until restored.
  ///
  /// If the object you are retrieving is stored in the S3 Glacier Flexible Retrieval storage class, the S3 Glacier Deep Archive storage class, the S3 Intelligent-Tiering Archive Access tier, or the S3 Intelligent-Tiering Deep Archive Access tier, before you can retrieve the object you must first restore a copy using [RestoreObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html). Otherwise, this operation returns an `InvalidObjectState` error. For information about restoring archived objects, see [Restoring Archived Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html) in the _Amazon S3 User Guide_.
  factory InvalidObjectState.build(
          [void Function(InvalidObjectStateBuilder) updates]) =
      _$InvalidObjectState;

  const InvalidObjectState._();

  /// Constructs a [InvalidObjectState] from a [payload] and [response].
  factory InvalidObjectState.fromResponse(
    InvalidObjectState payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<InvalidObjectState>> serializers = [
    InvalidObjectStateRestXmlSerializer()
  ];

  StorageClass? get storageClass;
  IntelligentTieringAccessTier? get accessTier;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.s3',
        shape: 'InvalidObjectState',
      );

  @override
  String? get message => null;

  @override
  _i2.RetryConfig? get retryConfig => null;

  @override
  @BuiltValueField(compare: false)
  int get statusCode => 403;

  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;

  @override
  List<Object?> get props => [
        storageClass,
        accessTier,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InvalidObjectState')
      ..add(
        'storageClass',
        storageClass,
      )
      ..add(
        'accessTier',
        accessTier,
      );
    return helper.toString();
  }
}

class InvalidObjectStateRestXmlSerializer
    extends _i2.StructuredSmithySerializer<InvalidObjectState> {
  const InvalidObjectStateRestXmlSerializer() : super('InvalidObjectState');

  @override
  Iterable<Type> get types => const [
        InvalidObjectState,
        _$InvalidObjectState,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  InvalidObjectState deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidObjectStateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AccessTier':
          result.accessTier = (serializers.deserialize(
            value,
            specifiedType: const FullType(IntelligentTieringAccessTier),
          ) as IntelligentTieringAccessTier);
        case 'StorageClass':
          result.storageClass = (serializers.deserialize(
            value,
            specifiedType: const FullType(StorageClass),
          ) as StorageClass);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InvalidObjectState object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InvalidObjectState',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final InvalidObjectState(:accessTier, :storageClass) = object;
    if (accessTier != null) {
      result$
        ..add(const _i2.XmlElementName('AccessTier'))
        ..add(serializers.serialize(
          accessTier,
          specifiedType: const FullType(IntelligentTieringAccessTier),
        ));
    }
    if (storageClass != null) {
      result$
        ..add(const _i2.XmlElementName('StorageClass'))
        ..add(serializers.serialize(
          storageClass,
          specifiedType: const FullType(StorageClass),
        ));
    }
    return result$;
  }
}
