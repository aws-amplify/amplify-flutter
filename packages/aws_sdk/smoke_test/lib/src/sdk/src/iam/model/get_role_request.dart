// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_role_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_role_request.g.dart';

abstract class GetRoleRequest
    with _i1.HttpInput<GetRoleRequest>, _i2.AWSEquatable<GetRoleRequest>
    implements Built<GetRoleRequest, GetRoleRequestBuilder> {
  factory GetRoleRequest({required String roleName}) {
    return _$GetRoleRequest._(roleName: roleName);
  }

  factory GetRoleRequest.build([void Function(GetRoleRequestBuilder) updates]) =
      _$GetRoleRequest;

  const GetRoleRequest._();

  factory GetRoleRequest.fromRequest(
    GetRoleRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetRoleRequest>> serializers = [
    GetRoleRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetRoleRequestBuilder b) {}

  /// The name of the IAM role to get information about.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get roleName;
  @override
  GetRoleRequest getPayload() => this;
  @override
  List<Object?> get props => [roleName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetRoleRequest')
      ..add(
        'roleName',
        roleName,
      );
    return helper.toString();
  }
}

class GetRoleRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<GetRoleRequest> {
  const GetRoleRequestAwsQuerySerializer() : super('GetRoleRequest');

  @override
  Iterable<Type> get types => const [
        GetRoleRequest,
        _$GetRoleRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetRoleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetRoleRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'RoleName':
          result.roleName = (serializers.deserialize(
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
    GetRoleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetRoleRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetRoleRequest(:roleName) = object;
    result$
      ..add(const _i1.XmlElementName('RoleName'))
      ..add(serializers.serialize(
        roleName,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
