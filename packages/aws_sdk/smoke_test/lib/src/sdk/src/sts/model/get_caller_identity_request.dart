// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.model.get_caller_identity_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_caller_identity_request.g.dart';

abstract class GetCallerIdentityRequest
    with
        _i1.HttpInput<GetCallerIdentityRequest>,
        _i2.AWSEquatable<GetCallerIdentityRequest>
    implements
        Built<GetCallerIdentityRequest, GetCallerIdentityRequestBuilder>,
        _i1.EmptyPayload {
  factory GetCallerIdentityRequest() {
    return _$GetCallerIdentityRequest._();
  }

  factory GetCallerIdentityRequest.build(
          [void Function(GetCallerIdentityRequestBuilder) updates]) =
      _$GetCallerIdentityRequest;

  const GetCallerIdentityRequest._();

  factory GetCallerIdentityRequest.fromRequest(
    GetCallerIdentityRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetCallerIdentityRequest>>
      serializers = [GetCallerIdentityRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetCallerIdentityRequestBuilder b) {}
  @override
  GetCallerIdentityRequest getPayload() => this;
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetCallerIdentityRequest');
    return helper.toString();
  }
}

class GetCallerIdentityRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<GetCallerIdentityRequest> {
  const GetCallerIdentityRequestAwsQuerySerializer()
      : super('GetCallerIdentityRequest');

  @override
  Iterable<Type> get types => const [
        GetCallerIdentityRequest,
        _$GetCallerIdentityRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetCallerIdentityRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetCallerIdentityRequestBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetCallerIdentityRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetCallerIdentityRequestResponse',
        _i1.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];

    return result$;
  }
}
