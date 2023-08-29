// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.user_data; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'user_data.g.dart';

/// Describes the user data for an instance.
abstract class UserData
    with _i1.AWSEquatable<UserData>
    implements Built<UserData, UserDataBuilder> {
  /// Describes the user data for an instance.
  factory UserData({String? data}) {
    return _$UserData._(data: data);
  }

  /// Describes the user data for an instance.
  factory UserData.build([void Function(UserDataBuilder) updates]) = _$UserData;

  const UserData._();

  static const List<_i2.SmithySerializer<UserData>> serializers = [
    UserDataEc2QuerySerializer()
  ];

  /// The user data. If you are using an Amazon Web Services SDK or command line tool, Base64-encoding is performed for you, and you can load the text from a file. Otherwise, you must provide Base64-encoded text.
  String? get data;
  @override
  List<Object?> get props => [data];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UserData')
      ..add(
        'data',
        '***SENSITIVE***',
      );
    return helper.toString();
  }
}

class UserDataEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<UserData> {
  const UserDataEc2QuerySerializer() : super('UserData');

  @override
  Iterable<Type> get types => const [
        UserData,
        _$UserData,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  UserData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserDataBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'data':
          result.data = (serializers.deserialize(
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
    UserData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'UserDataResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final UserData(:data) = object;
    if (data != null) {
      result$
        ..add(const _i2.XmlElementName('Data'))
        ..add(serializers.serialize(
          data,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
