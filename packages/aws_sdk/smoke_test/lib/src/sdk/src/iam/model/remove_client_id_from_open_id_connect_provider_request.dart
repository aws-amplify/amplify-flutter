// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.remove_client_id_from_open_id_connect_provider_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'remove_client_id_from_open_id_connect_provider_request.g.dart';

abstract class RemoveClientIdFromOpenIdConnectProviderRequest
    with
        _i1.HttpInput<RemoveClientIdFromOpenIdConnectProviderRequest>,
        _i2.AWSEquatable<RemoveClientIdFromOpenIdConnectProviderRequest>
    implements
        Built<RemoveClientIdFromOpenIdConnectProviderRequest,
            RemoveClientIdFromOpenIdConnectProviderRequestBuilder> {
  factory RemoveClientIdFromOpenIdConnectProviderRequest({
    required String openIdConnectProviderArn,
    required String clientId,
  }) {
    return _$RemoveClientIdFromOpenIdConnectProviderRequest._(
      openIdConnectProviderArn: openIdConnectProviderArn,
      clientId: clientId,
    );
  }

  factory RemoveClientIdFromOpenIdConnectProviderRequest.build(
      [void Function(RemoveClientIdFromOpenIdConnectProviderRequestBuilder)
          updates]) = _$RemoveClientIdFromOpenIdConnectProviderRequest;

  const RemoveClientIdFromOpenIdConnectProviderRequest._();

  factory RemoveClientIdFromOpenIdConnectProviderRequest.fromRequest(
    RemoveClientIdFromOpenIdConnectProviderRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<RemoveClientIdFromOpenIdConnectProviderRequest>>
      serializers = [
    RemoveClientIdFromOpenIdConnectProviderRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RemoveClientIdFromOpenIdConnectProviderRequestBuilder b) {}

  /// The Amazon Resource Name (ARN) of the IAM OIDC provider resource to remove the client ID from. You can get a list of OIDC provider ARNs by using the ListOpenIDConnectProviders operation.
  ///
  /// For more information about ARNs, see [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String get openIdConnectProviderArn;

  /// The client ID (also known as audience) to remove from the IAM OIDC provider resource. For more information about client IDs, see CreateOpenIDConnectProvider.
  String get clientId;
  @override
  RemoveClientIdFromOpenIdConnectProviderRequest getPayload() => this;
  @override
  List<Object?> get props => [
        openIdConnectProviderArn,
        clientId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'RemoveClientIdFromOpenIdConnectProviderRequest')
      ..add(
        'openIdConnectProviderArn',
        openIdConnectProviderArn,
      )
      ..add(
        'clientId',
        clientId,
      );
    return helper.toString();
  }
}

class RemoveClientIdFromOpenIdConnectProviderRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<
        RemoveClientIdFromOpenIdConnectProviderRequest> {
  const RemoveClientIdFromOpenIdConnectProviderRequestAwsQuerySerializer()
      : super('RemoveClientIdFromOpenIdConnectProviderRequest');

  @override
  Iterable<Type> get types => const [
        RemoveClientIdFromOpenIdConnectProviderRequest,
        _$RemoveClientIdFromOpenIdConnectProviderRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  RemoveClientIdFromOpenIdConnectProviderRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RemoveClientIdFromOpenIdConnectProviderRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'OpenIDConnectProviderArn':
          result.openIdConnectProviderArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ClientID':
          result.clientId = (serializers.deserialize(
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
    RemoveClientIdFromOpenIdConnectProviderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'RemoveClientIdFromOpenIdConnectProviderRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final RemoveClientIdFromOpenIdConnectProviderRequest(
      :openIdConnectProviderArn,
      :clientId
    ) = object;
    result$
      ..add(const _i1.XmlElementName('OpenIDConnectProviderArn'))
      ..add(serializers.serialize(
        openIdConnectProviderArn,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('ClientID'))
      ..add(serializers.serialize(
        clientId,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
