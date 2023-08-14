// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.reset_ebs_default_kms_key_id_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'reset_ebs_default_kms_key_id_request.g.dart';

abstract class ResetEbsDefaultKmsKeyIdRequest
    with
        _i1.HttpInput<ResetEbsDefaultKmsKeyIdRequest>,
        _i2.AWSEquatable<ResetEbsDefaultKmsKeyIdRequest>
    implements
        Built<ResetEbsDefaultKmsKeyIdRequest,
            ResetEbsDefaultKmsKeyIdRequestBuilder> {
  factory ResetEbsDefaultKmsKeyIdRequest({bool? dryRun}) {
    dryRun ??= false;
    return _$ResetEbsDefaultKmsKeyIdRequest._(dryRun: dryRun);
  }

  factory ResetEbsDefaultKmsKeyIdRequest.build(
          [void Function(ResetEbsDefaultKmsKeyIdRequestBuilder) updates]) =
      _$ResetEbsDefaultKmsKeyIdRequest;

  const ResetEbsDefaultKmsKeyIdRequest._();

  factory ResetEbsDefaultKmsKeyIdRequest.fromRequest(
    ResetEbsDefaultKmsKeyIdRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ResetEbsDefaultKmsKeyIdRequest>>
      serializers = [ResetEbsDefaultKmsKeyIdRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResetEbsDefaultKmsKeyIdRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ResetEbsDefaultKmsKeyIdRequest getPayload() => this;
  @override
  List<Object?> get props => [dryRun];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResetEbsDefaultKmsKeyIdRequest')
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class ResetEbsDefaultKmsKeyIdRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ResetEbsDefaultKmsKeyIdRequest> {
  const ResetEbsDefaultKmsKeyIdRequestEc2QuerySerializer()
      : super('ResetEbsDefaultKmsKeyIdRequest');

  @override
  Iterable<Type> get types => const [
        ResetEbsDefaultKmsKeyIdRequest,
        _$ResetEbsDefaultKmsKeyIdRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ResetEbsDefaultKmsKeyIdRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResetEbsDefaultKmsKeyIdRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
    ResetEbsDefaultKmsKeyIdRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ResetEbsDefaultKmsKeyIdRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ResetEbsDefaultKmsKeyIdRequest(:dryRun) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
