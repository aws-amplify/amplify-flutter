// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.method_snapshot; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'method_snapshot.g.dart';

/// Represents a summary of a Method resource, given a particular date and time.
abstract class MethodSnapshot
    with _i1.AWSEquatable<MethodSnapshot>
    implements Built<MethodSnapshot, MethodSnapshotBuilder> {
  /// Represents a summary of a Method resource, given a particular date and time.
  factory MethodSnapshot({
    bool? apiKeyRequired,
    String? authorizationType,
  }) {
    return _$MethodSnapshot._(
      apiKeyRequired: apiKeyRequired,
      authorizationType: authorizationType,
    );
  }

  /// Represents a summary of a Method resource, given a particular date and time.
  factory MethodSnapshot.build([void Function(MethodSnapshotBuilder) updates]) =
      _$MethodSnapshot;

  const MethodSnapshot._();

  static const List<_i2.SmithySerializer> serializers = [
    MethodSnapshotRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MethodSnapshotBuilder b) {}

  /// Specifies whether the method requires a valid ApiKey.
  bool? get apiKeyRequired;

  /// The method's authorization type. Valid values are `NONE` for open access, `AWS_IAM` for using AWS IAM permissions, `CUSTOM` for using a custom authorizer, or `COGNITO\_USER\_POOLS` for using a Cognito user pool.
  String? get authorizationType;
  @override
  List<Object?> get props => [
        apiKeyRequired,
        authorizationType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MethodSnapshot');
    helper.add(
      'apiKeyRequired',
      apiKeyRequired,
    );
    helper.add(
      'authorizationType',
      authorizationType,
    );
    return helper.toString();
  }
}

class MethodSnapshotRestJson1Serializer
    extends _i2.StructuredSmithySerializer<MethodSnapshot> {
  const MethodSnapshotRestJson1Serializer() : super('MethodSnapshot');

  @override
  Iterable<Type> get types => const [
        MethodSnapshot,
        _$MethodSnapshot,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MethodSnapshot deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MethodSnapshotBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'apiKeyRequired':
          if (value != null) {
            result.apiKeyRequired = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'authorizationType':
          if (value != null) {
            result.authorizationType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as MethodSnapshot);
    final result = <Object?>[];
    if (payload.apiKeyRequired != null) {
      result
        ..add('apiKeyRequired')
        ..add(serializers.serialize(
          payload.apiKeyRequired!,
          specifiedType: const FullType(bool),
        ));
    }
    if (payload.authorizationType != null) {
      result
        ..add('authorizationType')
        ..add(serializers.serialize(
          payload.authorizationType!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
