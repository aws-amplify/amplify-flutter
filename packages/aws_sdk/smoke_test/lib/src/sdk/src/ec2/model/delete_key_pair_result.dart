// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_key_pair_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_key_pair_result.g.dart';

abstract class DeleteKeyPairResult
    with _i1.AWSEquatable<DeleteKeyPairResult>
    implements Built<DeleteKeyPairResult, DeleteKeyPairResultBuilder> {
  factory DeleteKeyPairResult({
    bool? return_,
    String? keyPairId,
  }) {
    return_ ??= false;
    return _$DeleteKeyPairResult._(
      return_: return_,
      keyPairId: keyPairId,
    );
  }

  factory DeleteKeyPairResult.build(
          [void Function(DeleteKeyPairResultBuilder) updates]) =
      _$DeleteKeyPairResult;

  const DeleteKeyPairResult._();

  /// Constructs a [DeleteKeyPairResult] from a [payload] and [response].
  factory DeleteKeyPairResult.fromResponse(
    DeleteKeyPairResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteKeyPairResult>> serializers = [
    DeleteKeyPairResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteKeyPairResultBuilder b) {
    b.return_ = false;
  }

  /// Is `true` if the request succeeds, and an error otherwise.
  bool get return_;

  /// The ID of the key pair.
  String? get keyPairId;
  @override
  List<Object?> get props => [
        return_,
        keyPairId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteKeyPairResult')
      ..add(
        'return_',
        return_,
      )
      ..add(
        'keyPairId',
        keyPairId,
      );
    return helper.toString();
  }
}

class DeleteKeyPairResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteKeyPairResult> {
  const DeleteKeyPairResultEc2QuerySerializer() : super('DeleteKeyPairResult');

  @override
  Iterable<Type> get types => const [
        DeleteKeyPairResult,
        _$DeleteKeyPairResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteKeyPairResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteKeyPairResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'return':
          result.return_ = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'keyPairId':
          result.keyPairId = (serializers.deserialize(
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
    DeleteKeyPairResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteKeyPairResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteKeyPairResult(:return_, :keyPairId) = object;
    result$
      ..add(const _i2.XmlElementName('Return'))
      ..add(serializers.serialize(
        return_,
        specifiedType: const FullType(bool),
      ));
    if (keyPairId != null) {
      result$
        ..add(const _i2.XmlElementName('KeyPairId'))
        ..add(serializers.serialize(
          keyPairId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
