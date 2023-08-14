// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.list_access_keys_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/access_key_metadata.dart';

part 'list_access_keys_response.g.dart';

/// Contains the response to a successful ListAccessKeys request.
abstract class ListAccessKeysResponse
    with _i1.AWSEquatable<ListAccessKeysResponse>
    implements Built<ListAccessKeysResponse, ListAccessKeysResponseBuilder> {
  /// Contains the response to a successful ListAccessKeys request.
  factory ListAccessKeysResponse({
    required List<AccessKeyMetadata> accessKeyMetadata,
    bool? isTruncated,
    String? marker,
  }) {
    isTruncated ??= false;
    return _$ListAccessKeysResponse._(
      accessKeyMetadata: _i2.BuiltList(accessKeyMetadata),
      isTruncated: isTruncated,
      marker: marker,
    );
  }

  /// Contains the response to a successful ListAccessKeys request.
  factory ListAccessKeysResponse.build(
          [void Function(ListAccessKeysResponseBuilder) updates]) =
      _$ListAccessKeysResponse;

  const ListAccessKeysResponse._();

  /// Constructs a [ListAccessKeysResponse] from a [payload] and [response].
  factory ListAccessKeysResponse.fromResponse(
    ListAccessKeysResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ListAccessKeysResponse>> serializers =
      [ListAccessKeysResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListAccessKeysResponseBuilder b) {
    b.isTruncated = false;
  }

  /// A list of objects containing metadata about the access keys.
  _i2.BuiltList<AccessKeyMetadata> get accessKeyMetadata;

  /// A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the `Marker` request parameter to retrieve more items. Note that IAM might return fewer than the `MaxItems` number of results even when there are more results available. We recommend that you check `IsTruncated` after every call to ensure that you receive all your results.
  bool get isTruncated;

  /// When `IsTruncated` is `true`, this element is present and contains the value to use for the `Marker` parameter in a subsequent pagination request.
  String? get marker;
  @override
  List<Object?> get props => [
        accessKeyMetadata,
        isTruncated,
        marker,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListAccessKeysResponse')
      ..add(
        'accessKeyMetadata',
        accessKeyMetadata,
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

class ListAccessKeysResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<ListAccessKeysResponse> {
  const ListAccessKeysResponseAwsQuerySerializer()
      : super('ListAccessKeysResponse');

  @override
  Iterable<Type> get types => const [
        ListAccessKeysResponse,
        _$ListAccessKeysResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListAccessKeysResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListAccessKeysResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AccessKeyMetadata':
          result.accessKeyMetadata.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AccessKeyMetadata)],
            ),
          ) as _i2.BuiltList<AccessKeyMetadata>));
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
    ListAccessKeysResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ListAccessKeysResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ListAccessKeysResponse(:accessKeyMetadata, :isTruncated, :marker) =
        object;
    result$
      ..add(const _i3.XmlElementName('AccessKeyMetadata'))
      ..add(
          const _i3.XmlBuiltListSerializer(indexer: _i3.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        accessKeyMetadata,
        specifiedType: const FullType.nullable(
          _i2.BuiltList,
          [FullType(AccessKeyMetadata)],
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
