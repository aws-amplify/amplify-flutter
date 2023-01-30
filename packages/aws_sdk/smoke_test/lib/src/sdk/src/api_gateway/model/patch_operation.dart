// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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
    String? from,
    _i2.Op? op,
    String? path,
    String? value,
  }) {
    return _$PatchOperation._(
      from: from,
      op: op,
      path: path,
      value: value,
    );
  }

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  factory PatchOperation.build([void Function(PatchOperationBuilder) updates]) =
      _$PatchOperation;

  const PatchOperation._();

  static const List<_i3.SmithySerializer> serializers = [
    PatchOperationRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PatchOperationBuilder b) {}

  /// The copy update operation's source as identified by a JSON-Pointer value referencing the location within the targeted resource to copy the value from. For example, to promote a canary deployment, you copy the canary deployment ID to the affiliated deployment ID by calling a PATCH request on a Stage resource with "op":"copy", "from":"/canarySettings/deploymentId" and "path":"/deploymentId".
  String? get from;

  /// An update operation to be performed with this PATCH request. The valid value can be add, remove, replace or copy. Not all valid operations are supported for a given resource. Support of the operations depends on specific operational contexts. Attempts to apply an unsupported operation on a resource will return an error message..
  _i2.Op? get op;

  /// The op operation's target, as identified by a JSON Pointer value that references a location within the targeted resource. For example, if the target resource has an updateable property of {"name":"value"}, the path for this property is /name. If the name property value is a JSON object (e.g., {"name": {"child/name": "child-value"}}), the path for the child/name property will be /name/child~1name. Any slash ("/") character appearing in path names must be escaped with "~1", as shown in the example above. Each op operation can have only one path associated with it.
  String? get path;

  /// The new target value of the update operation. It is applicable for the add or replace operation. When using AWS CLI to update a property of a JSON value, enclose the JSON object with a pair of single quotes in a Linux shell, e.g., '{"a": ...}'.
  String? get value;
  @override
  List<Object?> get props => [
        from,
        op,
        path,
        value,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PatchOperation');
    helper.add(
      'from',
      from,
    );
    helper.add(
      'op',
      op,
    );
    helper.add(
      'path',
      path,
    );
    helper.add(
      'value',
      value,
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
      switch (key) {
        case 'from':
          if (value != null) {
            result.from = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'op':
          if (value != null) {
            result.op = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Op),
            ) as _i2.Op);
          }
          break;
        case 'path':
          if (value != null) {
            result.path = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'value':
          if (value != null) {
            result.value = (serializers.deserialize(
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
    final payload = (object as PatchOperation);
    final result = <Object?>[];
    if (payload.from != null) {
      result
        ..add('from')
        ..add(serializers.serialize(
          payload.from!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.op != null) {
      result
        ..add('op')
        ..add(serializers.serialize(
          payload.op!,
          specifiedType: const FullType(_i2.Op),
        ));
    }
    if (payload.path != null) {
      result
        ..add('path')
        ..add(serializers.serialize(
          payload.path!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(
          payload.value!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
