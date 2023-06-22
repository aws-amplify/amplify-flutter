// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.continue_update_rollback_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'continue_update_rollback_output.g.dart';

/// The output for a ContinueUpdateRollback operation.
abstract class ContinueUpdateRollbackOutput
    with
        _i1.AWSEquatable<ContinueUpdateRollbackOutput>
    implements
        Built<ContinueUpdateRollbackOutput,
            ContinueUpdateRollbackOutputBuilder>,
        _i2.EmptyPayload {
  /// The output for a ContinueUpdateRollback operation.
  factory ContinueUpdateRollbackOutput() {
    return _$ContinueUpdateRollbackOutput._();
  }

  /// The output for a ContinueUpdateRollback operation.
  factory ContinueUpdateRollbackOutput.build(
          [void Function(ContinueUpdateRollbackOutputBuilder) updates]) =
      _$ContinueUpdateRollbackOutput;

  const ContinueUpdateRollbackOutput._();

  /// Constructs a [ContinueUpdateRollbackOutput] from a [payload] and [response].
  factory ContinueUpdateRollbackOutput.fromResponse(
    ContinueUpdateRollbackOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ContinueUpdateRollbackOutput>>
      serializers = [ContinueUpdateRollbackOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ContinueUpdateRollbackOutputBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ContinueUpdateRollbackOutput');
    return helper.toString();
  }
}

class ContinueUpdateRollbackOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<ContinueUpdateRollbackOutput> {
  const ContinueUpdateRollbackOutputAwsQuerySerializer()
      : super('ContinueUpdateRollbackOutput');

  @override
  Iterable<Type> get types => const [
        ContinueUpdateRollbackOutput,
        _$ContinueUpdateRollbackOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ContinueUpdateRollbackOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ContinueUpdateRollbackOutputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ContinueUpdateRollbackOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ContinueUpdateRollbackOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];

    return result$;
  }
}
