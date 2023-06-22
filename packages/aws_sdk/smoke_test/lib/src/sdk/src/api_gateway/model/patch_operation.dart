// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.patch_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/op.dart' as _i2;

part 'patch_operation.g.dart';

/// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
abstract class PatchOperation
    with _i1.AWSEquatable<PatchOperation>
    implements Built<PatchOperation, PatchOperationBuilder> {
  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  factory PatchOperation({
    _i2.Op? op,
    String? path,
    String? value,
    String? from,
  }) {
    return _$PatchOperation._(
      op: op,
      path: path,
      value: value,
      from: from,
    );
  }

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  factory PatchOperation.build([void Function(PatchOperationBuilder) updates]) =
      _$PatchOperation;

  const PatchOperation._();

  static const List<_i3.SmithySerializer<PatchOperation>> serializers = [
    PatchOperationRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PatchOperationBuilder b) {}

  /// An update operation to be performed with this PATCH request. The valid value can be add, remove, replace or copy. Not all valid operations are supported for a given resource. Support of the operations depends on specific operational contexts. Attempts to apply an unsupported operation on a resource will return an error message..
  _i2.Op? get op;

  /// The op operation's target, as identified by a JSON Pointer value that references a location within the targeted resource. For example, if the target resource has an updateable property of {"name":"value"}, the path for this property is /name. If the name property value is a JSON object (e.g., {"name": {"child/name": "child-value"}}), the path for the child/name property will be /name/child~1name. Any slash ("/") character appearing in path names must be escaped with "~1", as shown in the example above. Each op operation can have only one path associated with it.
  String? get path;

  /// The new target value of the update operation. It is applicable for the add or replace operation. When using AWS CLI to update a property of a JSON value, enclose the JSON object with a pair of single quotes in a Linux shell, e.g., '{"a": ...}'.
  String? get value;

  /// The copy update operation's source as identified by a JSON-Pointer value referencing the location within the targeted resource to copy the value from. For example, to promote a canary deployment, you copy the canary deployment ID to the affiliated deployment ID by calling a PATCH request on a Stage resource with "op":"copy", "from":"/canarySettings/deploymentId" and "path":"/deploymentId".
  String? get from;
  @override
  List<Object?> get props => [
        op,
        path,
        value,
        from,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PatchOperation')
      ..add(
        'op',
        op,
      )
      ..add(
        'path',
        path,
      )
      ..add(
        'value',
        value,
      )
      ..add(
        'from',
        from,
      );
    return helper.toString();
  }
}

class PatchOperationRestJson1Serializer
    extends _i3.StructuredSmithySerializer<PatchOperation> {
  const PatchOperationRestJson1Serializer() : super('PatchOperation');

  @override
  Iterable<Type> get types => const [
        PatchOperation,
        _$PatchOperation,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  PatchOperation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchOperationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'from':
          result.from = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'op':
          result.op = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Op),
          ) as _i2.Op);
        case 'path':
          result.path = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'value':
          result.value = (serializers.deserialize(
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
    PatchOperation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PatchOperation(:from, :op, :path, :value) = object;
    if (from != null) {
      result$
        ..add('from')
        ..add(serializers.serialize(
          from,
          specifiedType: const FullType(String),
        ));
    }
    if (op != null) {
      result$
        ..add('op')
        ..add(serializers.serialize(
          op,
          specifiedType: const FullType(_i2.Op),
        ));
    }
    if (path != null) {
      result$
        ..add('path')
        ..add(serializers.serialize(
          path,
          specifiedType: const FullType(String),
        ));
    }
    if (value != null) {
      result$
        ..add('value')
        ..add(serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
