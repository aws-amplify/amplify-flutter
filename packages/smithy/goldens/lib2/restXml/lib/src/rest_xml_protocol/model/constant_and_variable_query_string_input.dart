// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_xml_v2.rest_xml_protocol.model.constant_and_variable_query_string_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'constant_and_variable_query_string_input.g.dart';

abstract class ConstantAndVariableQueryStringInput
    with
        _i1.HttpInput<ConstantAndVariableQueryStringInputPayload>,
        _i2.AWSEquatable<ConstantAndVariableQueryStringInput>
    implements
        Built<ConstantAndVariableQueryStringInput,
            ConstantAndVariableQueryStringInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<ConstantAndVariableQueryStringInputPayload> {
  factory ConstantAndVariableQueryStringInput({String? baz, String? maybeSet}) {
    return _$ConstantAndVariableQueryStringInput._(
        baz: baz, maybeSet: maybeSet);
  }

  factory ConstantAndVariableQueryStringInput.build(
          [void Function(ConstantAndVariableQueryStringInputBuilder) updates]) =
      _$ConstantAndVariableQueryStringInput;

  const ConstantAndVariableQueryStringInput._();

  factory ConstantAndVariableQueryStringInput.fromRequest(
          ConstantAndVariableQueryStringInputPayload payload,
          _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      ConstantAndVariableQueryStringInput.build((b) {
        if (request.queryParameters['baz'] != null) {
          b.baz = request.queryParameters['baz']!;
        }
        if (request.queryParameters['maybeSet'] != null) {
          b.maybeSet = request.queryParameters['maybeSet']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    ConstantAndVariableQueryStringInputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConstantAndVariableQueryStringInputBuilder b) {}
  String? get baz;
  String? get maybeSet;
  @override
  ConstantAndVariableQueryStringInputPayload getPayload() =>
      ConstantAndVariableQueryStringInputPayload();
  @override
  List<Object?> get props => [baz, maybeSet];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ConstantAndVariableQueryStringInput');
    helper.add('baz', baz);
    helper.add('maybeSet', maybeSet);
    return helper.toString();
  }
}

@_i3.internal
abstract class ConstantAndVariableQueryStringInputPayload
    with
        _i2.AWSEquatable<ConstantAndVariableQueryStringInputPayload>
    implements
        Built<ConstantAndVariableQueryStringInputPayload,
            ConstantAndVariableQueryStringInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory ConstantAndVariableQueryStringInputPayload(
      [void Function(ConstantAndVariableQueryStringInputPayloadBuilder)
          updates]) = _$ConstantAndVariableQueryStringInputPayload;

  const ConstantAndVariableQueryStringInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConstantAndVariableQueryStringInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ConstantAndVariableQueryStringInputPayload');
    return helper.toString();
  }
}

class ConstantAndVariableQueryStringInputRestXmlSerializer extends _i1
    .StructuredSmithySerializer<ConstantAndVariableQueryStringInputPayload> {
  const ConstantAndVariableQueryStringInputRestXmlSerializer()
      : super('ConstantAndVariableQueryStringInput');

  @override
  Iterable<Type> get types => const [
        ConstantAndVariableQueryStringInput,
        _$ConstantAndVariableQueryStringInput,
        ConstantAndVariableQueryStringInputPayload,
        _$ConstantAndVariableQueryStringInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  ConstantAndVariableQueryStringInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return ConstantAndVariableQueryStringInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      const _i1.XmlElementName('ConstantAndVariableQueryStringInput')
    ];
    return result;
  }
}
