// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.get_open_id_connect_provider_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart';

part 'get_open_id_connect_provider_response.g.dart';

/// Contains the response to a successful GetOpenIDConnectProvider request.
abstract class GetOpenIdConnectProviderResponse
    with
        _i1.AWSEquatable<GetOpenIdConnectProviderResponse>
    implements
        Built<GetOpenIdConnectProviderResponse,
            GetOpenIdConnectProviderResponseBuilder> {
  /// Contains the response to a successful GetOpenIDConnectProvider request.
  factory GetOpenIdConnectProviderResponse({
    String? url,
    List<String>? clientIdList,
    List<String>? thumbprintList,
    DateTime? createDate,
    List<Tag>? tags,
  }) {
    return _$GetOpenIdConnectProviderResponse._(
      url: url,
      clientIdList: clientIdList == null ? null : _i2.BuiltList(clientIdList),
      thumbprintList:
          thumbprintList == null ? null : _i2.BuiltList(thumbprintList),
      createDate: createDate,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Contains the response to a successful GetOpenIDConnectProvider request.
  factory GetOpenIdConnectProviderResponse.build(
          [void Function(GetOpenIdConnectProviderResponseBuilder) updates]) =
      _$GetOpenIdConnectProviderResponse;

  const GetOpenIdConnectProviderResponse._();

  /// Constructs a [GetOpenIdConnectProviderResponse] from a [payload] and [response].
  factory GetOpenIdConnectProviderResponse.fromResponse(
    GetOpenIdConnectProviderResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetOpenIdConnectProviderResponse>>
      serializers = [GetOpenIdConnectProviderResponseAwsQuerySerializer()];

  /// The URL that the IAM OIDC provider resource object is associated with. For more information, see CreateOpenIDConnectProvider.
  String? get url;

  /// A list of client IDs (also known as audiences) that are associated with the specified IAM OIDC provider resource object. For more information, see CreateOpenIDConnectProvider.
  _i2.BuiltList<String>? get clientIdList;

  /// A list of certificate thumbprints that are associated with the specified IAM OIDC provider resource object. For more information, see CreateOpenIDConnectProvider.
  _i2.BuiltList<String>? get thumbprintList;

  /// The date and time when the IAM OIDC provider resource object was created in the Amazon Web Services account.
  DateTime? get createDate;

  /// A list of tags that are attached to the specified IAM OIDC provider. The returned list of tags is sorted by tag key. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        url,
        clientIdList,
        thumbprintList,
        createDate,
        tags,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetOpenIdConnectProviderResponse')
          ..add(
            'url',
            url,
          )
          ..add(
            'clientIdList',
            clientIdList,
          )
          ..add(
            'thumbprintList',
            thumbprintList,
          )
          ..add(
            'createDate',
            createDate,
          )
          ..add(
            'tags',
            tags,
          );
    return helper.toString();
  }
}

class GetOpenIdConnectProviderResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<GetOpenIdConnectProviderResponse> {
  const GetOpenIdConnectProviderResponseAwsQuerySerializer()
      : super('GetOpenIdConnectProviderResponse');

  @override
  Iterable<Type> get types => const [
        GetOpenIdConnectProviderResponse,
        _$GetOpenIdConnectProviderResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetOpenIdConnectProviderResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetOpenIdConnectProviderResponseBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Url':
          result.url = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ClientIDList':
          result.clientIdList.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'ThumbprintList':
          result.thumbprintList.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'CreateDate':
          result.createDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'Tags':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetOpenIdConnectProviderResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetOpenIdConnectProviderResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetOpenIdConnectProviderResponse(
      :url,
      :clientIdList,
      :thumbprintList,
      :createDate,
      :tags
    ) = object;
    if (url != null) {
      result$
        ..add(const _i3.XmlElementName('Url'))
        ..add(serializers.serialize(
          url,
          specifiedType: const FullType(String),
        ));
    }
    if (clientIdList != null) {
      result$
        ..add(const _i3.XmlElementName('ClientIDList'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          clientIdList,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (thumbprintList != null) {
      result$
        ..add(const _i3.XmlElementName('ThumbprintList'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          thumbprintList,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (createDate != null) {
      result$
        ..add(const _i3.XmlElementName('CreateDate'))
        ..add(serializers.serialize(
          createDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('Tags'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          tags,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
