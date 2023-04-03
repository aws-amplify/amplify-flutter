// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.publish_type_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/third_party_type.dart'
    as _i3;

part 'publish_type_input.g.dart';

abstract class PublishTypeInput
    with _i1.HttpInput<PublishTypeInput>, _i2.AWSEquatable<PublishTypeInput>
    implements Built<PublishTypeInput, PublishTypeInputBuilder> {
  factory PublishTypeInput({
    _i3.ThirdPartyType? type,
    String? arn,
    String? typeName,
    String? publicVersionNumber,
  }) {
    return _$PublishTypeInput._(
      type: type,
      arn: arn,
      typeName: typeName,
      publicVersionNumber: publicVersionNumber,
    );
  }

  factory PublishTypeInput.build(
      [void Function(PublishTypeInputBuilder) updates]) = _$PublishTypeInput;

  const PublishTypeInput._();

  factory PublishTypeInput.fromRequest(
    PublishTypeInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    PublishTypeInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PublishTypeInputBuilder b) {}

  /// The type of the extension.
  ///
  /// Conditional: You must specify `Arn`, or `TypeName` and `Type`.
  _i3.ThirdPartyType? get type;

  /// The Amazon Resource Name (ARN) of the extension.
  ///
  /// Conditional: You must specify `Arn`, or `TypeName` and `Type`.
  String? get arn;

  /// The name of the extension.
  ///
  /// Conditional: You must specify `Arn`, or `TypeName` and `Type`.
  String? get typeName;

  /// The version number to assign to this version of the extension.
  ///
  /// Use the following format, and adhere to semantic versioning when assigning a version number to your extension:
  ///
  /// `MAJOR.MINOR.PATCH`
  ///
  /// For more information, see [Semantic Versioning 2.0.0](https://semver.org/).
  ///
  /// If you don't specify a version number, CloudFormation increments the version number by one minor version release.
  ///
  /// You cannot specify a version number the first time you publish a type. CloudFormation automatically sets the first version number to be `1.0.0`.
  String? get publicVersionNumber;
  @override
  PublishTypeInput getPayload() => this;
  @override
  List<Object?> get props => [
        type,
        arn,
        typeName,
        publicVersionNumber,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PublishTypeInput');
    helper.add(
      'type',
      type,
    );
    helper.add(
      'arn',
      arn,
    );
    helper.add(
      'typeName',
      typeName,
    );
    helper.add(
      'publicVersionNumber',
      publicVersionNumber,
    );
    return helper.toString();
  }
}

class PublishTypeInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<PublishTypeInput> {
  const PublishTypeInputAwsQuerySerializer() : super('PublishTypeInput');

  @override
  Iterable<Type> get types => const [
        PublishTypeInput,
        _$PublishTypeInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  PublishTypeInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PublishTypeInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ThirdPartyType),
            ) as _i3.ThirdPartyType);
          }
          break;
        case 'Arn':
          if (value != null) {
            result.arn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TypeName':
          if (value != null) {
            result.typeName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'PublicVersionNumber':
          if (value != null) {
            result.publicVersionNumber = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as PublishTypeInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'PublishTypeInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.type != null) {
      result
        ..add(const _i1.XmlElementName('Type'))
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType.nullable(_i3.ThirdPartyType),
        ));
    }
    if (payload.arn != null) {
      result
        ..add(const _i1.XmlElementName('Arn'))
        ..add(serializers.serialize(
          payload.arn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.typeName != null) {
      result
        ..add(const _i1.XmlElementName('TypeName'))
        ..add(serializers.serialize(
          payload.typeName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.publicVersionNumber != null) {
      result
        ..add(const _i1.XmlElementName('PublicVersionNumber'))
        ..add(serializers.serialize(
          payload.publicVersionNumber!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
