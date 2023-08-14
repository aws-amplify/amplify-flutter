// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.detach_verified_access_trust_provider_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'detach_verified_access_trust_provider_request.g.dart';

abstract class DetachVerifiedAccessTrustProviderRequest
    with
        _i1.HttpInput<DetachVerifiedAccessTrustProviderRequest>,
        _i2.AWSEquatable<DetachVerifiedAccessTrustProviderRequest>
    implements
        Built<DetachVerifiedAccessTrustProviderRequest,
            DetachVerifiedAccessTrustProviderRequestBuilder> {
  factory DetachVerifiedAccessTrustProviderRequest({
    String? verifiedAccessInstanceId,
    String? verifiedAccessTrustProviderId,
    String? clientToken,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DetachVerifiedAccessTrustProviderRequest._(
      verifiedAccessInstanceId: verifiedAccessInstanceId,
      verifiedAccessTrustProviderId: verifiedAccessTrustProviderId,
      clientToken: clientToken,
      dryRun: dryRun,
    );
  }

  factory DetachVerifiedAccessTrustProviderRequest.build(
      [void Function(DetachVerifiedAccessTrustProviderRequestBuilder)
          updates]) = _$DetachVerifiedAccessTrustProviderRequest;

  const DetachVerifiedAccessTrustProviderRequest._();

  factory DetachVerifiedAccessTrustProviderRequest.fromRequest(
    DetachVerifiedAccessTrustProviderRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DetachVerifiedAccessTrustProviderRequest>>
      serializers = [
    DetachVerifiedAccessTrustProviderRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DetachVerifiedAccessTrustProviderRequestBuilder b) {
    b
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true)
      ..dryRun = false;
  }

  /// The ID of the Verified Access instance.
  String? get verifiedAccessInstanceId;

  /// The ID of the Verified Access trust provider.
  String? get verifiedAccessTrustProviderId;

  /// A unique, case-sensitive token that you provide to ensure idempotency of your modification request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DetachVerifiedAccessTrustProviderRequest getPayload() => this;
  @override
  List<Object?> get props => [
        verifiedAccessInstanceId,
        verifiedAccessTrustProviderId,
        clientToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DetachVerifiedAccessTrustProviderRequest')
          ..add(
            'verifiedAccessInstanceId',
            verifiedAccessInstanceId,
          )
          ..add(
            'verifiedAccessTrustProviderId',
            verifiedAccessTrustProviderId,
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

class DetachVerifiedAccessTrustProviderRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DetachVerifiedAccessTrustProviderRequest> {
  const DetachVerifiedAccessTrustProviderRequestEc2QuerySerializer()
      : super('DetachVerifiedAccessTrustProviderRequest');

  @override
  Iterable<Type> get types => const [
        DetachVerifiedAccessTrustProviderRequest,
        _$DetachVerifiedAccessTrustProviderRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DetachVerifiedAccessTrustProviderRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DetachVerifiedAccessTrustProviderRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'VerifiedAccessInstanceId':
          result.verifiedAccessInstanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VerifiedAccessTrustProviderId':
          result.verifiedAccessTrustProviderId = (serializers.deserialize(
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
    DetachVerifiedAccessTrustProviderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DetachVerifiedAccessTrustProviderRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DetachVerifiedAccessTrustProviderRequest(
      :verifiedAccessInstanceId,
      :verifiedAccessTrustProviderId,
      :clientToken,
      :dryRun
    ) = object;
    if (verifiedAccessInstanceId != null) {
      result$
        ..add(const _i1.XmlElementName('VerifiedAccessInstanceId'))
        ..add(serializers.serialize(
          verifiedAccessInstanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (verifiedAccessTrustProviderId != null) {
      result$
        ..add(const _i1.XmlElementName('VerifiedAccessTrustProviderId'))
        ..add(serializers.serialize(
          verifiedAccessTrustProviderId,
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
