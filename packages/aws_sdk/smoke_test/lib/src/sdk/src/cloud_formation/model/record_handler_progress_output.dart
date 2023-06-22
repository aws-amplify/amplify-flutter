// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.record_handler_progress_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'record_handler_progress_output.g.dart';

abstract class RecordHandlerProgressOutput
    with _i1.AWSEquatable<RecordHandlerProgressOutput>
    implements
        Built<RecordHandlerProgressOutput, RecordHandlerProgressOutputBuilder>,
        _i2.EmptyPayload {
  factory RecordHandlerProgressOutput() {
    return _$RecordHandlerProgressOutput._();
  }

  factory RecordHandlerProgressOutput.build(
          [void Function(RecordHandlerProgressOutputBuilder) updates]) =
      _$RecordHandlerProgressOutput;

  const RecordHandlerProgressOutput._();

  /// Constructs a [RecordHandlerProgressOutput] from a [payload] and [response].
  factory RecordHandlerProgressOutput.fromResponse(
    RecordHandlerProgressOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<RecordHandlerProgressOutput>>
      serializers = [RecordHandlerProgressOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RecordHandlerProgressOutputBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RecordHandlerProgressOutput');
    return helper.toString();
  }
}

class RecordHandlerProgressOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<RecordHandlerProgressOutput> {
  const RecordHandlerProgressOutputAwsQuerySerializer()
      : super('RecordHandlerProgressOutput');

  @override
  Iterable<Type> get types => const [
        RecordHandlerProgressOutput,
        _$RecordHandlerProgressOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  RecordHandlerProgressOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return RecordHandlerProgressOutputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RecordHandlerProgressOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RecordHandlerProgressOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];

    return result$;
  }
}
