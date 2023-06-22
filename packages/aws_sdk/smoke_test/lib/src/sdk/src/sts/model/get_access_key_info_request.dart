// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.model.get_access_key_info_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_access_key_info_request.g.dart';

abstract class GetAccessKeyInfoRequest
    with
        _i1.HttpInput<GetAccessKeyInfoRequest>,
        _i2.AWSEquatable<GetAccessKeyInfoRequest>
    implements Built<GetAccessKeyInfoRequest, GetAccessKeyInfoRequestBuilder> {
  factory GetAccessKeyInfoRequest({required String accessKeyId}) {
    return _$GetAccessKeyInfoRequest._(accessKeyId: accessKeyId);
  }

  factory GetAccessKeyInfoRequest.build(
          [void Function(GetAccessKeyInfoRequestBuilder) updates]) =
      _$GetAccessKeyInfoRequest;

  const GetAccessKeyInfoRequest._();

  factory GetAccessKeyInfoRequest.fromRequest(
    GetAccessKeyInfoRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetAccessKeyInfoRequest>> serializers =
      [GetAccessKeyInfoRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAccessKeyInfoRequestBuilder b) {}

  /// The identifier of an access key.
  ///
  /// This parameter allows (through its regex pattern) a string of characters that can consist of any upper- or lowercase letter or digit.
  String get accessKeyId;
  @override
  GetAccessKeyInfoRequest getPayload() => this;
  @override
  List<Object?> get props => [accessKeyId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetAccessKeyInfoRequest')
      ..add(
        'accessKeyId',
        accessKeyId,
      );
    return helper.toString();
  }
}

class GetAccessKeyInfoRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<GetAccessKeyInfoRequest> {
  const GetAccessKeyInfoRequestAwsQuerySerializer()
      : super('GetAccessKeyInfoRequest');

  @override
  Iterable<Type> get types => const [
        GetAccessKeyInfoRequest,
        _$GetAccessKeyInfoRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetAccessKeyInfoRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAccessKeyInfoRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AccessKeyId':
          result.accessKeyId = (serializers.deserialize(
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
    GetAccessKeyInfoRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetAccessKeyInfoRequestResponse',
        _i1.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    final GetAccessKeyInfoRequest(:accessKeyId) = object;
    result$
      ..add(const _i1.XmlElementName('AccessKeyId'))
      ..add(serializers.serialize(
        accessKeyId,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
