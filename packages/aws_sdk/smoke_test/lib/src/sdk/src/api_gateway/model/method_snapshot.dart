// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    String? authorizationType,
    bool? apiKeyRequired,
  }) {
    apiKeyRequired ??= false;
    return _$MethodSnapshot._(
      authorizationType: authorizationType,
      apiKeyRequired: apiKeyRequired,
    );
  }

  /// Represents a summary of a Method resource, given a particular date and time.
  factory MethodSnapshot.build([void Function(MethodSnapshotBuilder) updates]) =
      _$MethodSnapshot;

  const MethodSnapshot._();

  static const List<_i2.SmithySerializer<MethodSnapshot>> serializers = [
    MethodSnapshotRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MethodSnapshotBuilder b) {
    b.apiKeyRequired = false;
  }

  /// The method's authorization type. Valid values are `NONE` for open access, `AWS_IAM` for using AWS IAM permissions, `CUSTOM` for using a custom authorizer, or `COGNITO\_USER\_POOLS` for using a Cognito user pool.
  String? get authorizationType;

  /// Specifies whether the method requires a valid ApiKey.
  bool get apiKeyRequired;
  @override
  List<Object?> get props => [
        authorizationType,
        apiKeyRequired,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MethodSnapshot')
      ..add(
        'authorizationType',
        authorizationType,
      )
      ..add(
        'apiKeyRequired',
        apiKeyRequired,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'apiKeyRequired':
          result.apiKeyRequired = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'authorizationType':
          result.authorizationType = (serializers.deserialize(
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
    MethodSnapshot object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final MethodSnapshot(:apiKeyRequired, :authorizationType) = object;
    result$.addAll([
      'apiKeyRequired',
      serializers.serialize(
        apiKeyRequired,
        specifiedType: const FullType(bool),
      ),
    ]);
    if (authorizationType != null) {
      result$
        ..add('authorizationType')
        ..add(serializers.serialize(
          authorizationType,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
