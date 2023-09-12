// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.list_attached_user_policies_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/attached_policy.dart';

part 'list_attached_user_policies_response.g.dart';

/// Contains the response to a successful ListAttachedUserPolicies request.
abstract class ListAttachedUserPoliciesResponse
    with
        _i1.AWSEquatable<ListAttachedUserPoliciesResponse>
    implements
        Built<ListAttachedUserPoliciesResponse,
            ListAttachedUserPoliciesResponseBuilder> {
  /// Contains the response to a successful ListAttachedUserPolicies request.
  factory ListAttachedUserPoliciesResponse({
    List<AttachedPolicy>? attachedPolicies,
    bool? isTruncated,
    String? marker,
  }) {
    isTruncated ??= false;
    return _$ListAttachedUserPoliciesResponse._(
      attachedPolicies:
          attachedPolicies == null ? null : _i2.BuiltList(attachedPolicies),
      isTruncated: isTruncated,
      marker: marker,
    );
  }

  /// Contains the response to a successful ListAttachedUserPolicies request.
  factory ListAttachedUserPoliciesResponse.build(
          [void Function(ListAttachedUserPoliciesResponseBuilder) updates]) =
      _$ListAttachedUserPoliciesResponse;

  const ListAttachedUserPoliciesResponse._();

  /// Constructs a [ListAttachedUserPoliciesResponse] from a [payload] and [response].
  factory ListAttachedUserPoliciesResponse.fromResponse(
    ListAttachedUserPoliciesResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ListAttachedUserPoliciesResponse>>
      serializers = [ListAttachedUserPoliciesResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListAttachedUserPoliciesResponseBuilder b) {
    b.isTruncated = false;
  }

  /// A list of the attached policies.
  _i2.BuiltList<AttachedPolicy>? get attachedPolicies;

  /// A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the `Marker` request parameter to retrieve more items. Note that IAM might return fewer than the `MaxItems` number of results even when there are more results available. We recommend that you check `IsTruncated` after every call to ensure that you receive all your results.
  bool get isTruncated;

  /// When `IsTruncated` is `true`, this element is present and contains the value to use for the `Marker` parameter in a subsequent pagination request.
  String? get marker;
  @override
  List<Object?> get props => [
        attachedPolicies,
        isTruncated,
        marker,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListAttachedUserPoliciesResponse')
          ..add(
            'attachedPolicies',
            attachedPolicies,
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

class ListAttachedUserPoliciesResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<ListAttachedUserPoliciesResponse> {
  const ListAttachedUserPoliciesResponseAwsQuerySerializer()
      : super('ListAttachedUserPoliciesResponse');

  @override
  Iterable<Type> get types => const [
        ListAttachedUserPoliciesResponse,
        _$ListAttachedUserPoliciesResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListAttachedUserPoliciesResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListAttachedUserPoliciesResponseBuilder();
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
        case 'AttachedPolicies':
          result.attachedPolicies.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AttachedPolicy)],
            ),
          ) as _i2.BuiltList<AttachedPolicy>));
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
    ListAttachedUserPoliciesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ListAttachedUserPoliciesResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ListAttachedUserPoliciesResponse(
      :attachedPolicies,
      :isTruncated,
      :marker
    ) = object;
    if (attachedPolicies != null) {
      result$
        ..add(const _i3.XmlElementName('AttachedPolicies'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          attachedPolicies,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(AttachedPolicy)],
          ),
        ));
    }
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