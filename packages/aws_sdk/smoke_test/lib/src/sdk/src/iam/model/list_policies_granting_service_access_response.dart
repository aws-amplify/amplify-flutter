// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.list_policies_granting_service_access_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/list_policies_granting_service_access_entry.dart'
    as _i2;

part 'list_policies_granting_service_access_response.g.dart';

abstract class ListPoliciesGrantingServiceAccessResponse
    with
        _i1.AWSEquatable<ListPoliciesGrantingServiceAccessResponse>
    implements
        Built<ListPoliciesGrantingServiceAccessResponse,
            ListPoliciesGrantingServiceAccessResponseBuilder> {
  factory ListPoliciesGrantingServiceAccessResponse({
    required List<_i2.ListPoliciesGrantingServiceAccessEntry>
        policiesGrantingServiceAccess,
    bool? isTruncated,
    String? marker,
  }) {
    return _$ListPoliciesGrantingServiceAccessResponse._(
      policiesGrantingServiceAccess:
          _i3.BuiltList(policiesGrantingServiceAccess),
      isTruncated: isTruncated,
      marker: marker,
    );
  }

  factory ListPoliciesGrantingServiceAccessResponse.build(
      [void Function(ListPoliciesGrantingServiceAccessResponseBuilder)
          updates]) = _$ListPoliciesGrantingServiceAccessResponse;

  const ListPoliciesGrantingServiceAccessResponse._();

  /// Constructs a [ListPoliciesGrantingServiceAccessResponse] from a [payload] and [response].
  factory ListPoliciesGrantingServiceAccessResponse.fromResponse(
    ListPoliciesGrantingServiceAccessResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    ListPoliciesGrantingServiceAccessResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListPoliciesGrantingServiceAccessResponseBuilder b) {}

  /// A `ListPoliciesGrantingServiceAccess` object that contains details about the permissions policies attached to the specified identity (user, group, or role).
  _i3.BuiltList<_i2.ListPoliciesGrantingServiceAccessEntry>
      get policiesGrantingServiceAccess;

  /// A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the `Marker` request parameter to retrieve more items. We recommend that you check `IsTruncated` after every call to ensure that you receive all your results.
  bool? get isTruncated;

  /// When `IsTruncated` is `true`, this element is present and contains the value to use for the `Marker` parameter in a subsequent pagination request.
  String? get marker;
  @override
  List<Object?> get props => [
        policiesGrantingServiceAccess,
        isTruncated,
        marker,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ListPoliciesGrantingServiceAccessResponse');
    helper.add(
      'policiesGrantingServiceAccess',
      policiesGrantingServiceAccess,
    );
    helper.add(
      'isTruncated',
      isTruncated,
    );
    helper.add(
      'marker',
      marker,
    );
    return helper.toString();
  }
}

class ListPoliciesGrantingServiceAccessResponseAwsQuerySerializer extends _i4
    .StructuredSmithySerializer<ListPoliciesGrantingServiceAccessResponse> {
  const ListPoliciesGrantingServiceAccessResponseAwsQuerySerializer()
      : super('ListPoliciesGrantingServiceAccessResponse');

  @override
  Iterable<Type> get types => const [
        ListPoliciesGrantingServiceAccessResponse,
        _$ListPoliciesGrantingServiceAccessResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListPoliciesGrantingServiceAccessResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListPoliciesGrantingServiceAccessResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'PoliciesGrantingServiceAccess':
          result.policiesGrantingServiceAccess.replace(
              (const _i4.XmlBuiltListSerializer(
                      indexer: _i4.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.ListPoliciesGrantingServiceAccessEntry)],
            ),
          ) as _i3.BuiltList<_i2.ListPoliciesGrantingServiceAccessEntry>));
          break;
        case 'IsTruncated':
          if (value != null) {
            result.isTruncated = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'Marker':
          if (value != null) {
            result.marker = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as ListPoliciesGrantingServiceAccessResponse);
    final result = <Object?>[
      const _i4.XmlElementName(
        'ListPoliciesGrantingServiceAccessResponseResponse',
        _i4.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i4.XmlElementName('PoliciesGrantingServiceAccess'))
      ..add(
          const _i4.XmlBuiltListSerializer(indexer: _i4.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        payload.policiesGrantingServiceAccess,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(_i2.ListPoliciesGrantingServiceAccessEntry)],
        ),
      ));
    if (payload.isTruncated != null) {
      result
        ..add(const _i4.XmlElementName('IsTruncated'))
        ..add(serializers.serialize(
          payload.isTruncated!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.marker != null) {
      result
        ..add(const _i4.XmlElementName('Marker'))
        ..add(serializers.serialize(
          payload.marker!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
