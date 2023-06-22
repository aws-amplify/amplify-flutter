// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.detect_stack_drift_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'detect_stack_drift_input.g.dart';

abstract class DetectStackDriftInput
    with
        _i1.HttpInput<DetectStackDriftInput>,
        _i2.AWSEquatable<DetectStackDriftInput>
    implements Built<DetectStackDriftInput, DetectStackDriftInputBuilder> {
  factory DetectStackDriftInput({
    required String stackName,
    List<String>? logicalResourceIds,
  }) {
    return _$DetectStackDriftInput._(
      stackName: stackName,
      logicalResourceIds:
          logicalResourceIds == null ? null : _i3.BuiltList(logicalResourceIds),
    );
  }

  factory DetectStackDriftInput.build(
          [void Function(DetectStackDriftInputBuilder) updates]) =
      _$DetectStackDriftInput;

  const DetectStackDriftInput._();

  factory DetectStackDriftInput.fromRequest(
    DetectStackDriftInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DetectStackDriftInput>> serializers = [
    DetectStackDriftInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DetectStackDriftInputBuilder b) {}

  /// The name of the stack for which you want to detect drift.
  String get stackName;

  /// The logical names of any resources you want to use as filters.
  _i3.BuiltList<String>? get logicalResourceIds;
  @override
  DetectStackDriftInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackName,
        logicalResourceIds,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DetectStackDriftInput')
      ..add(
        'stackName',
        stackName,
      )
      ..add(
        'logicalResourceIds',
        logicalResourceIds,
      );
    return helper.toString();
  }
}

class DetectStackDriftInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DetectStackDriftInput> {
  const DetectStackDriftInputAwsQuerySerializer()
      : super('DetectStackDriftInput');

  @override
  Iterable<Type> get types => const [
        DetectStackDriftInput,
        _$DetectStackDriftInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DetectStackDriftInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DetectStackDriftInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackName':
          result.stackName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LogicalResourceIds':
          result.logicalResourceIds.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DetectStackDriftInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DetectStackDriftInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DetectStackDriftInput(:stackName, :logicalResourceIds) = object;
    result$
      ..add(const _i1.XmlElementName('StackName'))
      ..add(serializers.serialize(
        stackName,
        specifiedType: const FullType(String),
      ));
    if (logicalResourceIds != null) {
      result$
        ..add(const _i1.XmlElementName('LogicalResourceIds'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          logicalResourceIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
