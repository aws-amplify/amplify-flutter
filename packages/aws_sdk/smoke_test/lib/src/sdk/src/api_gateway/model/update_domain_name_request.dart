// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.update_domain_name_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/patch_operation.dart'
    as _i3;

part 'update_domain_name_request.g.dart';

/// A request to change information about the DomainName resource.
abstract class UpdateDomainNameRequest
    with
        _i1.HttpInput<UpdateDomainNameRequestPayload>,
        _i2.AWSEquatable<UpdateDomainNameRequest>
    implements
        Built<UpdateDomainNameRequest, UpdateDomainNameRequestBuilder>,
        _i1.HasPayload<UpdateDomainNameRequestPayload> {
  /// A request to change information about the DomainName resource.
  factory UpdateDomainNameRequest({
    required String domainName,
    List<_i3.PatchOperation>? patchOperations,
  }) {
    return _$UpdateDomainNameRequest._(
      domainName: domainName,
      patchOperations:
          patchOperations == null ? null : _i4.BuiltList(patchOperations),
    );
  }

  /// A request to change information about the DomainName resource.
  factory UpdateDomainNameRequest.build(
          [void Function(UpdateDomainNameRequestBuilder) updates]) =
      _$UpdateDomainNameRequest;

  const UpdateDomainNameRequest._();

  factory UpdateDomainNameRequest.fromRequest(
    UpdateDomainNameRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UpdateDomainNameRequest.build((b) {
        if (payload.patchOperations != null) {
          b.patchOperations.replace(payload.patchOperations!);
        }
        if (labels['domainName'] != null) {
          b.domainName = labels['domainName']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    UpdateDomainNameRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateDomainNameRequestBuilder b) {}

  /// The name of the DomainName resource to be changed.
  String get domainName;

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'domainName':
        return domainName;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  UpdateDomainNameRequestPayload getPayload() =>
      UpdateDomainNameRequestPayload((b) {
        if (patchOperations != null) {
          b.patchOperations.replace(patchOperations!);
        }
      });
  @override
  List<Object?> get props => [
        domainName,
        patchOperations,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateDomainNameRequest');
    helper.add(
      'domainName',
      domainName,
    );
    helper.add(
      'patchOperations',
      patchOperations,
    );
    return helper.toString();
  }
}

@_i5.internal
abstract class UpdateDomainNameRequestPayload
    with
        _i2.AWSEquatable<UpdateDomainNameRequestPayload>
    implements
        Built<UpdateDomainNameRequestPayload,
            UpdateDomainNameRequestPayloadBuilder> {
  factory UpdateDomainNameRequestPayload(
          [void Function(UpdateDomainNameRequestPayloadBuilder) updates]) =
      _$UpdateDomainNameRequestPayload;

  const UpdateDomainNameRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateDomainNameRequestPayloadBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
  @override
  List<Object?> get props => [patchOperations];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateDomainNameRequestPayload');
    helper.add(
      'patchOperations',
      patchOperations,
    );
    return helper.toString();
  }
}

class UpdateDomainNameRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<UpdateDomainNameRequestPayload> {
  const UpdateDomainNameRequestRestJson1Serializer()
      : super('UpdateDomainNameRequest');

  @override
  Iterable<Type> get types => const [
        UpdateDomainNameRequest,
        _$UpdateDomainNameRequest,
        UpdateDomainNameRequestPayload,
        _$UpdateDomainNameRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UpdateDomainNameRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateDomainNameRequestPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'patchOperations':
          if (value != null) {
            result.patchOperations.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.PatchOperation)],
              ),
            ) as _i4.BuiltList<_i3.PatchOperation>));
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
    final payload = object is UpdateDomainNameRequest
        ? object.getPayload()
        : (object as UpdateDomainNameRequestPayload);
    final result = <Object?>[];
    if (payload.patchOperations != null) {
      result
        ..add('patchOperations')
        ..add(serializers.serialize(
          payload.patchOperations!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.PatchOperation)],
          ),
        ));
    }
    return result;
  }
}
