// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.list_user_policies_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'list_user_policies_response.g.dart';

/// Contains the response to a successful ListUserPolicies request.
abstract class ListUserPoliciesResponse
    with _i1.AWSEquatable<ListUserPoliciesResponse>
    implements
        Built<ListUserPoliciesResponse, ListUserPoliciesResponseBuilder> {
  /// Contains the response to a successful ListUserPolicies request.
  factory ListUserPoliciesResponse({
    required List<String> policyNames,
    bool? isTruncated,
    String? marker,
  }) {
    isTruncated ??= false;
    return _$ListUserPoliciesResponse._(
      policyNames: _i2.BuiltList(policyNames),
      isTruncated: isTruncated,
      marker: marker,
    );
  }

  /// Contains the response to a successful ListUserPolicies request.
  factory ListUserPoliciesResponse.build(
          [void Function(ListUserPoliciesResponseBuilder) updates]) =
      _$ListUserPoliciesResponse;

  const ListUserPoliciesResponse._();

  /// Constructs a [ListUserPoliciesResponse] from a [payload] and [response].
  factory ListUserPoliciesResponse.fromResponse(
    ListUserPoliciesResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ListUserPoliciesResponse>>
      serializers = [ListUserPoliciesResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListUserPoliciesResponseBuilder b) {
    b.isTruncated = false;
  }

  /// A list of policy names.
  _i2.BuiltList<String> get policyNames;

  /// A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the `Marker` request parameter to retrieve more items. Note that IAM might return fewer than the `MaxItems` number of results even when there are more results available. We recommend that you check `IsTruncated` after every call to ensure that you receive all your results.
  bool get isTruncated;

  /// When `IsTruncated` is `true`, this element is present and contains the value to use for the `Marker` parameter in a subsequent pagination request.
  String? get marker;
  @override
  List<Object?> get props => [
        policyNames,
        isTruncated,
        marker,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListUserPoliciesResponse')
      ..add(
        'policyNames',
        policyNames,
      )
      ..add(
        'isTruncated',
        isTruncated,
      )
      ..add(
        'marker',
        marker,
      );
    return helper.toString();
  }
}

class ListUserPoliciesResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<ListUserPoliciesResponse> {
  const ListUserPoliciesResponseAwsQuerySerializer()
      : super('ListUserPoliciesResponse');

  @override
  Iterable<Type> get types => const [
        ListUserPoliciesResponse,
        _$ListUserPoliciesResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListUserPoliciesResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListUserPoliciesResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PolicyNames':
          result.policyNames.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'IsTruncated':
          result.isTruncated = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Marker':
          result.marker = (serializers.deserialize(
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
    ListUserPoliciesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ListUserPoliciesResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ListUserPoliciesResponse(:policyNames, :isTruncated, :marker) =
        object;
    result$
      ..add(const _i3.XmlElementName('PolicyNames'))
      ..add(
          const _i3.XmlBuiltListSerializer(indexer: _i3.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        policyNames,
        specifiedType: const FullType.nullable(
          _i2.BuiltList,
          [FullType(String)],
        ),
      ));
    result$
      ..add(const _i3.XmlElementName('IsTruncated'))
      ..add(serializers.serialize(
        isTruncated,
        specifiedType: const FullType(bool),
      ));
    if (marker != null) {
      result$
        ..add(const _i3.XmlElementName('Marker'))
        ..add(serializers.serialize(
          marker,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
