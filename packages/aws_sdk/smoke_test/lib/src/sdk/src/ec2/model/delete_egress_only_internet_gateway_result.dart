// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_egress_only_internet_gateway_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_egress_only_internet_gateway_result.g.dart';

abstract class DeleteEgressOnlyInternetGatewayResult
    with
        _i1.AWSEquatable<DeleteEgressOnlyInternetGatewayResult>
    implements
        Built<DeleteEgressOnlyInternetGatewayResult,
            DeleteEgressOnlyInternetGatewayResultBuilder> {
  factory DeleteEgressOnlyInternetGatewayResult({bool? returnCode}) {
    returnCode ??= false;
    return _$DeleteEgressOnlyInternetGatewayResult._(returnCode: returnCode);
  }

  factory DeleteEgressOnlyInternetGatewayResult.build(
      [void Function(DeleteEgressOnlyInternetGatewayResultBuilder)
          updates]) = _$DeleteEgressOnlyInternetGatewayResult;

  const DeleteEgressOnlyInternetGatewayResult._();

  /// Constructs a [DeleteEgressOnlyInternetGatewayResult] from a [payload] and [response].
  factory DeleteEgressOnlyInternetGatewayResult.fromResponse(
    DeleteEgressOnlyInternetGatewayResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteEgressOnlyInternetGatewayResult>>
      serializers = [DeleteEgressOnlyInternetGatewayResultEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteEgressOnlyInternetGatewayResultBuilder b) {
    b.returnCode = false;
  }

  /// Returns `true` if the request succeeds; otherwise, it returns an error.
  bool get returnCode;
  @override
  List<Object?> get props => [returnCode];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteEgressOnlyInternetGatewayResult')
          ..add(
            'returnCode',
            returnCode,
          );
    return helper.toString();
  }
}

class DeleteEgressOnlyInternetGatewayResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<DeleteEgressOnlyInternetGatewayResult> {
  const DeleteEgressOnlyInternetGatewayResultEc2QuerySerializer()
      : super('DeleteEgressOnlyInternetGatewayResult');

  @override
  Iterable<Type> get types => const [
        DeleteEgressOnlyInternetGatewayResult,
        _$DeleteEgressOnlyInternetGatewayResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteEgressOnlyInternetGatewayResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteEgressOnlyInternetGatewayResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'returnCode':
          result.returnCode = (serializers.deserialize(
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
    DeleteEgressOnlyInternetGatewayResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteEgressOnlyInternetGatewayResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteEgressOnlyInternetGatewayResult(:returnCode) = object;
    result$
      ..add(const _i2.XmlElementName('ReturnCode'))
      ..add(serializers.serialize(
        returnCode,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
