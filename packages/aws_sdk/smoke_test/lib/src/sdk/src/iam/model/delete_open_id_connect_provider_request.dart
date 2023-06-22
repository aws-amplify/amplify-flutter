// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.delete_open_id_connect_provider_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_open_id_connect_provider_request.g.dart';

abstract class DeleteOpenIdConnectProviderRequest
    with
        _i1.HttpInput<DeleteOpenIdConnectProviderRequest>,
        _i2.AWSEquatable<DeleteOpenIdConnectProviderRequest>
    implements
        Built<DeleteOpenIdConnectProviderRequest,
            DeleteOpenIdConnectProviderRequestBuilder> {
  factory DeleteOpenIdConnectProviderRequest(
      {required String openIdConnectProviderArn}) {
    return _$DeleteOpenIdConnectProviderRequest._(
        openIdConnectProviderArn: openIdConnectProviderArn);
  }

  factory DeleteOpenIdConnectProviderRequest.build(
          [void Function(DeleteOpenIdConnectProviderRequestBuilder) updates]) =
      _$DeleteOpenIdConnectProviderRequest;

  const DeleteOpenIdConnectProviderRequest._();

  factory DeleteOpenIdConnectProviderRequest.fromRequest(
    DeleteOpenIdConnectProviderRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteOpenIdConnectProviderRequest>>
      serializers = [DeleteOpenIdConnectProviderRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteOpenIdConnectProviderRequestBuilder b) {}

  /// The Amazon Resource Name (ARN) of the IAM OpenID Connect provider resource object to delete. You can get a list of OpenID Connect provider resource ARNs by using the ListOpenIDConnectProviders operation.
  String get openIdConnectProviderArn;
  @override
  DeleteOpenIdConnectProviderRequest getPayload() => this;
  @override
  List<Object?> get props => [openIdConnectProviderArn];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteOpenIdConnectProviderRequest')
          ..add(
            'openIdConnectProviderArn',
            openIdConnectProviderArn,
          );
    return helper.toString();
  }
}

class DeleteOpenIdConnectProviderRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteOpenIdConnectProviderRequest> {
  const DeleteOpenIdConnectProviderRequestAwsQuerySerializer()
      : super('DeleteOpenIdConnectProviderRequest');

  @override
  Iterable<Type> get types => const [
        DeleteOpenIdConnectProviderRequest,
        _$DeleteOpenIdConnectProviderRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteOpenIdConnectProviderRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteOpenIdConnectProviderRequestBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteOpenIdConnectProviderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteOpenIdConnectProviderRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final DeleteOpenIdConnectProviderRequest(:openIdConnectProviderArn) =
        object;
    result$
      ..add(const _i1.XmlElementName('OpenIDConnectProviderArn'))
      ..add(serializers.serialize(
        openIdConnectProviderArn,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
