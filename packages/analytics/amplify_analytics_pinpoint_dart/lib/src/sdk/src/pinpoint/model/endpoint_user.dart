// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_analytics_pinpoint_dart.pinpoint.model.endpoint_user; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'endpoint_user.g.dart';

/// Specifies data for one or more attributes that describe the user who's associated with an endpoint.
abstract class EndpointUser
    with _i1.AWSEquatable<EndpointUser>
    implements Built<EndpointUser, EndpointUserBuilder> {
  /// Specifies data for one or more attributes that describe the user who's associated with an endpoint.
  factory EndpointUser({
    Map<String, List<String>>? userAttributes,
    String? userId,
  }) {
    return _$EndpointUser._(
      userAttributes: userAttributes == null
          ? null
          : _i2.BuiltListMultimap(userAttributes),
      userId: userId,
    );
  }

  /// Specifies data for one or more attributes that describe the user who's associated with an endpoint.
  factory EndpointUser.build([void Function(EndpointUserBuilder) updates]) =
      _$EndpointUser;

  const EndpointUser._();

  static const List<_i3.SmithySerializer<EndpointUser>> serializers = [
    EndpointUserRestJson1Serializer(),
  ];

  /// One or more custom attributes that describe the user by associating a name with an array of values. For example, the value of an attribute named Interests might be: \["Science", "Music", "Travel"\]. You can use these attributes as filter criteria when you create segments. Attribute names are case sensitive.
  ///
  /// An attribute name can contain up to 50 characters. An attribute value can contain up to 100 characters. When you define the name of a custom attribute, avoid using the following characters: number sign (#), colon (:), question mark (?), backslash (\\), and slash (/). The Amazon Pinpoint console can't display attribute names that contain these characters. This restriction doesn't apply to attribute values.
  _i2.BuiltListMultimap<String, String>? get userAttributes;

  /// The unique identifier for the user.
  String? get userId;
  @override
  List<Object?> get props => [userAttributes, userId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EndpointUser')
      ..add('userAttributes', userAttributes)
      ..add('userId', userId);
    return helper.toString();
  }
}

class EndpointUserRestJson1Serializer
    extends _i3.StructuredSmithySerializer<EndpointUser> {
  const EndpointUserRestJson1Serializer() : super('EndpointUser');

  @override
  Iterable<Type> get types => const [EndpointUser, _$EndpointUser];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
  ];
  @override
  EndpointUser deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EndpointUserBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'UserAttributes':
          result.userAttributes.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.BuiltListMultimap, [
                    FullType(String),
                    FullType(String),
                  ]),
                )
                as _i2.BuiltListMultimap<String, String>),
          );
        case 'UserId':
          result.userId =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EndpointUser object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final EndpointUser(:userAttributes, :userId) = object;
    if (userAttributes != null) {
      result$
        ..add('UserAttributes')
        ..add(
          serializers.serialize(
            userAttributes,
            specifiedType: const FullType(_i2.BuiltListMultimap, [
              FullType(String),
              FullType(String),
            ]),
          ),
        );
    }
    if (userId != null) {
      result$
        ..add('UserId')
        ..add(
          serializers.serialize(userId, specifiedType: const FullType(String)),
        );
    }
    return result$;
  }
}
