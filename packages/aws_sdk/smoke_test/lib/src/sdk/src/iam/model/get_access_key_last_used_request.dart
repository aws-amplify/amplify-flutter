// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_access_key_last_used_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_access_key_last_used_request.g.dart';

abstract class GetAccessKeyLastUsedRequest
    with
        _i1.HttpInput<GetAccessKeyLastUsedRequest>,
        _i2.AWSEquatable<GetAccessKeyLastUsedRequest>
    implements
        Built<GetAccessKeyLastUsedRequest, GetAccessKeyLastUsedRequestBuilder> {
  factory GetAccessKeyLastUsedRequest({required String accessKeyId}) {
    return _$GetAccessKeyLastUsedRequest._(accessKeyId: accessKeyId);
  }

  factory GetAccessKeyLastUsedRequest.build(
          [void Function(GetAccessKeyLastUsedRequestBuilder) updates]) =
      _$GetAccessKeyLastUsedRequest;

  const GetAccessKeyLastUsedRequest._();

  factory GetAccessKeyLastUsedRequest.fromRequest(
    GetAccessKeyLastUsedRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetAccessKeyLastUsedRequest>>
      serializers = [GetAccessKeyLastUsedRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAccessKeyLastUsedRequestBuilder b) {}

  /// The identifier of an access key.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that can consist of any upper or lowercased letter or digit.
  String get accessKeyId;
  @override
  GetAccessKeyLastUsedRequest getPayload() => this;
  @override
  List<Object?> get props => [accessKeyId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetAccessKeyLastUsedRequest')
      ..add(
        'accessKeyId',
        accessKeyId,
      );
    return helper.toString();
  }
}

class GetAccessKeyLastUsedRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<GetAccessKeyLastUsedRequest> {
  const GetAccessKeyLastUsedRequestAwsQuerySerializer()
      : super('GetAccessKeyLastUsedRequest');

  @override
  Iterable<Type> get types => const [
        GetAccessKeyLastUsedRequest,
        _$GetAccessKeyLastUsedRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetAccessKeyLastUsedRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAccessKeyLastUsedRequestBuilder();
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
    GetAccessKeyLastUsedRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetAccessKeyLastUsedRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetAccessKeyLastUsedRequest(:accessKeyId) = object;
    result$
      ..add(const _i1.XmlElementName('AccessKeyId'))
      ..add(serializers.serialize(
        accessKeyId,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
