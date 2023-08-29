// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.get_template_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/template_stage.dart';

part 'get_template_output.g.dart';

/// The output for GetTemplate action.
abstract class GetTemplateOutput
    with _i1.AWSEquatable<GetTemplateOutput>
    implements Built<GetTemplateOutput, GetTemplateOutputBuilder> {
  /// The output for GetTemplate action.
  factory GetTemplateOutput({
    String? templateBody,
    List<TemplateStage>? stagesAvailable,
  }) {
    return _$GetTemplateOutput._(
      templateBody: templateBody,
      stagesAvailable:
          stagesAvailable == null ? null : _i2.BuiltList(stagesAvailable),
    );
  }

  /// The output for GetTemplate action.
  factory GetTemplateOutput.build(
      [void Function(GetTemplateOutputBuilder) updates]) = _$GetTemplateOutput;

  const GetTemplateOutput._();

  /// Constructs a [GetTemplateOutput] from a [payload] and [response].
  factory GetTemplateOutput.fromResponse(
    GetTemplateOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetTemplateOutput>> serializers = [
    GetTemplateOutputAwsQuerySerializer()
  ];

  /// Structure containing the template body. (For more information, go to [Template Anatomy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the CloudFormation User Guide.)
  ///
  /// CloudFormation returns the same template that was used when the stack was created.
  String? get templateBody;

  /// The stage of the template that you can retrieve. For stacks, the `Original` and `Processed` templates are always available. For change sets, the `Original` template is always available. After CloudFormation finishes creating the change set, the `Processed` template becomes available.
  _i2.BuiltList<TemplateStage>? get stagesAvailable;
  @override
  List<Object?> get props => [
        templateBody,
        stagesAvailable,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetTemplateOutput')
      ..add(
        'templateBody',
        templateBody,
      )
      ..add(
        'stagesAvailable',
        stagesAvailable,
      );
    return helper.toString();
  }
}

class GetTemplateOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<GetTemplateOutput> {
  const GetTemplateOutputAwsQuerySerializer() : super('GetTemplateOutput');

  @override
  Iterable<Type> get types => const [
        GetTemplateOutput,
        _$GetTemplateOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetTemplateOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTemplateOutputBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TemplateBody':
          result.templateBody = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StagesAvailable':
          result.stagesAvailable.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TemplateStage)],
            ),
          ) as _i2.BuiltList<TemplateStage>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetTemplateOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetTemplateOutputResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final GetTemplateOutput(:templateBody, :stagesAvailable) = object;
    if (templateBody != null) {
      result$
        ..add(const _i3.XmlElementName('TemplateBody'))
        ..add(serializers.serialize(
          templateBody,
          specifiedType: const FullType(String),
        ));
    }
    if (stagesAvailable != null) {
      result$
        ..add(const _i3.XmlElementName('StagesAvailable'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          stagesAvailable,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(TemplateStage)],
          ),
        ));
    }
    return result$;
  }
}
