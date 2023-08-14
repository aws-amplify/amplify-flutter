// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_network_interface_permission_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_network_interface_permission_result.g.dart';

/// Contains the output for DeleteNetworkInterfacePermission.
abstract class DeleteNetworkInterfacePermissionResult
    with
        _i1.AWSEquatable<DeleteNetworkInterfacePermissionResult>
    implements
        Built<DeleteNetworkInterfacePermissionResult,
            DeleteNetworkInterfacePermissionResultBuilder> {
  /// Contains the output for DeleteNetworkInterfacePermission.
  factory DeleteNetworkInterfacePermissionResult({bool? return_}) {
    return_ ??= false;
    return _$DeleteNetworkInterfacePermissionResult._(return_: return_);
  }

  /// Contains the output for DeleteNetworkInterfacePermission.
  factory DeleteNetworkInterfacePermissionResult.build(
      [void Function(DeleteNetworkInterfacePermissionResultBuilder)
          updates]) = _$DeleteNetworkInterfacePermissionResult;

  const DeleteNetworkInterfacePermissionResult._();

  /// Constructs a [DeleteNetworkInterfacePermissionResult] from a [payload] and [response].
  factory DeleteNetworkInterfacePermissionResult.fromResponse(
    DeleteNetworkInterfacePermissionResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<DeleteNetworkInterfacePermissionResult>>
      serializers = [
    DeleteNetworkInterfacePermissionResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteNetworkInterfacePermissionResultBuilder b) {
    b.return_ = false;
  }

  /// Returns `true` if the request succeeds, otherwise returns an error.
  bool get return_;
  @override
  List<Object?> get props => [return_];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteNetworkInterfacePermissionResult')
          ..add(
            'return_',
            return_,
          );
    return helper.toString();
  }
}

class DeleteNetworkInterfacePermissionResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<DeleteNetworkInterfacePermissionResult> {
  const DeleteNetworkInterfacePermissionResultEc2QuerySerializer()
      : super('DeleteNetworkInterfacePermissionResult');

  @override
  Iterable<Type> get types => const [
        DeleteNetworkInterfacePermissionResult,
        _$DeleteNetworkInterfacePermissionResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteNetworkInterfacePermissionResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteNetworkInterfacePermissionResultBuilder();
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
    DeleteNetworkInterfacePermissionResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteNetworkInterfacePermissionResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteNetworkInterfacePermissionResult(:return_) = object;
    result$
      ..add(const _i2.XmlElementName('Return'))
      ..add(serializers.serialize(
        return_,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
