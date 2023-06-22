// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.list_open_id_connect_providers_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/open_id_connect_provider_list_entry.dart'
    as _i2;

part 'list_open_id_connect_providers_response.g.dart';

/// Contains the response to a successful ListOpenIDConnectProviders request.
abstract class ListOpenIdConnectProvidersResponse
    with
        _i1.AWSEquatable<ListOpenIdConnectProvidersResponse>
    implements
        Built<ListOpenIdConnectProvidersResponse,
            ListOpenIdConnectProvidersResponseBuilder> {
  /// Contains the response to a successful ListOpenIDConnectProviders request.
  factory ListOpenIdConnectProvidersResponse(
      {List<_i2.OpenIdConnectProviderListEntry>? openIdConnectProviderList}) {
    return _$ListOpenIdConnectProvidersResponse._(
        openIdConnectProviderList: openIdConnectProviderList == null
            ? null
            : _i3.BuiltList(openIdConnectProviderList));
  }

  /// Contains the response to a successful ListOpenIDConnectProviders request.
  factory ListOpenIdConnectProvidersResponse.build(
          [void Function(ListOpenIdConnectProvidersResponseBuilder) updates]) =
      _$ListOpenIdConnectProvidersResponse;

  const ListOpenIdConnectProvidersResponse._();

  /// Constructs a [ListOpenIdConnectProvidersResponse] from a [payload] and [response].
  factory ListOpenIdConnectProvidersResponse.fromResponse(
    ListOpenIdConnectProvidersResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<ListOpenIdConnectProvidersResponse>>
      serializers = [ListOpenIdConnectProvidersResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListOpenIdConnectProvidersResponseBuilder b) {}

  /// The list of IAM OIDC provider resource objects defined in the Amazon Web Services account.
  _i3.BuiltList<_i2.OpenIdConnectProviderListEntry>?
      get openIdConnectProviderList;
  @override
  List<Object?> get props => [openIdConnectProviderList];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListOpenIdConnectProvidersResponse')
          ..add(
            'openIdConnectProviderList',
            openIdConnectProviderList,
          );
    return helper.toString();
  }
}

class ListOpenIdConnectProvidersResponseAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<ListOpenIdConnectProvidersResponse> {
  const ListOpenIdConnectProvidersResponseAwsQuerySerializer()
      : super('ListOpenIdConnectProvidersResponse');

  @override
  Iterable<Type> get types => const [
        ListOpenIdConnectProvidersResponse,
        _$ListOpenIdConnectProvidersResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListOpenIdConnectProvidersResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListOpenIdConnectProvidersResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'OpenIDConnectProviderList':
          result.openIdConnectProviderList.replace(
              (const _i4.XmlBuiltListSerializer(
                      indexer: _i4.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.OpenIdConnectProviderListEntry)],
            ),
          ) as _i3.BuiltList<_i2.OpenIdConnectProviderListEntry>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListOpenIdConnectProvidersResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'ListOpenIdConnectProvidersResponseResponse',
        _i4.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ListOpenIdConnectProvidersResponse(:openIdConnectProviderList) =
        object;
    if (openIdConnectProviderList != null) {
      result$
        ..add(const _i4.XmlElementName('OpenIDConnectProviderList'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          openIdConnectProviderList,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.OpenIdConnectProviderListEntry)],
          ),
        ));
    }
    return result$;
  }
}
