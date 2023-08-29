// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.cancel_conversion_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'cancel_conversion_request.g.dart';

abstract class CancelConversionRequest
    with
        _i1.HttpInput<CancelConversionRequest>,
        _i2.AWSEquatable<CancelConversionRequest>
    implements Built<CancelConversionRequest, CancelConversionRequestBuilder> {
  factory CancelConversionRequest({
    String? conversionTaskId,
    bool? dryRun,
    String? reasonMessage,
  }) {
    dryRun ??= false;
    return _$CancelConversionRequest._(
      conversionTaskId: conversionTaskId,
      dryRun: dryRun,
      reasonMessage: reasonMessage,
    );
  }

  factory CancelConversionRequest.build(
          [void Function(CancelConversionRequestBuilder) updates]) =
      _$CancelConversionRequest;

  const CancelConversionRequest._();

  factory CancelConversionRequest.fromRequest(
    CancelConversionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CancelConversionRequest>> serializers =
      [CancelConversionRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CancelConversionRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the conversion task.
  String? get conversionTaskId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The reason for canceling the conversion task.
  String? get reasonMessage;
  @override
  CancelConversionRequest getPayload() => this;
  @override
  List<Object?> get props => [
        conversionTaskId,
        dryRun,
        reasonMessage,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CancelConversionRequest')
      ..add(
        'conversionTaskId',
        conversionTaskId,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'reasonMessage',
        reasonMessage,
      );
    return helper.toString();
  }
}

class CancelConversionRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CancelConversionRequest> {
  const CancelConversionRequestEc2QuerySerializer()
      : super('CancelConversionRequest');

  @override
  Iterable<Type> get types => const [
        CancelConversionRequest,
        _$CancelConversionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelConversionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelConversionRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'conversionTaskId':
          result.conversionTaskId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'reasonMessage':
          result.reasonMessage = (serializers.deserialize(
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
    CancelConversionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CancelConversionRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CancelConversionRequest(:conversionTaskId, :dryRun, :reasonMessage) =
        object;
    if (conversionTaskId != null) {
      result$
        ..add(const _i1.XmlElementName('ConversionTaskId'))
        ..add(serializers.serialize(
          conversionTaskId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (reasonMessage != null) {
      result$
        ..add(const _i1.XmlElementName('ReasonMessage'))
        ..add(serializers.serialize(
          reasonMessage,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
