// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.add_client_id_to_open_id_connect_provider_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'add_client_id_to_open_id_connect_provider_request.g.dart';

abstract class AddClientIdToOpenIdConnectProviderRequest
    with
        _i1.HttpInput<AddClientIdToOpenIdConnectProviderRequest>,
        _i2.AWSEquatable<AddClientIdToOpenIdConnectProviderRequest>
    implements
        Built<AddClientIdToOpenIdConnectProviderRequest,
            AddClientIdToOpenIdConnectProviderRequestBuilder> {
  factory AddClientIdToOpenIdConnectProviderRequest({
    required String openIdConnectProviderArn,
    required String clientId,
  }) {
    return _$AddClientIdToOpenIdConnectProviderRequest._(
      openIdConnectProviderArn: openIdConnectProviderArn,
      clientId: clientId,
    );
  }

  factory AddClientIdToOpenIdConnectProviderRequest.build(
      [void Function(AddClientIdToOpenIdConnectProviderRequestBuilder)
          updates]) = _$AddClientIdToOpenIdConnectProviderRequest;

  const AddClientIdToOpenIdConnectProviderRequest._();

  factory AddClientIdToOpenIdConnectProviderRequest.fromRequest(
    AddClientIdToOpenIdConnectProviderRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<AddClientIdToOpenIdConnectProviderRequest>>
      serializers = [
    AddClientIdToOpenIdConnectProviderRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AddClientIdToOpenIdConnectProviderRequestBuilder b) {}

  /// The Amazon Resource Name (ARN) of the IAM OpenID Connect (OIDC) provider resource to add the client ID to. You can get a list of OIDC provider ARNs by using the ListOpenIDConnectProviders operation.
  String get openIdConnectProviderArn;

  /// The client ID (also known as audience) to add to the IAM OpenID Connect provider resource.
  String get clientId;
  @override
  AddClientIdToOpenIdConnectProviderRequest getPayload() => this;
  @override
  List<Object?> get props => [
        openIdConnectProviderArn,
        clientId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AddClientIdToOpenIdConnectProviderRequest')
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

class AddClientIdToOpenIdConnectProviderRequestAwsQuerySerializer extends _i1
    .StructuredSmithySerializer<AddClientIdToOpenIdConnectProviderRequest> {
  const AddClientIdToOpenIdConnectProviderRequestAwsQuerySerializer()
      : super('AddClientIdToOpenIdConnectProviderRequest');

  @override
  Iterable<Type> get types => const [
        AddClientIdToOpenIdConnectProviderRequest,
        _$AddClientIdToOpenIdConnectProviderRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  AddClientIdToOpenIdConnectProviderRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddClientIdToOpenIdConnectProviderRequestBuilder();
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
    AddClientIdToOpenIdConnectProviderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AddClientIdToOpenIdConnectProviderRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final AddClientIdToOpenIdConnectProviderRequest(
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
