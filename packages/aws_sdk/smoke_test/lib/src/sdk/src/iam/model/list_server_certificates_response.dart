// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.list_server_certificates_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/server_certificate_metadata.dart';

part 'list_server_certificates_response.g.dart';

/// Contains the response to a successful ListServerCertificates request.
abstract class ListServerCertificatesResponse
    with
        _i1.AWSEquatable<ListServerCertificatesResponse>
    implements
        Built<ListServerCertificatesResponse,
            ListServerCertificatesResponseBuilder> {
  /// Contains the response to a successful ListServerCertificates request.
  factory ListServerCertificatesResponse({
    required List<ServerCertificateMetadata> serverCertificateMetadataList,
    bool? isTruncated,
    String? marker,
  }) {
    isTruncated ??= false;
    return _$ListServerCertificatesResponse._(
      serverCertificateMetadataList:
          _i2.BuiltList(serverCertificateMetadataList),
      isTruncated: isTruncated,
      marker: marker,
    );
  }

  /// Contains the response to a successful ListServerCertificates request.
  factory ListServerCertificatesResponse.build(
          [void Function(ListServerCertificatesResponseBuilder) updates]) =
      _$ListServerCertificatesResponse;

  const ListServerCertificatesResponse._();

  /// Constructs a [ListServerCertificatesResponse] from a [payload] and [response].
  factory ListServerCertificatesResponse.fromResponse(
    ListServerCertificatesResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ListServerCertificatesResponse>>
      serializers = [ListServerCertificatesResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListServerCertificatesResponseBuilder b) {
    b.isTruncated = false;
  }

  /// A list of server certificates.
  _i2.BuiltList<ServerCertificateMetadata> get serverCertificateMetadataList;

  /// A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the `Marker` request parameter to retrieve more items. Note that IAM might return fewer than the `MaxItems` number of results even when there are more results available. We recommend that you check `IsTruncated` after every call to ensure that you receive all your results.
  bool get isTruncated;

  /// When `IsTruncated` is `true`, this element is present and contains the value to use for the `Marker` parameter in a subsequent pagination request.
  String? get marker;
  @override
  List<Object?> get props => [
        serverCertificateMetadataList,
        isTruncated,
        marker,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListServerCertificatesResponse')
      ..add(
        'serverCertificateMetadataList',
        serverCertificateMetadataList,
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

class ListServerCertificatesResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<ListServerCertificatesResponse> {
  const ListServerCertificatesResponseAwsQuerySerializer()
      : super('ListServerCertificatesResponse');

  @override
  Iterable<Type> get types => const [
        ListServerCertificatesResponse,
        _$ListServerCertificatesResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListServerCertificatesResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListServerCertificatesResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ServerCertificateMetadataList':
          result.serverCertificateMetadataList.replace(
              (const _i3.XmlBuiltListSerializer(
                      indexer: _i3.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ServerCertificateMetadata)],
            ),
          ) as _i2.BuiltList<ServerCertificateMetadata>));
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
    ListServerCertificatesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ListServerCertificatesResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ListServerCertificatesResponse(
      :serverCertificateMetadataList,
      :isTruncated,
      :marker
    ) = object;
    result$
      ..add(const _i3.XmlElementName('ServerCertificateMetadataList'))
      ..add(
          const _i3.XmlBuiltListSerializer(indexer: _i3.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        serverCertificateMetadataList,
        specifiedType: const FullType.nullable(
          _i2.BuiltList,
          [FullType(ServerCertificateMetadata)],
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
