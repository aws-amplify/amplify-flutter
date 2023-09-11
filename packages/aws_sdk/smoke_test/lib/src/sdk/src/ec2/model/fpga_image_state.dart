// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fpga_image_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_image_state_code.dart';

part 'fpga_image_state.g.dart';

/// Describes the state of the bitstream generation process for an Amazon FPGA image (AFI).
abstract class FpgaImageState
    with _i1.AWSEquatable<FpgaImageState>
    implements Built<FpgaImageState, FpgaImageStateBuilder> {
  /// Describes the state of the bitstream generation process for an Amazon FPGA image (AFI).
  factory FpgaImageState({
    FpgaImageStateCode? code,
    String? message,
  }) {
    return _$FpgaImageState._(
      code: code,
      message: message,
    );
  }

  /// Describes the state of the bitstream generation process for an Amazon FPGA image (AFI).
  factory FpgaImageState.build([void Function(FpgaImageStateBuilder) updates]) =
      _$FpgaImageState;

  const FpgaImageState._();

  static const List<_i2.SmithySerializer<FpgaImageState>> serializers = [
    FpgaImageStateEc2QuerySerializer()
  ];

  /// The state. The following are the possible values:
  ///
  /// *   `pending` \- AFI bitstream generation is in progress.
  ///
  /// *   `available` \- The AFI is available for use.
  ///
  /// *   `failed` \- AFI bitstream generation failed.
  ///
  /// *   `unavailable` \- The AFI is no longer available for use.
  FpgaImageStateCode? get code;

  /// If the state is `failed`, this is the error message.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FpgaImageState')
      ..add(
        'code',
        code,
      )
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class FpgaImageStateEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<FpgaImageState> {
  const FpgaImageStateEc2QuerySerializer() : super('FpgaImageState');

  @override
  Iterable<Type> get types => const [
        FpgaImageState,
        _$FpgaImageState,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FpgaImageState deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FpgaImageStateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'code':
          result.code = (serializers.deserialize(
            value,
            specifiedType: const FullType(FpgaImageStateCode),
          ) as FpgaImageStateCode);
        case 'message':
          result.message = (serializers.deserialize(
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
    FpgaImageState object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'FpgaImageStateResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final FpgaImageState(:code, :message) = object;
    if (code != null) {
      result$
        ..add(const _i2.XmlElementName('Code'))
        ..add(serializers.serialize(
          code,
          specifiedType: const FullType(FpgaImageStateCode),
        ));
    }
    if (message != null) {
      result$
        ..add(const _i2.XmlElementName('Message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
