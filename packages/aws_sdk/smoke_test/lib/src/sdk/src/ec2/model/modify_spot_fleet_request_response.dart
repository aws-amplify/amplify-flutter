// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_spot_fleet_request_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'modify_spot_fleet_request_response.g.dart';

/// Contains the output of ModifySpotFleetRequest.
abstract class ModifySpotFleetRequestResponse
    with
        _i1.AWSEquatable<ModifySpotFleetRequestResponse>
    implements
        Built<ModifySpotFleetRequestResponse,
            ModifySpotFleetRequestResponseBuilder> {
  /// Contains the output of ModifySpotFleetRequest.
  factory ModifySpotFleetRequestResponse({bool? return_}) {
    return_ ??= false;
    return _$ModifySpotFleetRequestResponse._(return_: return_);
  }

  /// Contains the output of ModifySpotFleetRequest.
  factory ModifySpotFleetRequestResponse.build(
          [void Function(ModifySpotFleetRequestResponseBuilder) updates]) =
      _$ModifySpotFleetRequestResponse;

  const ModifySpotFleetRequestResponse._();

  /// Constructs a [ModifySpotFleetRequestResponse] from a [payload] and [response].
  factory ModifySpotFleetRequestResponse.fromResponse(
    ModifySpotFleetRequestResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifySpotFleetRequestResponse>>
      serializers = [ModifySpotFleetRequestResponseEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifySpotFleetRequestResponseBuilder b) {
    b.return_ = false;
  }

  /// If the request succeeds, the response returns `true`. If the request fails, no response is returned, and instead an error message is returned.
  bool get return_;
  @override
  List<Object?> get props => [return_];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifySpotFleetRequestResponse')
      ..add(
        'return_',
        return_,
      );
    return helper.toString();
  }
}

class ModifySpotFleetRequestResponseEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifySpotFleetRequestResponse> {
  const ModifySpotFleetRequestResponseEc2QuerySerializer()
      : super('ModifySpotFleetRequestResponse');

  @override
  Iterable<Type> get types => const [
        ModifySpotFleetRequestResponse,
        _$ModifySpotFleetRequestResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifySpotFleetRequestResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifySpotFleetRequestResponseBuilder();
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
    ModifySpotFleetRequestResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifySpotFleetRequestResponseResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifySpotFleetRequestResponse(:return_) = object;
    result$
      ..add(const _i2.XmlElementName('Return'))
      ..add(serializers.serialize(
        return_,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
