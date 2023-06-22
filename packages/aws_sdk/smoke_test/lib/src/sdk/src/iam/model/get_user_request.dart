// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_user_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_user_request.g.dart';

abstract class GetUserRequest
    with _i1.HttpInput<GetUserRequest>, _i2.AWSEquatable<GetUserRequest>
    implements Built<GetUserRequest, GetUserRequestBuilder> {
  factory GetUserRequest({String? userName}) {
    return _$GetUserRequest._(userName: userName);
  }

  factory GetUserRequest.build([void Function(GetUserRequestBuilder) updates]) =
      _$GetUserRequest;

  const GetUserRequest._();

  factory GetUserRequest.fromRequest(
    GetUserRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetUserRequest>> serializers = [
    GetUserRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetUserRequestBuilder b) {}

  /// The name of the user to get information about.
  ///
  /// This parameter is optional. If it is not included, it defaults to the user making the request. This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String? get userName;
  @override
  GetUserRequest getPayload() => this;
  @override
  List<Object?> get props => [userName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetUserRequest')
      ..add(
        'userName',
        userName,
      );
    return helper.toString();
  }
}

class GetUserRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<GetUserRequest> {
  const GetUserRequestAwsQuerySerializer() : super('GetUserRequest');

  @override
  Iterable<Type> get types => const [
        GetUserRequest,
        _$GetUserRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetUserRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetUserRequestBuilder();
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
    GetUserRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetUserRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetUserRequest(:userName) = object;
    if (userName != null) {
      result$
        ..add(const _i1.XmlElementName('UserName'))
        ..add(serializers.serialize(
          userName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
