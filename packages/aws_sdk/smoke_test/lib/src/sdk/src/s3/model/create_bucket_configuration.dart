// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.create_bucket_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_location_constraint.dart';

part 'create_bucket_configuration.g.dart';

/// The configuration information for the bucket.
abstract class CreateBucketConfiguration
    with _i1.AWSEquatable<CreateBucketConfiguration>
    implements
        Built<CreateBucketConfiguration, CreateBucketConfigurationBuilder> {
  /// The configuration information for the bucket.
  factory CreateBucketConfiguration(
      {BucketLocationConstraint? locationConstraint}) {
    return _$CreateBucketConfiguration._(
        locationConstraint: locationConstraint);
  }

  /// The configuration information for the bucket.
  factory CreateBucketConfiguration.build(
          [void Function(CreateBucketConfigurationBuilder) updates]) =
      _$CreateBucketConfiguration;

  const CreateBucketConfiguration._();

  static const List<_i2.SmithySerializer<CreateBucketConfiguration>>
      serializers = [CreateBucketConfigurationRestXmlSerializer()];

  /// Specifies the Region where the bucket will be created. If you don't specify a Region, the bucket is created in the US East (N. Virginia) Region (us-east-1).
  BucketLocationConstraint? get locationConstraint;
  @override
  List<Object?> get props => [locationConstraint];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateBucketConfiguration')
      ..add(
        'locationConstraint',
        locationConstraint,
      );
    return helper.toString();
  }
}

class CreateBucketConfigurationRestXmlSerializer
    extends _i2.StructuredSmithySerializer<CreateBucketConfiguration> {
  const CreateBucketConfigurationRestXmlSerializer()
      : super('CreateBucketConfiguration');

  @override
  Iterable<Type> get types => const [
        CreateBucketConfiguration,
        _$CreateBucketConfiguration,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'LocationConstraint':
          result.locationConstraint = (serializers.deserialize(
            value,
            specifiedType: const FullType(BucketLocationConstraint),
          ) as BucketLocationConstraint);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateBucketConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateBucketConfiguration',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final CreateBucketConfiguration(:locationConstraint) = object;
    if (locationConstraint != null) {
      result$
        ..add(const _i2.XmlElementName('LocationConstraint'))
        ..add(serializers.serialize(
          locationConstraint,
          specifiedType: const FullType(BucketLocationConstraint),
        ));
    }
    return result$;
  }
}
