// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_verified_access_trust_provider_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_verified_access_trust_provider_request.g.dart';

abstract class DeleteVerifiedAccessTrustProviderRequest
    with
        _i1.HttpInput<DeleteVerifiedAccessTrustProviderRequest>,
        _i2.AWSEquatable<DeleteVerifiedAccessTrustProviderRequest>
    implements
        Built<DeleteVerifiedAccessTrustProviderRequest,
            DeleteVerifiedAccessTrustProviderRequestBuilder> {
  factory DeleteVerifiedAccessTrustProviderRequest({
    String? verifiedAccessTrustProviderId,
    bool? dryRun,
    String? clientToken,
  }) {
    dryRun ??= false;
    return _$DeleteVerifiedAccessTrustProviderRequest._(
      verifiedAccessTrustProviderId: verifiedAccessTrustProviderId,
      dryRun: dryRun,
      clientToken: clientToken,
    );
  }

  factory DeleteVerifiedAccessTrustProviderRequest.build(
      [void Function(DeleteVerifiedAccessTrustProviderRequestBuilder)
          updates]) = _$DeleteVerifiedAccessTrustProviderRequest;

  const DeleteVerifiedAccessTrustProviderRequest._();

  factory DeleteVerifiedAccessTrustProviderRequest.fromRequest(
    DeleteVerifiedAccessTrustProviderRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DeleteVerifiedAccessTrustProviderRequest>>
      serializers = [
    DeleteVerifiedAccessTrustProviderRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteVerifiedAccessTrustProviderRequestBuilder b) {
    b
      ..dryRun = false
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true);
  }

  /// The ID of the Verified Access trust provider.
  String? get verifiedAccessTrustProviderId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// A unique, case-sensitive token that you provide to ensure idempotency of your modification request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;
  @override
  DeleteVerifiedAccessTrustProviderRequest getPayload() => this;
  @override
  List<Object?> get props => [
        verifiedAccessTrustProviderId,
        dryRun,
        clientToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteVerifiedAccessTrustProviderRequest')
          ..add(
            'verifiedAccessTrustProviderId',
            verifiedAccessTrustProviderId,
          )
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'clientToken',
            clientToken,
          );
    return helper.toString();
  }
}

class DeleteVerifiedAccessTrustProviderRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DeleteVerifiedAccessTrustProviderRequest> {
  const DeleteVerifiedAccessTrustProviderRequestEc2QuerySerializer()
      : super('DeleteVerifiedAccessTrustProviderRequest');

  @override
  Iterable<Type> get types => const [
        DeleteVerifiedAccessTrustProviderRequest,
        _$DeleteVerifiedAccessTrustProviderRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteVerifiedAccessTrustProviderRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteVerifiedAccessTrustProviderRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'VerifiedAccessTrustProviderId':
          result.verifiedAccessTrustProviderId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
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
    DeleteVerifiedAccessTrustProviderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteVerifiedAccessTrustProviderRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteVerifiedAccessTrustProviderRequest(
      :verifiedAccessTrustProviderId,
      :dryRun,
      :clientToken
    ) = object;
    if (verifiedAccessTrustProviderId != null) {
      result$
        ..add(const _i1.XmlElementName('VerifiedAccessTrustProviderId'))
        ..add(serializers.serialize(
          verifiedAccessTrustProviderId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
