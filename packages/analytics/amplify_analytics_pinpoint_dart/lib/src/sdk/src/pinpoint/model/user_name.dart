// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.user_name;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'user_name.g.dart';

abstract class UserName
    with _i1.AWSEquatable<UserName>
    implements Built<UserName, UserNameBuilder> {
  factory UserName(
      {String? firstName,
      String? lastName,
      String? middleName,
      String? suffix,
      String? title}) {
    return _$UserName._(
        firstName: firstName,
        lastName: lastName,
        middleName: middleName,
        suffix: suffix,
        title: title);
  }

  factory UserName.build([void Function(UserNameBuilder) updates]) = _$UserName;

  const UserName._();

  static const List<_i2.SmithySerializer> serializers = [
    _UserNameRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UserNameBuilder b) {}
  String? get firstName;
  String? get lastName;
  String? get middleName;
  String? get suffix;
  String? get title;
  @override
  List<Object?> get props => [firstName, lastName, middleName, suffix, title];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UserName');
    helper.add('firstName', firstName);
    helper.add('lastName', lastName);
    helper.add('middleName', middleName);
    helper.add('suffix', suffix);
    helper.add('title', title);
    return helper.toString();
  }
}

class _UserNameRestJson1Serializer
    extends _i2.StructuredSmithySerializer<UserName> {
  const _UserNameRestJson1Serializer() : super('UserName');

  @override
  Iterable<Type> get types => const [UserName, _$UserName];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  UserName deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UserNameBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'FirstName':
          if (value != null) {
            result.firstName = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'LastName':
          if (value != null) {
            result.lastName = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'MiddleName':
          if (value != null) {
            result.middleName = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Suffix':
          if (value != null) {
            result.suffix = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Title':
          if (value != null) {
            result.title = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as UserName);
    final result = <Object?>[];
    if (payload.firstName != null) {
      result
        ..add('FirstName')
        ..add(serializers.serialize(payload.firstName!,
            specifiedType: const FullType(String)));
    }
    if (payload.lastName != null) {
      result
        ..add('LastName')
        ..add(serializers.serialize(payload.lastName!,
            specifiedType: const FullType(String)));
    }
    if (payload.middleName != null) {
      result
        ..add('MiddleName')
        ..add(serializers.serialize(payload.middleName!,
            specifiedType: const FullType(String)));
    }
    if (payload.suffix != null) {
      result
        ..add('Suffix')
        ..add(serializers.serialize(payload.suffix!,
            specifiedType: const FullType(String)));
    }
    if (payload.title != null) {
      result
        ..add('Title')
        ..add(serializers.serialize(payload.title!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
