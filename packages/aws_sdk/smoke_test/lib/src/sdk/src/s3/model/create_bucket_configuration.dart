// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.create_bucket_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_location_constraint.dart'
    as _i2;

part 'create_bucket_configuration.g.dart';

/// The configuration information for the bucket.
abstract class CreateBucketConfiguration
    with _i1.AWSEquatable<CreateBucketConfiguration>
    implements
        Built<CreateBucketConfiguration, CreateBucketConfigurationBuilder> {
  /// The configuration information for the bucket.
  factory CreateBucketConfiguration(
      {_i2.BucketLocationConstraint? locationConstraint}) {
    return _$CreateBucketConfiguration._(
        locationConstraint: locationConstraint);
  }

  /// The configuration information for the bucket.
  factory CreateBucketConfiguration.build(
          [void Function(CreateBucketConfigurationBuilder) updates]) =
      _$CreateBucketConfiguration;

  const CreateBucketConfiguration._();

  static const List<_i3.SmithySerializer> serializers = [
    CreateBucketConfigurationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateBucketConfigurationBuilder b) {}

  /// Specifies the Region where the bucket will be created. If you don't specify a Region, the bucket is created in the US East (N. Virginia) Region (us-east-1).
  _i2.BucketLocationConstraint? get locationConstraint;
  @override
  List<Object?> get props => [locationConstraint];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateBucketConfiguration');
    helper.add(
      'locationConstraint',
      locationConstraint,
    );
    return helper.toString();
  }
}

class CreateBucketConfigurationRestXmlSerializer
    extends _i3.StructuredSmithySerializer<CreateBucketConfiguration> {
  const CreateBucketConfigurationRestXmlSerializer()
      : super('CreateBucketConfiguration');

  @override
  Iterable<Type> get types => const [
        CreateBucketConfiguration,
        _$CreateBucketConfiguration,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  CreateBucketConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateBucketConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'LocationConstraint':
          if (value != null) {
            result.locationConstraint = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.BucketLocationConstraint),
            ) as _i2.BucketLocationConstraint);
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
    final payload = (object as CreateBucketConfiguration);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateBucketConfiguration',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.locationConstraint != null) {
      result
        ..add(const _i3.XmlElementName('LocationConstraint'))
        ..add(serializers.serialize(
          payload.locationConstraint!,
          specifiedType: const FullType.nullable(_i2.BucketLocationConstraint),
        ));
    }
    return result;
  }
}
