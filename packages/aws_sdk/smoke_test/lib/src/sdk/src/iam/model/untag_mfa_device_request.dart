// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.untag_mfa_device_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'untag_mfa_device_request.g.dart';

abstract class UntagMfaDeviceRequest
    with
        _i1.HttpInput<UntagMfaDeviceRequest>,
        _i2.AWSEquatable<UntagMfaDeviceRequest>
    implements Built<UntagMfaDeviceRequest, UntagMfaDeviceRequestBuilder> {
  factory UntagMfaDeviceRequest({
    required String serialNumber,
    required List<String> tagKeys,
  }) {
    return _$UntagMfaDeviceRequest._(
      serialNumber: serialNumber,
      tagKeys: _i3.BuiltList(tagKeys),
    );
  }

  factory UntagMfaDeviceRequest.build(
          [void Function(UntagMfaDeviceRequestBuilder) updates]) =
      _$UntagMfaDeviceRequest;

  const UntagMfaDeviceRequest._();

  factory UntagMfaDeviceRequest.fromRequest(
    UntagMfaDeviceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UntagMfaDeviceRequest>> serializers = [
    UntagMfaDeviceRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UntagMfaDeviceRequestBuilder b) {}

  /// The unique identifier for the IAM virtual MFA device from which you want to remove tags. For virtual MFA devices, the serial number is the same as the ARN.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get serialNumber;

  /// A list of key names as a simple array of strings. The tags with matching keys are removed from the specified instance profile.
  _i3.BuiltList<String> get tagKeys;
  @override
  UntagMfaDeviceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        serialNumber,
        tagKeys,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UntagMfaDeviceRequest')
      ..add(
        'serialNumber',
        serialNumber,
      )
      ..add(
        'tagKeys',
        tagKeys,
      );
    return helper.toString();
  }
}

class UntagMfaDeviceRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<UntagMfaDeviceRequest> {
  const UntagMfaDeviceRequestAwsQuerySerializer()
      : super('UntagMfaDeviceRequest');

  @override
  Iterable<Type> get types => const [
        UntagMfaDeviceRequest,
        _$UntagMfaDeviceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UntagMfaDeviceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UntagMfaDeviceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SerialNumber':
          result.serialNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TagKeys':
          result.tagKeys.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UntagMfaDeviceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UntagMfaDeviceRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UntagMfaDeviceRequest(:serialNumber, :tagKeys) = object;
    result$
      ..add(const _i1.XmlElementName('SerialNumber'))
      ..add(serializers.serialize(
        serialNumber,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('TagKeys'))
      ..add(
          const _i1.XmlBuiltListSerializer(indexer: _i1.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        tagKeys,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ));
    return result$;
  }
}
