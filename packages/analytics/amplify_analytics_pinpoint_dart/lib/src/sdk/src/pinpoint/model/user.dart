// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.user;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/primary_location.dart'
    as _i3;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_name.dart'
    as _i2;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_status.dart'
    as _i5;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;

part 'user.g.dart';

abstract class User
    with _i1.AWSEquatable<User>
    implements Built<User, UserBuilder> {
  factory User(
      {String? creationDate,
      String? dateOfBirth,
      String? gender,
      _i2.UserName? name,
      _i3.PrimaryLocation? primaryLocation,
      _i4.BuiltListMultimap<String, String>? userAttributes,
      _i4.BuiltMap<String, double>? userMetrics,
      _i5.UserStatus? userStatus}) {
    return _$User._(
        creationDate: creationDate,
        dateOfBirth: dateOfBirth,
        gender: gender,
        name: name,
        primaryLocation: primaryLocation,
        userAttributes: userAttributes,
        userMetrics: userMetrics,
        userStatus: userStatus);
  }

  factory User.build([void Function(UserBuilder) updates]) = _$User;

  const User._();

  static const List<_i6.SmithySerializer> serializers = [
    _UserRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UserBuilder b) {}
  String? get creationDate;
  String? get dateOfBirth;
  String? get gender;
  _i2.UserName? get name;
  _i3.PrimaryLocation? get primaryLocation;
  _i4.BuiltListMultimap<String, String>? get userAttributes;
  _i4.BuiltMap<String, double>? get userMetrics;
  _i5.UserStatus? get userStatus;
  @override
  List<Object?> get props => [
        creationDate,
        dateOfBirth,
        gender,
        name,
        primaryLocation,
        userAttributes,
        userMetrics,
        userStatus
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('User');
    helper.add('creationDate', creationDate);
    helper.add('dateOfBirth', dateOfBirth);
    helper.add('gender', gender);
    helper.add('name', name);
    helper.add('primaryLocation', primaryLocation);
    helper.add('userAttributes', userAttributes);
    helper.add('userMetrics', userMetrics);
    helper.add('userStatus', userStatus);
    return helper.toString();
  }
}

class _UserRestJson1Serializer extends _i6.StructuredSmithySerializer<User> {
  const _UserRestJson1Serializer() : super('User');

  @override
  Iterable<Type> get types => const [User, _$User];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols =>
      const [_i6.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  User deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UserBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'CreationDate':
          if (value != null) {
            result.creationDate = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'DateOfBirth':
          if (value != null) {
            result.dateOfBirth = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Gender':
          if (value != null) {
            result.gender = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Name':
          if (value != null) {
            result.name.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i2.UserName)) as _i2.UserName));
          }
          break;
        case 'PrimaryLocation':
          if (value != null) {
            result.primaryLocation.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i3.PrimaryLocation))
                as _i3.PrimaryLocation));
          }
          break;
        case 'UserAttributes':
          if (value != null) {
            result.userAttributes.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i4.BuiltListMultimap, [
                  FullType(String),
                  FullType(String)
                ])) as _i4.BuiltListMultimap<String, String>));
          }
          break;
        case 'UserMetrics':
          if (value != null) {
            result.userMetrics.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i4.BuiltMap, [FullType(String), FullType(double)]))
                as _i4.BuiltMap<String, double>));
          }
          break;
        case 'UserStatus':
          if (value != null) {
            result.userStatus = (serializers.deserialize(value,
                    specifiedType: const FullType(_i5.UserStatus))
                as _i5.UserStatus);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as User);
    final result = <Object?>[];
    if (payload.creationDate != null) {
      result
        ..add('CreationDate')
        ..add(serializers.serialize(payload.creationDate!,
            specifiedType: const FullType(String)));
    }
    if (payload.dateOfBirth != null) {
      result
        ..add('DateOfBirth')
        ..add(serializers.serialize(payload.dateOfBirth!,
            specifiedType: const FullType(String)));
    }
    if (payload.gender != null) {
      result
        ..add('Gender')
        ..add(serializers.serialize(payload.gender!,
            specifiedType: const FullType(String)));
    }
    if (payload.name != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(payload.name!,
            specifiedType: const FullType(_i2.UserName)));
    }
    if (payload.primaryLocation != null) {
      result
        ..add('PrimaryLocation')
        ..add(serializers.serialize(payload.primaryLocation!,
            specifiedType: const FullType(_i3.PrimaryLocation)));
    }
    if (payload.userAttributes != null) {
      result
        ..add('UserAttributes')
        ..add(serializers.serialize(payload.userAttributes!,
            specifiedType: const FullType(
                _i4.BuiltListMultimap, [FullType(String), FullType(String)])));
    }
    if (payload.userMetrics != null) {
      result
        ..add('UserMetrics')
        ..add(serializers.serialize(payload.userMetrics!,
            specifiedType: const FullType(
                _i4.BuiltMap, [FullType(String), FullType(double)])));
    }
    if (payload.userStatus != null) {
      result
        ..add('UserStatus')
        ..add(serializers.serialize(payload.userStatus!,
            specifiedType: const FullType(_i5.UserStatus)));
    }
    return result;
  }
}
