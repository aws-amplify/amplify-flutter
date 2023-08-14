// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.cancel_image_launch_permission_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'cancel_image_launch_permission_result.g.dart';

abstract class CancelImageLaunchPermissionResult
    with
        _i1.AWSEquatable<CancelImageLaunchPermissionResult>
    implements
        Built<CancelImageLaunchPermissionResult,
            CancelImageLaunchPermissionResultBuilder> {
  factory CancelImageLaunchPermissionResult({bool? return_}) {
    return_ ??= false;
    return _$CancelImageLaunchPermissionResult._(return_: return_);
  }

  factory CancelImageLaunchPermissionResult.build(
          [void Function(CancelImageLaunchPermissionResultBuilder) updates]) =
      _$CancelImageLaunchPermissionResult;

  const CancelImageLaunchPermissionResult._();

  /// Constructs a [CancelImageLaunchPermissionResult] from a [payload] and [response].
  factory CancelImageLaunchPermissionResult.fromResponse(
    CancelImageLaunchPermissionResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CancelImageLaunchPermissionResult>>
      serializers = [CancelImageLaunchPermissionResultEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CancelImageLaunchPermissionResultBuilder b) {
    b.return_ = false;
  }

  /// Returns `true` if the request succeeds; otherwise, it returns an error.
  bool get return_;
  @override
  List<Object?> get props => [return_];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CancelImageLaunchPermissionResult')
          ..add(
            'return_',
            return_,
          );
    return helper.toString();
  }
}

class CancelImageLaunchPermissionResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CancelImageLaunchPermissionResult> {
  const CancelImageLaunchPermissionResultEc2QuerySerializer()
      : super('CancelImageLaunchPermissionResult');

  @override
  Iterable<Type> get types => const [
        CancelImageLaunchPermissionResult,
        _$CancelImageLaunchPermissionResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelImageLaunchPermissionResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelImageLaunchPermissionResultBuilder();
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
    CancelImageLaunchPermissionResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CancelImageLaunchPermissionResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CancelImageLaunchPermissionResult(:return_) = object;
    result$
      ..add(const _i2.XmlElementName('Return'))
      ..add(serializers.serialize(
        return_,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
