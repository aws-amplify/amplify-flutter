// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_ebs_default_kms_key_id_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'modify_ebs_default_kms_key_id_request.g.dart';

abstract class ModifyEbsDefaultKmsKeyIdRequest
    with
        _i1.HttpInput<ModifyEbsDefaultKmsKeyIdRequest>,
        _i2.AWSEquatable<ModifyEbsDefaultKmsKeyIdRequest>
    implements
        Built<ModifyEbsDefaultKmsKeyIdRequest,
            ModifyEbsDefaultKmsKeyIdRequestBuilder> {
  factory ModifyEbsDefaultKmsKeyIdRequest({
    String? kmsKeyId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ModifyEbsDefaultKmsKeyIdRequest._(
      kmsKeyId: kmsKeyId,
      dryRun: dryRun,
    );
  }

  factory ModifyEbsDefaultKmsKeyIdRequest.build(
          [void Function(ModifyEbsDefaultKmsKeyIdRequestBuilder) updates]) =
      _$ModifyEbsDefaultKmsKeyIdRequest;

  const ModifyEbsDefaultKmsKeyIdRequest._();

  factory ModifyEbsDefaultKmsKeyIdRequest.fromRequest(
    ModifyEbsDefaultKmsKeyIdRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyEbsDefaultKmsKeyIdRequest>>
      serializers = [ModifyEbsDefaultKmsKeyIdRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyEbsDefaultKmsKeyIdRequestBuilder b) {
    b.dryRun = false;
  }

  /// The identifier of the Key Management Service (KMS) KMS key to use for Amazon EBS encryption. If this parameter is not specified, your KMS key for Amazon EBS is used. If `KmsKeyId` is specified, the encrypted state must be `true`.
  ///
  /// You can specify the KMS key using any of the following:
  ///
  /// *   Key ID. For example, 1234abcd-12ab-34cd-56ef-1234567890ab.
  ///
  /// *   Key alias. For example, alias/ExampleAlias.
  ///
  /// *   Key ARN. For example, arn:aws:kms:us-east-1:012345678910:key/1234abcd-12ab-34cd-56ef-1234567890ab.
  ///
  /// *   Alias ARN. For example, arn:aws:kms:us-east-1:012345678910:alias/ExampleAlias.
  ///
  ///
  /// Amazon Web Services authenticates the KMS key asynchronously. Therefore, if you specify an ID, alias, or ARN that is not valid, the action can appear to complete, but eventually fails.
  ///
  /// Amazon EBS does not support asymmetric KMS keys.
  String? get kmsKeyId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifyEbsDefaultKmsKeyIdRequest getPayload() => this;
  @override
  List<Object?> get props => [
        kmsKeyId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyEbsDefaultKmsKeyIdRequest')
          ..add(
            'kmsKeyId',
            kmsKeyId,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class ModifyEbsDefaultKmsKeyIdRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyEbsDefaultKmsKeyIdRequest> {
  const ModifyEbsDefaultKmsKeyIdRequestEc2QuerySerializer()
      : super('ModifyEbsDefaultKmsKeyIdRequest');

  @override
  Iterable<Type> get types => const [
        ModifyEbsDefaultKmsKeyIdRequest,
        _$ModifyEbsDefaultKmsKeyIdRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyEbsDefaultKmsKeyIdRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyEbsDefaultKmsKeyIdRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'KmsKeyId':
          result.kmsKeyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyEbsDefaultKmsKeyIdRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyEbsDefaultKmsKeyIdRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyEbsDefaultKmsKeyIdRequest(:kmsKeyId, :dryRun) = object;
    if (kmsKeyId != null) {
      result$
        ..add(const _i1.XmlElementName('KmsKeyId'))
        ..add(serializers.serialize(
          kmsKeyId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
