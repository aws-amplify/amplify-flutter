// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_login_profile_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_login_profile_request.g.dart';

abstract class GetLoginProfileRequest
    with
        _i1.HttpInput<GetLoginProfileRequest>,
        _i2.AWSEquatable<GetLoginProfileRequest>
    implements Built<GetLoginProfileRequest, GetLoginProfileRequestBuilder> {
  factory GetLoginProfileRequest({required String userName}) {
    return _$GetLoginProfileRequest._(userName: userName);
  }

  factory GetLoginProfileRequest.build(
          [void Function(GetLoginProfileRequestBuilder) updates]) =
      _$GetLoginProfileRequest;

  const GetLoginProfileRequest._();

  factory GetLoginProfileRequest.fromRequest(
    GetLoginProfileRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetLoginProfileRequest>> serializers =
      [GetLoginProfileRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetLoginProfileRequestBuilder b) {}

  /// The name of the user whose login profile you want to retrieve.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get userName;
  @override
  GetLoginProfileRequest getPayload() => this;
  @override
  List<Object?> get props => [userName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetLoginProfileRequest')
      ..add(
        'userName',
        userName,
      );
    return helper.toString();
  }
}

class GetLoginProfileRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<GetLoginProfileRequest> {
  const GetLoginProfileRequestAwsQuerySerializer()
      : super('GetLoginProfileRequest');

  @override
  Iterable<Type> get types => const [
        GetLoginProfileRequest,
        _$GetLoginProfileRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetLoginProfileRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetLoginProfileRequestBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetLoginProfileRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetLoginProfileRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetLoginProfileRequest(:userName) = object;
    result$
      ..add(const _i1.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
