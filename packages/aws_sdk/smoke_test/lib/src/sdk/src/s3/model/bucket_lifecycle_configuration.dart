// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.bucket_lifecycle_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/lifecycle_rule.dart' as _i2;

part 'bucket_lifecycle_configuration.g.dart';

/// Specifies the lifecycle configuration for objects in an Amazon S3 bucket. For more information, see [Object Lifecycle Management](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html) in the _Amazon S3 User Guide_.
abstract class BucketLifecycleConfiguration
    with
        _i1.AWSEquatable<BucketLifecycleConfiguration>
    implements
        Built<BucketLifecycleConfiguration,
            BucketLifecycleConfigurationBuilder> {
  /// Specifies the lifecycle configuration for objects in an Amazon S3 bucket. For more information, see [Object Lifecycle Management](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html) in the _Amazon S3 User Guide_.
  factory BucketLifecycleConfiguration(
      {required List<_i2.LifecycleRule> rules}) {
    return _$BucketLifecycleConfiguration._(rules: _i3.BuiltList(rules));
  }

  /// Specifies the lifecycle configuration for objects in an Amazon S3 bucket. For more information, see [Object Lifecycle Management](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html) in the _Amazon S3 User Guide_.
  factory BucketLifecycleConfiguration.build(
          [void Function(BucketLifecycleConfigurationBuilder) updates]) =
      _$BucketLifecycleConfiguration;

  const BucketLifecycleConfiguration._();

  static const List<_i4.SmithySerializer> serializers = [
    BucketLifecycleConfigurationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BucketLifecycleConfigurationBuilder b) {}

  /// A lifecycle rule for individual objects in an Amazon S3 bucket.
  _i3.BuiltList<_i2.LifecycleRule> get rules;
  @override
  List<Object?> get props => [rules];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BucketLifecycleConfiguration');
    helper.add(
      'rules',
      rules,
    );
    return helper.toString();
  }
}

class BucketLifecycleConfigurationRestXmlSerializer
    extends _i4.StructuredSmithySerializer<BucketLifecycleConfiguration> {
  const BucketLifecycleConfigurationRestXmlSerializer()
      : super('BucketLifecycleConfiguration');

  @override
  Iterable<Type> get types => const [
        BucketLifecycleConfiguration,
        _$BucketLifecycleConfiguration,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  BucketLifecycleConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BucketLifecycleConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Rule':
          result.rules.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.LifecycleRule),
          ) as _i2.LifecycleRule));
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
    final payload = (object as BucketLifecycleConfiguration);
    final result = <Object?>[
      const _i4.XmlElementName(
        'BucketLifecycleConfiguration',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
        .addAll(const _i4.XmlBuiltListSerializer(memberName: 'Rule').serialize(
      serializers,
      payload.rules,
      specifiedType: const FullType.nullable(
        _i3.BuiltList,
        [FullType(_i2.LifecycleRule)],
      ),
    ));
    return result;
  }
}
