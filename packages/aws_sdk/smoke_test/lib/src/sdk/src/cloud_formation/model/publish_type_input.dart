// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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

  static const List<_i1.SmithySerializer<PublishTypeInput>> serializers = [
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
    final helper = newBuiltValueToStringHelper('PublishTypeInput')
      ..add(
        'type',
        type,
      )
      ..add(
        'arn',
        arn,
      )
      ..add(
        'typeName',
        typeName,
      )
      ..add(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ThirdPartyType),
          ) as _i3.ThirdPartyType);
        case 'Arn':
          result.arn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TypeName':
          result.typeName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PublicVersionNumber':
          result.publicVersionNumber = (serializers.deserialize(
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
    PublishTypeInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'PublishTypeInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final PublishTypeInput(:type, :arn, :typeName, :publicVersionNumber) =
        object;
    if (type != null) {
      result$
        ..add(const _i1.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType.nullable(_i3.ThirdPartyType),
        ));
    }
    if (arn != null) {
      result$
        ..add(const _i1.XmlElementName('Arn'))
        ..add(serializers.serialize(
          arn,
          specifiedType: const FullType(String),
        ));
    }
    if (typeName != null) {
      result$
        ..add(const _i1.XmlElementName('TypeName'))
        ..add(serializers.serialize(
          typeName,
          specifiedType: const FullType(String),
        ));
    }
    if (publicVersionNumber != null) {
      result$
        ..add(const _i1.XmlElementName('PublicVersionNumber'))
        ..add(serializers.serialize(
          publicVersionNumber,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
