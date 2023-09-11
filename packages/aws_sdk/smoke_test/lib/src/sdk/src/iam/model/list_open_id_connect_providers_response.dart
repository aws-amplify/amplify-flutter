// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.list_open_id_connect_providers_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/open_id_connect_provider_list_entry.dart';

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
      {List<OpenIdConnectProviderListEntry>? openIdConnectProviderList}) {
    return _$ListOpenIdConnectProvidersResponse._(
        openIdConnectProviderList: openIdConnectProviderList == null
            ? null
            : _i2.BuiltList(openIdConnectProviderList));
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

  static const List<_i3.SmithySerializer<ListOpenIdConnectProvidersResponse>>
      serializers = [ListOpenIdConnectProvidersResponseAwsQuerySerializer()];

  /// The list of IAM OIDC provider resource objects defined in the Amazon Web Services account.
  _i2.BuiltList<OpenIdConnectProviderListEntry>? get openIdConnectProviderList;
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
    extends _i3.StructuredSmithySerializer<ListOpenIdConnectProvidersResponse> {
  const ListOpenIdConnectProvidersResponseAwsQuerySerializer()
      : super('ListOpenIdConnectProvidersResponse');

  @override
  Iterable<Type> get types => const [
        ListOpenIdConnectProvidersResponse,
        _$ListOpenIdConnectProvidersResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
        case 'OpenIDConnectProviderList':
          result.openIdConnectProviderList.replace(
              (const _i3.XmlBuiltListSerializer(
                      indexer: _i3.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(OpenIdConnectProviderListEntry)],
            ),
          ) as _i2.BuiltList<OpenIdConnectProviderListEntry>));
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
      const _i3.XmlElementName(
        'ListOpenIdConnectProvidersResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ListOpenIdConnectProvidersResponse(:openIdConnectProviderList) =
        object;
    if (openIdConnectProviderList != null) {
      result$
        ..add(const _i3.XmlElementName('OpenIDConnectProviderList'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          openIdConnectProviderList,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(OpenIdConnectProviderListEntry)],
          ),
        ));
    }
    return result$;
  }
}
