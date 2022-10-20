// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthUser<Details> _$AuthUserFromJson<Details extends SignInDetails>(
  Map<String, dynamic> json,
  Details Function(Object? json) fromJsonDetails,
) =>
    AuthUser<Details>(
      userId: json['userId'] as String,
      username: json['username'] as String,
      signInDetails: fromJsonDetails(json['signInDetails']),
    );

Map<String, dynamic> _$AuthUserToJson<Details extends SignInDetails>(
  AuthUser<Details> instance,
  Object? Function(Details value) toJsonDetails,
) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'signInDetails': toJsonDetails(instance.signInDetails),
    };
