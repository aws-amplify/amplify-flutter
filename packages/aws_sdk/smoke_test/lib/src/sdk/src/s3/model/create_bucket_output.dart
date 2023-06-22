// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.create_bucket_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i2;

part 'create_bucket_output.g.dart';

abstract class CreateBucketOutput
    with _i1.AWSEquatable<CreateBucketOutput>
    implements
        Built<CreateBucketOutput, CreateBucketOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<CreateBucketOutputPayload> {
  factory CreateBucketOutput({String? location}) {
    return _$CreateBucketOutput._(location: location);
  }

  factory CreateBucketOutput.build(
          [void Function(CreateBucketOutputBuilder) updates]) =
      _$CreateBucketOutput;

  const CreateBucketOutput._();

  /// Constructs a [CreateBucketOutput] from a [payload] and [response].
  factory CreateBucketOutput.fromResponse(
    CreateBucketOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      CreateBucketOutput.build((b) {
        if (response.headers['Location'] != null) {
          b.location = response.headers['Location']!;
        }
      });

  static const List<_i2.SmithySerializer<CreateBucketOutputPayload>>
      serializers = [CreateBucketOutputRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateBucketOutputBuilder b) {}

  /// A forward slash followed by the name of the bucket.
  String? get location;
  @override
  CreateBucketOutputPayload getPayload() => CreateBucketOutputPayload();
  @override
  List<Object?> get props => [location];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateBucketOutput')
      ..add(
        'location',
        location,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class CreateBucketOutputPayload
    with _i1.AWSEquatable<CreateBucketOutputPayload>
    implements
        Built<CreateBucketOutputPayload, CreateBucketOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory CreateBucketOutputPayload(
          [void Function(CreateBucketOutputPayloadBuilder) updates]) =
      _$CreateBucketOutputPayload;

  const CreateBucketOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateBucketOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateBucketOutputPayload');
    return helper.toString();
  }
}

class CreateBucketOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<CreateBucketOutputPayload> {
  const CreateBucketOutputRestXmlSerializer() : super('CreateBucketOutput');

  @override
  Iterable<Type> get types => const [
        CreateBucketOutput,
        _$CreateBucketOutput,
        CreateBucketOutputPayload,
        _$CreateBucketOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  CreateBucketOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return CreateBucketOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateBucketOutputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateBucketOutput',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
