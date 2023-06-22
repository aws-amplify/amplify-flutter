// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.deactivate_type_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/third_party_type.dart'
    as _i3;

part 'deactivate_type_input.g.dart';

abstract class DeactivateTypeInput
    with
        _i1.HttpInput<DeactivateTypeInput>,
        _i2.AWSEquatable<DeactivateTypeInput>
    implements Built<DeactivateTypeInput, DeactivateTypeInputBuilder> {
  factory DeactivateTypeInput({
    String? typeName,
    _i3.ThirdPartyType? type,
    String? arn,
  }) {
    return _$DeactivateTypeInput._(
      typeName: typeName,
      type: type,
      arn: arn,
    );
  }

  factory DeactivateTypeInput.build(
          [void Function(DeactivateTypeInputBuilder) updates]) =
      _$DeactivateTypeInput;

  const DeactivateTypeInput._();

  factory DeactivateTypeInput.fromRequest(
    DeactivateTypeInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeactivateTypeInput>> serializers = [
    DeactivateTypeInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeactivateTypeInputBuilder b) {}

  /// The type name of the extension, in this account and Region. If you specified a type name alias when enabling the extension, use the type name alias.
  ///
  /// Conditional: You must specify either `Arn`, or `TypeName` and `Type`.
  String? get typeName;

  /// The extension type.
  ///
  /// Conditional: You must specify either `Arn`, or `TypeName` and `Type`.
  _i3.ThirdPartyType? get type;

  /// The Amazon Resource Name (ARN) for the extension, in this account and Region.
  ///
  /// Conditional: You must specify either `Arn`, or `TypeName` and `Type`.
  String? get arn;
  @override
  DeactivateTypeInput getPayload() => this;
  @override
  List<Object?> get props => [
        typeName,
        type,
        arn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeactivateTypeInput')
      ..add(
        'typeName',
        typeName,
      )
      ..add(
        'type',
        type,
      )
      ..add(
        'arn',
        arn,
      );
    return helper.toString();
  }
}

class DeactivateTypeInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeactivateTypeInput> {
  const DeactivateTypeInputAwsQuerySerializer() : super('DeactivateTypeInput');

  @override
  Iterable<Type> get types => const [
        DeactivateTypeInput,
        _$DeactivateTypeInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeactivateTypeInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeactivateTypeInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TypeName':
          result.typeName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeactivateTypeInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeactivateTypeInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DeactivateTypeInput(:typeName, :type, :arn) = object;
    if (typeName != null) {
      result$
        ..add(const _i1.XmlElementName('TypeName'))
        ..add(serializers.serialize(
          typeName,
          specifiedType: const FullType(String),
        ));
    }
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
    return result$;
  }
}
