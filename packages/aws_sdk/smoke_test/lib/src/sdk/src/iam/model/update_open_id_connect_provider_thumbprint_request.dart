// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.update_open_id_connect_provider_thumbprint_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'update_open_id_connect_provider_thumbprint_request.g.dart';

abstract class UpdateOpenIdConnectProviderThumbprintRequest
    with
        _i1.HttpInput<UpdateOpenIdConnectProviderThumbprintRequest>,
        _i2.AWSEquatable<UpdateOpenIdConnectProviderThumbprintRequest>
    implements
        Built<UpdateOpenIdConnectProviderThumbprintRequest,
            UpdateOpenIdConnectProviderThumbprintRequestBuilder> {
  factory UpdateOpenIdConnectProviderThumbprintRequest({
    required String openIdConnectProviderArn,
    required List<String> thumbprintList,
  }) {
    return _$UpdateOpenIdConnectProviderThumbprintRequest._(
      openIdConnectProviderArn: openIdConnectProviderArn,
      thumbprintList: _i3.BuiltList(thumbprintList),
    );
  }

  factory UpdateOpenIdConnectProviderThumbprintRequest.build(
      [void Function(UpdateOpenIdConnectProviderThumbprintRequestBuilder)
          updates]) = _$UpdateOpenIdConnectProviderThumbprintRequest;

  const UpdateOpenIdConnectProviderThumbprintRequest._();

  factory UpdateOpenIdConnectProviderThumbprintRequest.fromRequest(
    UpdateOpenIdConnectProviderThumbprintRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<UpdateOpenIdConnectProviderThumbprintRequest>>
      serializers = [
    UpdateOpenIdConnectProviderThumbprintRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateOpenIdConnectProviderThumbprintRequestBuilder b) {}

  /// The Amazon Resource Name (ARN) of the IAM OIDC provider resource object for which you want to update the thumbprint. You can get a list of OIDC provider ARNs by using the ListOpenIDConnectProviders operation.
  ///
  /// For more information about ARNs, see [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String get openIdConnectProviderArn;

  /// A list of certificate thumbprints that are associated with the specified IAM OpenID Connect provider. For more information, see CreateOpenIDConnectProvider.
  _i3.BuiltList<String> get thumbprintList;
  @override
  UpdateOpenIdConnectProviderThumbprintRequest getPayload() => this;
  @override
  List<Object?> get props => [
        openIdConnectProviderArn,
        thumbprintList,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'UpdateOpenIdConnectProviderThumbprintRequest')
      ..add(
        'openIdConnectProviderArn',
        openIdConnectProviderArn,
      )
      ..add(
        'thumbprintList',
        thumbprintList,
      );
    return helper.toString();
  }
}

class UpdateOpenIdConnectProviderThumbprintRequestAwsQuerySerializer extends _i1
    .StructuredSmithySerializer<UpdateOpenIdConnectProviderThumbprintRequest> {
  const UpdateOpenIdConnectProviderThumbprintRequestAwsQuerySerializer()
      : super('UpdateOpenIdConnectProviderThumbprintRequest');

  @override
  Iterable<Type> get types => const [
        UpdateOpenIdConnectProviderThumbprintRequest,
        _$UpdateOpenIdConnectProviderThumbprintRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UpdateOpenIdConnectProviderThumbprintRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateOpenIdConnectProviderThumbprintRequestBuilder();
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
        case 'ThumbprintList':
          result.thumbprintList.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateOpenIdConnectProviderThumbprintRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UpdateOpenIdConnectProviderThumbprintRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UpdateOpenIdConnectProviderThumbprintRequest(
      :openIdConnectProviderArn,
      :thumbprintList
    ) = object;
    result$
      ..add(const _i1.XmlElementName('OpenIDConnectProviderArn'))
      ..add(serializers.serialize(
        openIdConnectProviderArn,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('ThumbprintList'))
      ..add(
          const _i1.XmlBuiltListSerializer(indexer: _i1.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        thumbprintList,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ));
    return result$;
  }
}
