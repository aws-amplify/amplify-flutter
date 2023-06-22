// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.list_saml_providers_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/saml_provider_list_entry.dart'
    as _i2;

part 'list_saml_providers_response.g.dart';

/// Contains the response to a successful ListSAMLProviders request.
abstract class ListSamlProvidersResponse
    with _i1.AWSEquatable<ListSamlProvidersResponse>
    implements
        Built<ListSamlProvidersResponse, ListSamlProvidersResponseBuilder> {
  /// Contains the response to a successful ListSAMLProviders request.
  factory ListSamlProvidersResponse(
      {List<_i2.SamlProviderListEntry>? samlProviderList}) {
    return _$ListSamlProvidersResponse._(
        samlProviderList:
            samlProviderList == null ? null : _i3.BuiltList(samlProviderList));
  }

  /// Contains the response to a successful ListSAMLProviders request.
  factory ListSamlProvidersResponse.build(
          [void Function(ListSamlProvidersResponseBuilder) updates]) =
      _$ListSamlProvidersResponse;

  const ListSamlProvidersResponse._();

  /// Constructs a [ListSamlProvidersResponse] from a [payload] and [response].
  factory ListSamlProvidersResponse.fromResponse(
    ListSamlProvidersResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<ListSamlProvidersResponse>>
      serializers = [ListSamlProvidersResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListSamlProvidersResponseBuilder b) {}

  /// The list of SAML provider resource objects defined in IAM for this Amazon Web Services account.
  _i3.BuiltList<_i2.SamlProviderListEntry>? get samlProviderList;
  @override
  List<Object?> get props => [samlProviderList];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListSamlProvidersResponse')
      ..add(
        'samlProviderList',
        samlProviderList,
      );
    return helper.toString();
  }
}

class ListSamlProvidersResponseAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<ListSamlProvidersResponse> {
  const ListSamlProvidersResponseAwsQuerySerializer()
      : super('ListSamlProvidersResponse');

  @override
  Iterable<Type> get types => const [
        ListSamlProvidersResponse,
        _$ListSamlProvidersResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListSamlProvidersResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListSamlProvidersResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SAMLProviderList':
          result.samlProviderList.replace((const _i4.XmlBuiltListSerializer(
                  indexer: _i4.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.SamlProviderListEntry)],
            ),
          ) as _i3.BuiltList<_i2.SamlProviderListEntry>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListSamlProvidersResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'ListSamlProvidersResponseResponse',
        _i4.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ListSamlProvidersResponse(:samlProviderList) = object;
    if (samlProviderList != null) {
      result$
        ..add(const _i4.XmlElementName('SAMLProviderList'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          samlProviderList,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.SamlProviderListEntry)],
          ),
        ));
    }
    return result$;
  }
}
