// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_verified_access_group_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'modify_verified_access_group_request.g.dart';

abstract class ModifyVerifiedAccessGroupRequest
    with
        _i1.HttpInput<ModifyVerifiedAccessGroupRequest>,
        _i2.AWSEquatable<ModifyVerifiedAccessGroupRequest>
    implements
        Built<ModifyVerifiedAccessGroupRequest,
            ModifyVerifiedAccessGroupRequestBuilder> {
  factory ModifyVerifiedAccessGroupRequest({
    String? verifiedAccessGroupId,
    String? verifiedAccessInstanceId,
    String? description,
    String? clientToken,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ModifyVerifiedAccessGroupRequest._(
      verifiedAccessGroupId: verifiedAccessGroupId,
      verifiedAccessInstanceId: verifiedAccessInstanceId,
      description: description,
      clientToken: clientToken,
      dryRun: dryRun,
    );
  }

  factory ModifyVerifiedAccessGroupRequest.build(
          [void Function(ModifyVerifiedAccessGroupRequestBuilder) updates]) =
      _$ModifyVerifiedAccessGroupRequest;

  const ModifyVerifiedAccessGroupRequest._();

  factory ModifyVerifiedAccessGroupRequest.fromRequest(
    ModifyVerifiedAccessGroupRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyVerifiedAccessGroupRequest>>
      serializers = [ModifyVerifiedAccessGroupRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVerifiedAccessGroupRequestBuilder b) {
    b
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true)
      ..dryRun = false;
  }

  /// The ID of the Verified Access group.
  String? get verifiedAccessGroupId;

  /// The ID of the Verified Access instance.
  String? get verifiedAccessInstanceId;

  /// A description for the Verified Access group.
  String? get description;

  /// A unique, case-sensitive token that you provide to ensure idempotency of your modification request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifyVerifiedAccessGroupRequest getPayload() => this;
  @override
  List<Object?> get props => [
        verifiedAccessGroupId,
        verifiedAccessInstanceId,
        description,
        clientToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyVerifiedAccessGroupRequest')
          ..add(
            'verifiedAccessGroupId',
            verifiedAccessGroupId,
          )
          ..add(
            'verifiedAccessInstanceId',
            verifiedAccessInstanceId,
          )
          ..add(
            'description',
            description,
          )
          ..add(
            'clientToken',
            clientToken,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class ModifyVerifiedAccessGroupRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyVerifiedAccessGroupRequest> {
  const ModifyVerifiedAccessGroupRequestEc2QuerySerializer()
      : super('ModifyVerifiedAccessGroupRequest');

  @override
  Iterable<Type> get types => const [
        ModifyVerifiedAccessGroupRequest,
        _$ModifyVerifiedAccessGroupRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVerifiedAccessGroupRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVerifiedAccessGroupRequestBuilder();
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
        case 'VerifiedAccessInstanceId':
          result.verifiedAccessInstanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
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
    ModifyVerifiedAccessGroupRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyVerifiedAccessGroupRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVerifiedAccessGroupRequest(
      :verifiedAccessGroupId,
      :verifiedAccessInstanceId,
      :description,
      :clientToken,
      :dryRun
    ) = object;
    if (verifiedAccessGroupId != null) {
      result$
        ..add(const _i1.XmlElementName('VerifiedAccessGroupId'))
        ..add(serializers.serialize(
          verifiedAccessGroupId,
          specifiedType: const FullType(String),
        ));
    }
    if (verifiedAccessInstanceId != null) {
      result$
        ..add(const _i1.XmlElementName('VerifiedAccessInstanceId'))
        ..add(serializers.serialize(
          verifiedAccessInstanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
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
