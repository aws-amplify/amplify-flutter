// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_v1.s3.model.get_bucket_location_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/s3/model/bucket_location_constraint.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_bucket_location_output.g.dart';

abstract class GetBucketLocationOutput
    with _i1.AWSEquatable<GetBucketLocationOutput>
    implements
        Built<GetBucketLocationOutput, GetBucketLocationOutputBuilder>,
        _i2.HasPayload<BucketLocationConstraint> {
  factory GetBucketLocationOutput(
      {BucketLocationConstraint? locationConstraint}) {
    return _$GetBucketLocationOutput._(locationConstraint: locationConstraint);
  }

  factory GetBucketLocationOutput.build(
          [void Function(GetBucketLocationOutputBuilder) updates]) =
      _$GetBucketLocationOutput;

  const GetBucketLocationOutput._();

  /// Constructs a [GetBucketLocationOutput] from a [payload] and [response].
  factory GetBucketLocationOutput.fromResponse(
    BucketLocationConstraint? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetBucketLocationOutput.build((b) {
        b.locationConstraint = payload;
      });

  static const List<_i2.SmithySerializer<BucketLocationConstraint?>>
      serializers = [GetBucketLocationOutputRestXmlSerializer()];

  BucketLocationConstraint? get locationConstraint;
  @override
  BucketLocationConstraint? getPayload() => locationConstraint;

  @override
  List<Object?> get props => [locationConstraint];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketLocationOutput')
      ..add(
        'locationConstraint',
        locationConstraint,
      );
    return helper.toString();
  }
}

class GetBucketLocationOutputRestXmlSerializer
    extends _i2.PrimitiveSmithySerializer<BucketLocationConstraint> {
  const GetBucketLocationOutputRestXmlSerializer()
      : super('GetBucketLocationOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketLocationOutput,
        _$GetBucketLocationOutput,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  BucketLocationConstraint deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(BucketLocationConstraint),
    ) as BucketLocationConstraint);
  }

  @override
  Object serialize(
    Serializers serializers,
    BucketLocationConstraint object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LocationConstraint',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    result$.add(serializers.serialize(
      object,
      specifiedType: const FullType(BucketLocationConstraint),
    ));
    return result$;
  }
}
