// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.get_mfa_device_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'get_mfa_device_response.g.dart';

abstract class GetMfaDeviceResponse
    with _i1.AWSEquatable<GetMfaDeviceResponse>
    implements Built<GetMfaDeviceResponse, GetMfaDeviceResponseBuilder> {
  factory GetMfaDeviceResponse({
    String? userName,
    required String serialNumber,
    DateTime? enableDate,
    Map<String, String>? certifications,
  }) {
    return _$GetMfaDeviceResponse._(
      userName: userName,
      serialNumber: serialNumber,
      enableDate: enableDate,
      certifications:
          certifications == null ? null : _i2.BuiltMap(certifications),
    );
  }

  factory GetMfaDeviceResponse.build(
          [void Function(GetMfaDeviceResponseBuilder) updates]) =
      _$GetMfaDeviceResponse;

  const GetMfaDeviceResponse._();

  /// Constructs a [GetMfaDeviceResponse] from a [payload] and [response].
  factory GetMfaDeviceResponse.fromResponse(
    GetMfaDeviceResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetMfaDeviceResponse>> serializers = [
    GetMfaDeviceResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetMfaDeviceResponseBuilder b) {}

  /// The friendly name identifying the user.
  String? get userName;

  /// Serial number that uniquely identifies the MFA device. For this API, we only accept FIDO security key [ARNs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html).
  String get serialNumber;

  /// The date that a specified user's MFA device was first enabled.
  DateTime? get enableDate;

  /// The certifications of a specified user's MFA device. We currently provide FIPS-140-2, FIPS-140-3, and FIDO certification levels obtained from [FIDO Alliance Metadata Service (MDS)](https://fidoalliance.org/metadata/).
  _i2.BuiltMap<String, String>? get certifications;
  @override
  List<Object?> get props => [
        userName,
        serialNumber,
        enableDate,
        certifications,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetMfaDeviceResponse')
      ..add(
        'userName',
        userName,
      )
      ..add(
        'serialNumber',
        serialNumber,
      )
      ..add(
        'enableDate',
        enableDate,
      )
      ..add(
        'certifications',
        certifications,
      );
    return helper.toString();
  }
}

class GetMfaDeviceResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<GetMfaDeviceResponse> {
  const GetMfaDeviceResponseAwsQuerySerializer()
      : super('GetMfaDeviceResponse');

  @override
  Iterable<Type> get types => const [
        GetMfaDeviceResponse,
        _$GetMfaDeviceResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetMfaDeviceResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetMfaDeviceResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'UserName':
          result.userName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SerialNumber':
          result.serialNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EnableDate':
          result.enableDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'Certifications':
          result.certifications.replace(const _i3.XmlBuiltMapSerializer(
                  indexer: _i3.XmlIndexer.awsQueryMap)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetMfaDeviceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetMfaDeviceResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetMfaDeviceResponse(
      :userName,
      :serialNumber,
      :enableDate,
      :certifications
    ) = object;
    if (userName != null) {
      result$
        ..add(const _i3.XmlElementName('UserName'))
        ..add(serializers.serialize(
          userName,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('SerialNumber'))
      ..add(serializers.serialize(
        serialNumber,
        specifiedType: const FullType(String),
      ));
    if (enableDate != null) {
      result$
        ..add(const _i3.XmlElementName('EnableDate'))
        ..add(serializers.serialize(
          enableDate,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (certifications != null) {
      result$
        ..add(const _i3.XmlElementName('Certifications'))
        ..add(
            const _i3.XmlBuiltMapSerializer(indexer: _i3.XmlIndexer.awsQueryMap)
                .serialize(
          serializers,
          certifications,
          specifiedType: const FullType.nullable(
            _i2.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    return result$;
  }
}
