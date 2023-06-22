// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.publish_type_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'publish_type_output.g.dart';

abstract class PublishTypeOutput
    with _i1.AWSEquatable<PublishTypeOutput>
    implements Built<PublishTypeOutput, PublishTypeOutputBuilder> {
  factory PublishTypeOutput({String? publicTypeArn}) {
    return _$PublishTypeOutput._(publicTypeArn: publicTypeArn);
  }

  factory PublishTypeOutput.build(
      [void Function(PublishTypeOutputBuilder) updates]) = _$PublishTypeOutput;

  const PublishTypeOutput._();

  /// Constructs a [PublishTypeOutput] from a [payload] and [response].
  factory PublishTypeOutput.fromResponse(
    PublishTypeOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<PublishTypeOutput>> serializers = [
    PublishTypeOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PublishTypeOutputBuilder b) {}

  /// The Amazon Resource Name (ARN) assigned to the public extension upon publication.
  String? get publicTypeArn;
  @override
  List<Object?> get props => [publicTypeArn];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PublishTypeOutput')
      ..add(
        'publicTypeArn',
        publicTypeArn,
      );
    return helper.toString();
  }
}

class PublishTypeOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<PublishTypeOutput> {
  const PublishTypeOutputAwsQuerySerializer() : super('PublishTypeOutput');

  @override
  Iterable<Type> get types => const [
        PublishTypeOutput,
        _$PublishTypeOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  PublishTypeOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PublishTypeOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PublicTypeArn':
          result.publicTypeArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PublishTypeOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PublishTypeOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final PublishTypeOutput(:publicTypeArn) = object;
    if (publicTypeArn != null) {
      result$
        ..add(const _i2.XmlElementName('PublicTypeArn'))
        ..add(serializers.serialize(
          publicTypeArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
