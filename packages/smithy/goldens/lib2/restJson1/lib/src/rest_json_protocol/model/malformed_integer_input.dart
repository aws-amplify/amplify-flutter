// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.malformed_integer_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_integer_input.g.dart';

abstract class MalformedIntegerInput
    with
        _i1.HttpInput<MalformedIntegerInputPayload>,
        _i2.AWSEquatable<MalformedIntegerInput>
    implements
        Built<MalformedIntegerInput, MalformedIntegerInputBuilder>,
        _i1.HasPayload<MalformedIntegerInputPayload> {
  factory MalformedIntegerInput({
    int? integerInBody,
    int? integerInHeader,
    int? integerInPath,
    int? integerInQuery,
  }) {
    integerInPath ??= 0;
    return _$MalformedIntegerInput._(
      integerInBody: integerInBody,
      integerInHeader: integerInHeader,
      integerInPath: integerInPath,
      integerInQuery: integerInQuery,
    );
  }

  factory MalformedIntegerInput.build(
          [void Function(MalformedIntegerInputBuilder) updates]) =
      _$MalformedIntegerInput;

  const MalformedIntegerInput._();

  factory MalformedIntegerInput.fromRequest(
    MalformedIntegerInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      MalformedIntegerInput.build((b) {
        b.integerInBody = payload.integerInBody;
        if (request.headers['integerInHeader'] != null) {
          b.integerInHeader = int.parse(request.headers['integerInHeader']!);
        }
        if (request.queryParameters['integerInQuery'] != null) {
          b.integerInQuery =
              int.parse(request.queryParameters['integerInQuery']!);
        }
        if (labels['integerInPath'] != null) {
          b.integerInPath = int.parse(labels['integerInPath']!);
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    MalformedIntegerInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedIntegerInputBuilder b) {
    b.integerInPath = 0;
  }

  int? get integerInBody;
  int? get integerInHeader;
  int get integerInPath;
  int? get integerInQuery;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'integerInPath':
        return integerInPath.toString();
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  MalformedIntegerInputPayload getPayload() =>
      MalformedIntegerInputPayload((b) {
        b.integerInBody = integerInBody;
      });
  @override
  List<Object?> get props => [
        integerInBody,
        integerInHeader,
        integerInPath,
        integerInQuery,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedIntegerInput');
    helper.add(
      'integerInBody',
      integerInBody,
    );
    helper.add(
      'integerInHeader',
      integerInHeader,
    );
    helper.add(
      'integerInPath',
      integerInPath,
    );
    helper.add(
      'integerInQuery',
      integerInQuery,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class MalformedIntegerInputPayload
    with
        _i2.AWSEquatable<MalformedIntegerInputPayload>
    implements
        Built<MalformedIntegerInputPayload,
            MalformedIntegerInputPayloadBuilder> {
  factory MalformedIntegerInputPayload(
          [void Function(MalformedIntegerInputPayloadBuilder) updates]) =
      _$MalformedIntegerInputPayload;

  const MalformedIntegerInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedIntegerInputPayloadBuilder b) {}
  int? get integerInBody;
  @override
  List<Object?> get props => [integerInBody];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedIntegerInputPayload');
    helper.add(
      'integerInBody',
      integerInBody,
    );
    return helper.toString();
  }
}

class MalformedIntegerInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedIntegerInputPayload> {
  const MalformedIntegerInputRestJson1Serializer()
      : super('MalformedIntegerInput');

  @override
  Iterable<Type> get types => const [
        MalformedIntegerInput,
        _$MalformedIntegerInput,
        MalformedIntegerInputPayload,
        _$MalformedIntegerInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedIntegerInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MalformedIntegerInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'integerInBody':
          if (value != null) {
            result.integerInBody = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = object is MalformedIntegerInput
        ? object.getPayload()
        : (object as MalformedIntegerInputPayload);
    final result = <Object?>[];
    if (payload.integerInBody != null) {
      result
        ..add('integerInBody')
        ..add(serializers.serialize(
          payload.integerInBody!,
          specifiedType: const FullType(int),
        ));
    }
    return result;
  }
}
