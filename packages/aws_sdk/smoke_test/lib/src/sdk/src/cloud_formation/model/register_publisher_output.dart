// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.register_publisher_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'register_publisher_output.g.dart';

abstract class RegisterPublisherOutput
    with _i1.AWSEquatable<RegisterPublisherOutput>
    implements Built<RegisterPublisherOutput, RegisterPublisherOutputBuilder> {
  factory RegisterPublisherOutput({String? publisherId}) {
    return _$RegisterPublisherOutput._(publisherId: publisherId);
  }

  factory RegisterPublisherOutput.build(
          [void Function(RegisterPublisherOutputBuilder) updates]) =
      _$RegisterPublisherOutput;

  const RegisterPublisherOutput._();

  /// Constructs a [RegisterPublisherOutput] from a [payload] and [response].
  factory RegisterPublisherOutput.fromResponse(
    RegisterPublisherOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<RegisterPublisherOutput>> serializers =
      [RegisterPublisherOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RegisterPublisherOutputBuilder b) {}

  /// The ID assigned this account by CloudFormation for publishing extensions.
  String? get publisherId;
  @override
  List<Object?> get props => [publisherId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RegisterPublisherOutput')
      ..add(
        'publisherId',
        publisherId,
      );
    return helper.toString();
  }
}

class RegisterPublisherOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<RegisterPublisherOutput> {
  const RegisterPublisherOutputAwsQuerySerializer()
      : super('RegisterPublisherOutput');

  @override
  Iterable<Type> get types => const [
        RegisterPublisherOutput,
        _$RegisterPublisherOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  RegisterPublisherOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegisterPublisherOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PublisherId':
          result.publisherId = (serializers.deserialize(
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
    RegisterPublisherOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RegisterPublisherOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final RegisterPublisherOutput(:publisherId) = object;
    if (publisherId != null) {
      result$
        ..add(const _i2.XmlElementName('PublisherId'))
        ..add(serializers.serialize(
          publisherId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
