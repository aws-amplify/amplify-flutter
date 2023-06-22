// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.list_policy_versions_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/policy_version.dart' as _i2;

part 'list_policy_versions_response.g.dart';

/// Contains the response to a successful ListPolicyVersions request.
abstract class ListPolicyVersionsResponse
    with _i1.AWSEquatable<ListPolicyVersionsResponse>
    implements
        Built<ListPolicyVersionsResponse, ListPolicyVersionsResponseBuilder> {
  /// Contains the response to a successful ListPolicyVersions request.
  factory ListPolicyVersionsResponse({
    List<_i2.PolicyVersion>? versions,
    bool? isTruncated,
    String? marker,
  }) {
    isTruncated ??= false;
    return _$ListPolicyVersionsResponse._(
      versions: versions == null ? null : _i3.BuiltList(versions),
      isTruncated: isTruncated,
      marker: marker,
    );
  }

  /// Contains the response to a successful ListPolicyVersions request.
  factory ListPolicyVersionsResponse.build(
          [void Function(ListPolicyVersionsResponseBuilder) updates]) =
      _$ListPolicyVersionsResponse;

  const ListPolicyVersionsResponse._();

  /// Constructs a [ListPolicyVersionsResponse] from a [payload] and [response].
  factory ListPolicyVersionsResponse.fromResponse(
    ListPolicyVersionsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<ListPolicyVersionsResponse>>
      serializers = [ListPolicyVersionsResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListPolicyVersionsResponseBuilder b) {
    b.isTruncated = false;
  }

  /// A list of policy versions.
  ///
  /// For more information about managed policy versions, see [Versioning for managed policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html) in the _IAM User Guide_.
  _i3.BuiltList<_i2.PolicyVersion>? get versions;

  /// A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the `Marker` request parameter to retrieve more items. Note that IAM might return fewer than the `MaxItems` number of results even when there are more results available. We recommend that you check `IsTruncated` after every call to ensure that you receive all your results.
  bool get isTruncated;

  /// When `IsTruncated` is `true`, this element is present and contains the value to use for the `Marker` parameter in a subsequent pagination request.
  String? get marker;
  @override
  List<Object?> get props => [
        versions,
        isTruncated,
        marker,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListPolicyVersionsResponse')
      ..add(
        'versions',
        versions,
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

class ListPolicyVersionsResponseAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<ListPolicyVersionsResponse> {
  const ListPolicyVersionsResponseAwsQuerySerializer()
      : super('ListPolicyVersionsResponse');

  @override
  Iterable<Type> get types => const [
        ListPolicyVersionsResponse,
        _$ListPolicyVersionsResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListPolicyVersionsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListPolicyVersionsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Versions':
          result.versions.replace((const _i4.XmlBuiltListSerializer(
                  indexer: _i4.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.PolicyVersion)],
            ),
          ) as _i3.BuiltList<_i2.PolicyVersion>));
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
    ListPolicyVersionsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'ListPolicyVersionsResponseResponse',
        _i4.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ListPolicyVersionsResponse(:versions, :isTruncated, :marker) = object;
    if (versions != null) {
      result$
        ..add(const _i4.XmlElementName('Versions'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          versions,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.PolicyVersion)],
          ),
        ));
    }
    result$
      ..add(const _i4.XmlElementName('IsTruncated'))
      ..add(serializers.serialize(
        isTruncated,
        specifiedType: const FullType(bool),
      ));
    if (marker != null) {
      result$
        ..add(const _i4.XmlElementName('Marker'))
        ..add(serializers.serialize(
          marker,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
