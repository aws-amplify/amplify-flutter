// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.update_account_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/patch_operation.dart'
    as _i3;

part 'update_account_request.g.dart';

/// Requests API Gateway to change information about the current Account resource.
abstract class UpdateAccountRequest
    with
        _i1.HttpInput<UpdateAccountRequest>,
        _i2.AWSEquatable<UpdateAccountRequest>
    implements Built<UpdateAccountRequest, UpdateAccountRequestBuilder> {
  /// Requests API Gateway to change information about the current Account resource.
  factory UpdateAccountRequest({List<_i3.PatchOperation>? patchOperations}) {
    return _$UpdateAccountRequest._(
        patchOperations:
            patchOperations == null ? null : _i4.BuiltList(patchOperations));
  }

  /// Requests API Gateway to change information about the current Account resource.
  factory UpdateAccountRequest.build(
          [void Function(UpdateAccountRequestBuilder) updates]) =
      _$UpdateAccountRequest;

  const UpdateAccountRequest._();

  factory UpdateAccountRequest.fromRequest(
    UpdateAccountRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UpdateAccountRequest>> serializers = [
    UpdateAccountRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateAccountRequestBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
  @override
  UpdateAccountRequest getPayload() => this;
  @override
  List<Object?> get props => [patchOperations];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateAccountRequest')
      ..add(
        'patchOperations',
        patchOperations,
      );
    return helper.toString();
  }
}

class UpdateAccountRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<UpdateAccountRequest> {
  const UpdateAccountRequestRestJson1Serializer()
      : super('UpdateAccountRequest');

  @override
  Iterable<Type> get types => const [
        UpdateAccountRequest,
        _$UpdateAccountRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UpdateAccountRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateAccountRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'patchOperations':
          result.patchOperations.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.PatchOperation)],
            ),
          ) as _i4.BuiltList<_i3.PatchOperation>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateAccountRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateAccountRequest(:patchOperations) = object;
    if (patchOperations != null) {
      result$
        ..add('patchOperations')
        ..add(serializers.serialize(
          patchOperations,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.PatchOperation)],
          ),
        ));
    }
    return result$;
  }
}
