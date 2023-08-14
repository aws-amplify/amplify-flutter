// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_ebs_default_kms_key_id_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'modify_ebs_default_kms_key_id_result.g.dart';

abstract class ModifyEbsDefaultKmsKeyIdResult
    with
        _i1.AWSEquatable<ModifyEbsDefaultKmsKeyIdResult>
    implements
        Built<ModifyEbsDefaultKmsKeyIdResult,
            ModifyEbsDefaultKmsKeyIdResultBuilder> {
  factory ModifyEbsDefaultKmsKeyIdResult({String? kmsKeyId}) {
    return _$ModifyEbsDefaultKmsKeyIdResult._(kmsKeyId: kmsKeyId);
  }

  factory ModifyEbsDefaultKmsKeyIdResult.build(
          [void Function(ModifyEbsDefaultKmsKeyIdResultBuilder) updates]) =
      _$ModifyEbsDefaultKmsKeyIdResult;

  const ModifyEbsDefaultKmsKeyIdResult._();

  /// Constructs a [ModifyEbsDefaultKmsKeyIdResult] from a [payload] and [response].
  factory ModifyEbsDefaultKmsKeyIdResult.fromResponse(
    ModifyEbsDefaultKmsKeyIdResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifyEbsDefaultKmsKeyIdResult>>
      serializers = [ModifyEbsDefaultKmsKeyIdResultEc2QuerySerializer()];

  /// The Amazon Resource Name (ARN) of the default KMS key for encryption by default.
  String? get kmsKeyId;
  @override
  List<Object?> get props => [kmsKeyId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyEbsDefaultKmsKeyIdResult')
      ..add(
        'kmsKeyId',
        kmsKeyId,
      );
    return helper.toString();
  }
}

class ModifyEbsDefaultKmsKeyIdResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifyEbsDefaultKmsKeyIdResult> {
  const ModifyEbsDefaultKmsKeyIdResultEc2QuerySerializer()
      : super('ModifyEbsDefaultKmsKeyIdResult');

  @override
  Iterable<Type> get types => const [
        ModifyEbsDefaultKmsKeyIdResult,
        _$ModifyEbsDefaultKmsKeyIdResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyEbsDefaultKmsKeyIdResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyEbsDefaultKmsKeyIdResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'kmsKeyId':
          result.kmsKeyId = (serializers.deserialize(
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
    ModifyEbsDefaultKmsKeyIdResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyEbsDefaultKmsKeyIdResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyEbsDefaultKmsKeyIdResult(:kmsKeyId) = object;
    if (kmsKeyId != null) {
      result$
        ..add(const _i2.XmlElementName('KmsKeyId'))
        ..add(serializers.serialize(
          kmsKeyId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
