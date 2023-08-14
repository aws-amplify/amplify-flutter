// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_vpc_peering_connection_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_vpc_peering_connection_result.g.dart';

abstract class DeleteVpcPeeringConnectionResult
    with
        _i1.AWSEquatable<DeleteVpcPeeringConnectionResult>
    implements
        Built<DeleteVpcPeeringConnectionResult,
            DeleteVpcPeeringConnectionResultBuilder> {
  factory DeleteVpcPeeringConnectionResult({bool? return_}) {
    return_ ??= false;
    return _$DeleteVpcPeeringConnectionResult._(return_: return_);
  }

  factory DeleteVpcPeeringConnectionResult.build(
          [void Function(DeleteVpcPeeringConnectionResultBuilder) updates]) =
      _$DeleteVpcPeeringConnectionResult;

  const DeleteVpcPeeringConnectionResult._();

  /// Constructs a [DeleteVpcPeeringConnectionResult] from a [payload] and [response].
  factory DeleteVpcPeeringConnectionResult.fromResponse(
    DeleteVpcPeeringConnectionResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteVpcPeeringConnectionResult>>
      serializers = [DeleteVpcPeeringConnectionResultEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteVpcPeeringConnectionResultBuilder b) {
    b.return_ = false;
  }

  /// Returns `true` if the request succeeds; otherwise, it returns an error.
  bool get return_;
  @override
  List<Object?> get props => [return_];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteVpcPeeringConnectionResult')
          ..add(
            'return_',
            return_,
          );
    return helper.toString();
  }
}

class DeleteVpcPeeringConnectionResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteVpcPeeringConnectionResult> {
  const DeleteVpcPeeringConnectionResultEc2QuerySerializer()
      : super('DeleteVpcPeeringConnectionResult');

  @override
  Iterable<Type> get types => const [
        DeleteVpcPeeringConnectionResult,
        _$DeleteVpcPeeringConnectionResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteVpcPeeringConnectionResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteVpcPeeringConnectionResultBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteVpcPeeringConnectionResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteVpcPeeringConnectionResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteVpcPeeringConnectionResult(:return_) = object;
    result$
      ..add(const _i2.XmlElementName('Return'))
      ..add(serializers.serialize(
        return_,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
