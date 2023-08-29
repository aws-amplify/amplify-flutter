// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_verified_access_group_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_verified_access_group_policy_request.g.dart';

abstract class GetVerifiedAccessGroupPolicyRequest
    with
        _i1.HttpInput<GetVerifiedAccessGroupPolicyRequest>,
        _i2.AWSEquatable<GetVerifiedAccessGroupPolicyRequest>
    implements
        Built<GetVerifiedAccessGroupPolicyRequest,
            GetVerifiedAccessGroupPolicyRequestBuilder> {
  factory GetVerifiedAccessGroupPolicyRequest({
    String? verifiedAccessGroupId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$GetVerifiedAccessGroupPolicyRequest._(
      verifiedAccessGroupId: verifiedAccessGroupId,
      dryRun: dryRun,
    );
  }

  factory GetVerifiedAccessGroupPolicyRequest.build(
          [void Function(GetVerifiedAccessGroupPolicyRequestBuilder) updates]) =
      _$GetVerifiedAccessGroupPolicyRequest;

  const GetVerifiedAccessGroupPolicyRequest._();

  factory GetVerifiedAccessGroupPolicyRequest.fromRequest(
    GetVerifiedAccessGroupPolicyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetVerifiedAccessGroupPolicyRequest>>
      serializers = [GetVerifiedAccessGroupPolicyRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetVerifiedAccessGroupPolicyRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Verified Access group.
  String? get verifiedAccessGroupId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  GetVerifiedAccessGroupPolicyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        verifiedAccessGroupId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetVerifiedAccessGroupPolicyRequest')
          ..add(
            'verifiedAccessGroupId',
            verifiedAccessGroupId,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class GetVerifiedAccessGroupPolicyRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<GetVerifiedAccessGroupPolicyRequest> {
  const GetVerifiedAccessGroupPolicyRequestEc2QuerySerializer()
      : super('GetVerifiedAccessGroupPolicyRequest');

  @override
  Iterable<Type> get types => const [
        GetVerifiedAccessGroupPolicyRequest,
        _$GetVerifiedAccessGroupPolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetVerifiedAccessGroupPolicyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetVerifiedAccessGroupPolicyRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'VerifiedAccessGroupId':
          result.verifiedAccessGroupId = (serializers.deserialize(
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
    GetVerifiedAccessGroupPolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetVerifiedAccessGroupPolicyRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetVerifiedAccessGroupPolicyRequest(:verifiedAccessGroupId, :dryRun) =
        object;
    if (verifiedAccessGroupId != null) {
      result$
        ..add(const _i1.XmlElementName('VerifiedAccessGroupId'))
        ..add(serializers.serialize(
          verifiedAccessGroupId,
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
