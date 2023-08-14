// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_serial_console_access_status_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_serial_console_access_status_request.g.dart';

abstract class GetSerialConsoleAccessStatusRequest
    with
        _i1.HttpInput<GetSerialConsoleAccessStatusRequest>,
        _i2.AWSEquatable<GetSerialConsoleAccessStatusRequest>
    implements
        Built<GetSerialConsoleAccessStatusRequest,
            GetSerialConsoleAccessStatusRequestBuilder> {
  factory GetSerialConsoleAccessStatusRequest({bool? dryRun}) {
    dryRun ??= false;
    return _$GetSerialConsoleAccessStatusRequest._(dryRun: dryRun);
  }

  factory GetSerialConsoleAccessStatusRequest.build(
          [void Function(GetSerialConsoleAccessStatusRequestBuilder) updates]) =
      _$GetSerialConsoleAccessStatusRequest;

  const GetSerialConsoleAccessStatusRequest._();

  factory GetSerialConsoleAccessStatusRequest.fromRequest(
    GetSerialConsoleAccessStatusRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetSerialConsoleAccessStatusRequest>>
      serializers = [GetSerialConsoleAccessStatusRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetSerialConsoleAccessStatusRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  GetSerialConsoleAccessStatusRequest getPayload() => this;
  @override
  List<Object?> get props => [dryRun];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetSerialConsoleAccessStatusRequest')
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class GetSerialConsoleAccessStatusRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<GetSerialConsoleAccessStatusRequest> {
  const GetSerialConsoleAccessStatusRequestEc2QuerySerializer()
      : super('GetSerialConsoleAccessStatusRequest');

  @override
  Iterable<Type> get types => const [
        GetSerialConsoleAccessStatusRequest,
        _$GetSerialConsoleAccessStatusRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetSerialConsoleAccessStatusRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSerialConsoleAccessStatusRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
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
    GetSerialConsoleAccessStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetSerialConsoleAccessStatusRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetSerialConsoleAccessStatusRequest(:dryRun) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
