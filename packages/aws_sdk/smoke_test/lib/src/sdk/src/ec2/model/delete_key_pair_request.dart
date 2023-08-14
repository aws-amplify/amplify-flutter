// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_key_pair_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_key_pair_request.g.dart';

abstract class DeleteKeyPairRequest
    with
        _i1.HttpInput<DeleteKeyPairRequest>,
        _i2.AWSEquatable<DeleteKeyPairRequest>
    implements Built<DeleteKeyPairRequest, DeleteKeyPairRequestBuilder> {
  factory DeleteKeyPairRequest({
    String? keyName,
    String? keyPairId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteKeyPairRequest._(
      keyName: keyName,
      keyPairId: keyPairId,
      dryRun: dryRun,
    );
  }

  factory DeleteKeyPairRequest.build(
          [void Function(DeleteKeyPairRequestBuilder) updates]) =
      _$DeleteKeyPairRequest;

  const DeleteKeyPairRequest._();

  factory DeleteKeyPairRequest.fromRequest(
    DeleteKeyPairRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteKeyPairRequest>> serializers = [
    DeleteKeyPairRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteKeyPairRequestBuilder b) {
    b.dryRun = false;
  }

  /// The name of the key pair.
  String? get keyName;

  /// The ID of the key pair.
  String? get keyPairId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteKeyPairRequest getPayload() => this;
  @override
  List<Object?> get props => [
        keyName,
        keyPairId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteKeyPairRequest')
      ..add(
        'keyName',
        keyName,
      )
      ..add(
        'keyPairId',
        keyPairId,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DeleteKeyPairRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteKeyPairRequest> {
  const DeleteKeyPairRequestEc2QuerySerializer()
      : super('DeleteKeyPairRequest');

  @override
  Iterable<Type> get types => const [
        DeleteKeyPairRequest,
        _$DeleteKeyPairRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteKeyPairRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteKeyPairRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'KeyName':
          result.keyName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'KeyPairId':
          result.keyPairId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteKeyPairRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteKeyPairRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteKeyPairRequest(:keyName, :keyPairId, :dryRun) = object;
    if (keyName != null) {
      result$
        ..add(const _i1.XmlElementName('KeyName'))
        ..add(serializers.serialize(
          keyName,
          specifiedType: const FullType(String),
        ));
    }
    if (keyPairId != null) {
      result$
        ..add(const _i1.XmlElementName('KeyPairId'))
        ..add(serializers.serialize(
          keyPairId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
