// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.list_signing_certificates_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/signing_certificate.dart'
    as _i2;

part 'list_signing_certificates_response.g.dart';

/// Contains the response to a successful ListSigningCertificates request.
abstract class ListSigningCertificatesResponse
    with
        _i1.AWSEquatable<ListSigningCertificatesResponse>
    implements
        Built<ListSigningCertificatesResponse,
            ListSigningCertificatesResponseBuilder> {
  /// Contains the response to a successful ListSigningCertificates request.
  factory ListSigningCertificatesResponse({
    required List<_i2.SigningCertificate> certificates,
    bool? isTruncated,
    String? marker,
  }) {
    return _$ListSigningCertificatesResponse._(
      certificates: _i3.BuiltList(certificates),
      isTruncated: isTruncated,
      marker: marker,
    );
  }

  /// Contains the response to a successful ListSigningCertificates request.
  factory ListSigningCertificatesResponse.build(
          [void Function(ListSigningCertificatesResponseBuilder) updates]) =
      _$ListSigningCertificatesResponse;

  const ListSigningCertificatesResponse._();

  /// Constructs a [ListSigningCertificatesResponse] from a [payload] and [response].
  factory ListSigningCertificatesResponse.fromResponse(
    ListSigningCertificatesResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    ListSigningCertificatesResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListSigningCertificatesResponseBuilder b) {}

  /// A list of the user's signing certificate information.
  _i3.BuiltList<_i2.SigningCertificate> get certificates;

  /// A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the `Marker` request parameter to retrieve more items. Note that IAM might return fewer than the `MaxItems` number of results even when there are more results available. We recommend that you check `IsTruncated` after every call to ensure that you receive all your results.
  bool? get isTruncated;

  /// When `IsTruncated` is `true`, this element is present and contains the value to use for the `Marker` parameter in a subsequent pagination request.
  String? get marker;
  @override
  List<Object?> get props => [
        certificates,
        isTruncated,
        marker,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListSigningCertificatesResponse');
    helper.add(
      'certificates',
      certificates,
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

class ListSigningCertificatesResponseAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<ListSigningCertificatesResponse> {
  const ListSigningCertificatesResponseAwsQuerySerializer()
      : super('ListSigningCertificatesResponse');

  @override
  Iterable<Type> get types => const [
        ListSigningCertificatesResponse,
        _$ListSigningCertificatesResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListSigningCertificatesResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListSigningCertificatesResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Certificates':
          result.certificates.replace((const _i4.XmlBuiltListSerializer(
                  indexer: _i4.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.SigningCertificate)],
            ),
          ) as _i3.BuiltList<_i2.SigningCertificate>));
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
    final payload = (object as ListSigningCertificatesResponse);
    final result = <Object?>[
      const _i4.XmlElementName(
        'ListSigningCertificatesResponseResponse',
        _i4.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i4.XmlElementName('Certificates'))
      ..add(
          const _i4.XmlBuiltListSerializer(indexer: _i4.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        payload.certificates,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(_i2.SigningCertificate)],
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
