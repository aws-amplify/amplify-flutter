// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.model.malformed_double_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_double_input.g.dart';

abstract class MalformedDoubleInput
    with
        _i1.HttpInput<MalformedDoubleInputPayload>,
        _i2.AWSEquatable<MalformedDoubleInput>
    implements
        Built<MalformedDoubleInput, MalformedDoubleInputBuilder>,
        _i1.HasPayload<MalformedDoubleInputPayload> {
  factory MalformedDoubleInput({
    double? doubleInBody,
    double? doubleInHeader,
    double? doubleInPath,
    double? doubleInQuery,
  }) {
    doubleInPath ??= 0;
    return _$MalformedDoubleInput._(
      doubleInBody: doubleInBody,
      doubleInHeader: doubleInHeader,
      doubleInPath: doubleInPath,
      doubleInQuery: doubleInQuery,
    );
  }

  factory MalformedDoubleInput.build(
          [void Function(MalformedDoubleInputBuilder) updates]) =
      _$MalformedDoubleInput;

  const MalformedDoubleInput._();

  factory MalformedDoubleInput.fromRequest(
    MalformedDoubleInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      MalformedDoubleInput.build((b) {
        b.doubleInBody = payload.doubleInBody;
        if (request.headers['doubleInHeader'] != null) {
          b.doubleInHeader = double.parse(request.headers['doubleInHeader']!);
        }
        if (request.queryParameters['doubleInQuery'] != null) {
          b.doubleInQuery =
              double.parse(request.queryParameters['doubleInQuery']!);
        }
        if (labels['doubleInPath'] != null) {
          b.doubleInPath = double.parse(labels['doubleInPath']!);
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    MalformedDoubleInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedDoubleInputBuilder b) {
    b.doubleInPath = 0;
  }

  double? get doubleInBody;
  double? get doubleInHeader;
  double get doubleInPath;
  double? get doubleInQuery;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'doubleInPath':
        return doubleInPath.toString();
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  MalformedDoubleInputPayload getPayload() => MalformedDoubleInputPayload((b) {
        b.doubleInBody = doubleInBody;
      });
  @override
  List<Object?> get props => [
        doubleInBody,
        doubleInHeader,
        doubleInPath,
        doubleInQuery,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedDoubleInput');
    helper.add(
      'doubleInBody',
      doubleInBody,
    );
    helper.add(
      'doubleInHeader',
      doubleInHeader,
    );
    helper.add(
      'doubleInPath',
      doubleInPath,
    );
    helper.add(
      'doubleInQuery',
      doubleInQuery,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class MalformedDoubleInputPayload
    with _i2.AWSEquatable<MalformedDoubleInputPayload>
    implements
        Built<MalformedDoubleInputPayload, MalformedDoubleInputPayloadBuilder> {
  factory MalformedDoubleInputPayload(
          [void Function(MalformedDoubleInputPayloadBuilder) updates]) =
      _$MalformedDoubleInputPayload;

  const MalformedDoubleInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedDoubleInputPayloadBuilder b) {}
  double? get doubleInBody;
  @override
  List<Object?> get props => [doubleInBody];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedDoubleInputPayload');
    helper.add(
      'doubleInBody',
      doubleInBody,
    );
    return helper.toString();
  }
}

class MalformedDoubleInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedDoubleInputPayload> {
  const MalformedDoubleInputRestJson1Serializer()
      : super('MalformedDoubleInput');

  @override
  Iterable<Type> get types => const [
        MalformedDoubleInput,
        _$MalformedDoubleInput,
        MalformedDoubleInputPayload,
        _$MalformedDoubleInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedDoubleInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MalformedDoubleInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'doubleInBody':
          if (value != null) {
            result.doubleInBody = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = object is MalformedDoubleInput
        ? object.getPayload()
        : (object as MalformedDoubleInputPayload);
    final result = <Object?>[];
    if (payload.doubleInBody != null) {
      result
        ..add('doubleInBody')
        ..add(serializers.serialize(
          payload.doubleInBody!,
          specifiedType: const FullType(double),
        ));
    }
    return result;
  }
}
