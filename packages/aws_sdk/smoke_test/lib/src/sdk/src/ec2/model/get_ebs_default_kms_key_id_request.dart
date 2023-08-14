// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_ebs_default_kms_key_id_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_ebs_default_kms_key_id_request.g.dart';

abstract class GetEbsDefaultKmsKeyIdRequest
    with
        _i1.HttpInput<GetEbsDefaultKmsKeyIdRequest>,
        _i2.AWSEquatable<GetEbsDefaultKmsKeyIdRequest>
    implements
        Built<GetEbsDefaultKmsKeyIdRequest,
            GetEbsDefaultKmsKeyIdRequestBuilder> {
  factory GetEbsDefaultKmsKeyIdRequest({bool? dryRun}) {
    dryRun ??= false;
    return _$GetEbsDefaultKmsKeyIdRequest._(dryRun: dryRun);
  }

  factory GetEbsDefaultKmsKeyIdRequest.build(
          [void Function(GetEbsDefaultKmsKeyIdRequestBuilder) updates]) =
      _$GetEbsDefaultKmsKeyIdRequest;

  const GetEbsDefaultKmsKeyIdRequest._();

  factory GetEbsDefaultKmsKeyIdRequest.fromRequest(
    GetEbsDefaultKmsKeyIdRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetEbsDefaultKmsKeyIdRequest>>
      serializers = [GetEbsDefaultKmsKeyIdRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetEbsDefaultKmsKeyIdRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  GetEbsDefaultKmsKeyIdRequest getPayload() => this;
  @override
  List<Object?> get props => [dryRun];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetEbsDefaultKmsKeyIdRequest')
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class GetEbsDefaultKmsKeyIdRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<GetEbsDefaultKmsKeyIdRequest> {
  const GetEbsDefaultKmsKeyIdRequestEc2QuerySerializer()
      : super('GetEbsDefaultKmsKeyIdRequest');

  @override
  Iterable<Type> get types => const [
        GetEbsDefaultKmsKeyIdRequest,
        _$GetEbsDefaultKmsKeyIdRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetEbsDefaultKmsKeyIdRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetEbsDefaultKmsKeyIdRequestBuilder();
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
    GetEbsDefaultKmsKeyIdRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetEbsDefaultKmsKeyIdRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetEbsDefaultKmsKeyIdRequest(:dryRun) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
