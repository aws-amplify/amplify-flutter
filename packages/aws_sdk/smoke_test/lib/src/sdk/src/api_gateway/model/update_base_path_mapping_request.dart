// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.model.update_base_path_mapping_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/patch_operation.dart';

part 'update_base_path_mapping_request.g.dart';

/// A request to change information about the BasePathMapping resource.
abstract class UpdateBasePathMappingRequest
    with
        _i1.HttpInput<UpdateBasePathMappingRequestPayload>,
        _i2.AWSEquatable<UpdateBasePathMappingRequest>
    implements
        Built<UpdateBasePathMappingRequest,
            UpdateBasePathMappingRequestBuilder>,
        _i1.HasPayload<UpdateBasePathMappingRequestPayload> {
  /// A request to change information about the BasePathMapping resource.
  factory UpdateBasePathMappingRequest({
    required String domainName,
    required String basePath,
    List<PatchOperation>? patchOperations,
  }) {
    return _$UpdateBasePathMappingRequest._(
      domainName: domainName,
      basePath: basePath,
      patchOperations:
          patchOperations == null ? null : _i3.BuiltList(patchOperations),
    );
  }

  /// A request to change information about the BasePathMapping resource.
  factory UpdateBasePathMappingRequest.build(
          [void Function(UpdateBasePathMappingRequestBuilder) updates]) =
      _$UpdateBasePathMappingRequest;

  const UpdateBasePathMappingRequest._();

  factory UpdateBasePathMappingRequest.fromRequest(
    UpdateBasePathMappingRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UpdateBasePathMappingRequest.build((b) {
        if (payload.patchOperations != null) {
          b.patchOperations.replace(payload.patchOperations!);
        }
        if (labels['domainName'] != null) {
          b.domainName = labels['domainName']!;
        }
        if (labels['basePath'] != null) {
          b.basePath = labels['basePath']!;
        }
      });

  static const List<_i1.SmithySerializer<UpdateBasePathMappingRequestPayload>>
      serializers = [UpdateBasePathMappingRequestRestJson1Serializer()];

  /// The domain name of the BasePathMapping resource to change.
  String get domainName;

  /// The base path of the BasePathMapping resource to change.
  ///
  /// To specify an empty base path, set this parameter to `'(none)'`.
  String get basePath;

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i3.BuiltList<PatchOperation>? get patchOperations;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'domainName':
        return domainName;
      case 'basePath':
        return basePath;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  UpdateBasePathMappingRequestPayload getPayload() =>
      UpdateBasePathMappingRequestPayload((b) {
        if (patchOperations != null) {
          b.patchOperations.replace(patchOperations!);
        }
      });
  @override
  List<Object?> get props => [
        domainName,
        basePath,
        patchOperations,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateBasePathMappingRequest')
      ..add(
        'domainName',
        domainName,
      )
      ..add(
        'basePath',
        basePath,
      )
      ..add(
        'patchOperations',
        patchOperations,
      );
    return helper.toString();
  }
}

@_i4.internal
abstract class UpdateBasePathMappingRequestPayload
    with
        _i2.AWSEquatable<UpdateBasePathMappingRequestPayload>
    implements
        Built<UpdateBasePathMappingRequestPayload,
            UpdateBasePathMappingRequestPayloadBuilder> {
  factory UpdateBasePathMappingRequestPayload(
          [void Function(UpdateBasePathMappingRequestPayloadBuilder) updates]) =
      _$UpdateBasePathMappingRequestPayload;

  const UpdateBasePathMappingRequestPayload._();

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i3.BuiltList<PatchOperation>? get patchOperations;
  @override
  List<Object?> get props => [patchOperations];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateBasePathMappingRequestPayload')
          ..add(
            'patchOperations',
            patchOperations,
          );
    return helper.toString();
  }
}

class UpdateBasePathMappingRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<UpdateBasePathMappingRequestPayload> {
  const UpdateBasePathMappingRequestRestJson1Serializer()
      : super('UpdateBasePathMappingRequest');

  @override
  Iterable<Type> get types => const [
        UpdateBasePathMappingRequest,
        _$UpdateBasePathMappingRequest,
        UpdateBasePathMappingRequestPayload,
        _$UpdateBasePathMappingRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UpdateBasePathMappingRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateBasePathMappingRequestPayloadBuilder();
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
              _i3.BuiltList,
              [FullType(PatchOperation)],
            ),
          ) as _i3.BuiltList<PatchOperation>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateBasePathMappingRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateBasePathMappingRequestPayload(:patchOperations) = object;
    if (patchOperations != null) {
      result$
        ..add('patchOperations')
        ..add(serializers.serialize(
          patchOperations,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(PatchOperation)],
          ),
        ));
    }
    return result$;
  }
}
