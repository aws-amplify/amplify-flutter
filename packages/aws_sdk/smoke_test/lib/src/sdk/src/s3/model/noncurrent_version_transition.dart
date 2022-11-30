// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.noncurrent_version_transition; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/transition_storage_class.dart'
    as _i2;

part 'noncurrent_version_transition.g.dart';

/// Container for the transition rule that describes when noncurrent objects transition to the `STANDARD_IA`, `ONEZONE_IA`, `INTELLIGENT_TIERING`, `GLACIER_IR`, `GLACIER`, or `DEEP_ARCHIVE` storage class. If your bucket is versioning-enabled (or versioning is suspended), you can set this action to request that Amazon S3 transition noncurrent object versions to the `STANDARD_IA`, `ONEZONE_IA`, `INTELLIGENT_TIERING`, `GLACIER_IR`, `GLACIER`, or `DEEP_ARCHIVE` storage class at a specific period in the object's lifetime.
abstract class NoncurrentVersionTransition
    with _i1.AWSEquatable<NoncurrentVersionTransition>
    implements
        Built<NoncurrentVersionTransition, NoncurrentVersionTransitionBuilder> {
  /// Container for the transition rule that describes when noncurrent objects transition to the `STANDARD_IA`, `ONEZONE_IA`, `INTELLIGENT_TIERING`, `GLACIER_IR`, `GLACIER`, or `DEEP_ARCHIVE` storage class. If your bucket is versioning-enabled (or versioning is suspended), you can set this action to request that Amazon S3 transition noncurrent object versions to the `STANDARD_IA`, `ONEZONE_IA`, `INTELLIGENT_TIERING`, `GLACIER_IR`, `GLACIER`, or `DEEP_ARCHIVE` storage class at a specific period in the object's lifetime.
  factory NoncurrentVersionTransition({
    int? newerNoncurrentVersions,
    int? noncurrentDays,
    _i2.TransitionStorageClass? storageClass,
  }) {
    return _$NoncurrentVersionTransition._(
      newerNoncurrentVersions: newerNoncurrentVersions,
      noncurrentDays: noncurrentDays,
      storageClass: storageClass,
    );
  }

  /// Container for the transition rule that describes when noncurrent objects transition to the `STANDARD_IA`, `ONEZONE_IA`, `INTELLIGENT_TIERING`, `GLACIER_IR`, `GLACIER`, or `DEEP_ARCHIVE` storage class. If your bucket is versioning-enabled (or versioning is suspended), you can set this action to request that Amazon S3 transition noncurrent object versions to the `STANDARD_IA`, `ONEZONE_IA`, `INTELLIGENT_TIERING`, `GLACIER_IR`, `GLACIER`, or `DEEP_ARCHIVE` storage class at a specific period in the object's lifetime.
  factory NoncurrentVersionTransition.build(
          [void Function(NoncurrentVersionTransitionBuilder) updates]) =
      _$NoncurrentVersionTransition;

  const NoncurrentVersionTransition._();

  static const List<_i3.SmithySerializer> serializers = [
    NoncurrentVersionTransitionRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NoncurrentVersionTransitionBuilder b) {}

  /// Specifies how many noncurrent versions Amazon S3 will retain. If there are this many more recent noncurrent versions, Amazon S3 will take the associated action. For more information about noncurrent versions, see [Lifecycle configuration elements](https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-rules.html) in the _Amazon S3 User Guide_.
  int? get newerNoncurrentVersions;

  /// Specifies the number of days an object is noncurrent before Amazon S3 can perform the associated action. For information about the noncurrent days calculations, see [How Amazon S3 Calculates How Long an Object Has Been Noncurrent](https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#non-current-days-calculations) in the _Amazon S3 User Guide_.
  int? get noncurrentDays;

  /// The class of storage used to store the object.
  _i2.TransitionStorageClass? get storageClass;
  @override
  List<Object?> get props => [
        newerNoncurrentVersions,
        noncurrentDays,
        storageClass,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NoncurrentVersionTransition');
    helper.add(
      'newerNoncurrentVersions',
      newerNoncurrentVersions,
    );
    helper.add(
      'noncurrentDays',
      noncurrentDays,
    );
    helper.add(
      'storageClass',
      storageClass,
    );
    return helper.toString();
  }
}

class NoncurrentVersionTransitionRestXmlSerializer
    extends _i3.StructuredSmithySerializer<NoncurrentVersionTransition> {
  const NoncurrentVersionTransitionRestXmlSerializer()
      : super('NoncurrentVersionTransition');

  @override
  Iterable<Type> get types => const [
        NoncurrentVersionTransition,
        _$NoncurrentVersionTransition,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  NoncurrentVersionTransition deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NoncurrentVersionTransitionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'NewerNoncurrentVersions':
          if (value != null) {
            result.newerNoncurrentVersions = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'NoncurrentDays':
          if (value != null) {
            result.noncurrentDays = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'StorageClass':
          if (value != null) {
            result.storageClass = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TransitionStorageClass),
            ) as _i2.TransitionStorageClass);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as NoncurrentVersionTransition);
    final result = <Object?>[
      const _i3.XmlElementName(
        'NoncurrentVersionTransition',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.newerNoncurrentVersions != null) {
      result
        ..add(const _i3.XmlElementName('NewerNoncurrentVersions'))
        ..add(serializers.serialize(
          payload.newerNoncurrentVersions!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.noncurrentDays != null) {
      result
        ..add(const _i3.XmlElementName('NoncurrentDays'))
        ..add(serializers.serialize(
          payload.noncurrentDays!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.storageClass != null) {
      result
        ..add(const _i3.XmlElementName('StorageClass'))
        ..add(serializers.serialize(
          payload.storageClass!,
          specifiedType: const FullType.nullable(_i2.TransitionStorageClass),
        ));
    }
    return result;
  }
}
