// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_validation_protocol.model.malformed_required_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_required_input.g.dart';

abstract class MalformedRequiredInput
    with
        _i1.HttpInput<MalformedRequiredInputPayload>,
        _i2.AWSEquatable<MalformedRequiredInput>
    implements
        Built<MalformedRequiredInput, MalformedRequiredInputBuilder>,
        _i1.HasPayload<MalformedRequiredInputPayload> {
  factory MalformedRequiredInput({
    required String string,
    required String stringInHeader,
    required String stringInQuery,
  }) {
    return _$MalformedRequiredInput._(
      string: string,
      stringInHeader: stringInHeader,
      stringInQuery: stringInQuery,
    );
  }

  factory MalformedRequiredInput.build(
          [void Function(MalformedRequiredInputBuilder) updates]) =
      _$MalformedRequiredInput;

  const MalformedRequiredInput._();

  factory MalformedRequiredInput.fromRequest(
    MalformedRequiredInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      MalformedRequiredInput.build((b) {
        b.string = payload.string;
        if (request.headers['string-in-headers'] != null) {
          b.stringInHeader = request.headers['string-in-headers']!;
        }
        if (request.queryParameters['stringInQuery'] != null) {
          b.stringInQuery = request.queryParameters['stringInQuery']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    MalformedRequiredInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedRequiredInputBuilder b) {}
  String get string;
  String get stringInHeader;
  String get stringInQuery;
  @override
  MalformedRequiredInputPayload getPayload() =>
      MalformedRequiredInputPayload((b) {
        b.string = string;
      });
  @override
  List<Object?> get props => [
        string,
        stringInHeader,
        stringInQuery,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedRequiredInput');
    helper.add(
      'string',
      string,
    );
    helper.add(
      'stringInHeader',
      stringInHeader,
    );
    helper.add(
      'stringInQuery',
      stringInQuery,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class MalformedRequiredInputPayload
    with
        _i2.AWSEquatable<MalformedRequiredInputPayload>
    implements
        Built<MalformedRequiredInputPayload,
            MalformedRequiredInputPayloadBuilder> {
  factory MalformedRequiredInputPayload(
          [void Function(MalformedRequiredInputPayloadBuilder) updates]) =
      _$MalformedRequiredInputPayload;

  const MalformedRequiredInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedRequiredInputPayloadBuilder b) {}
  String get string;
  @override
  List<Object?> get props => [string];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedRequiredInputPayload');
    helper.add(
      'string',
      string,
    );
    return helper.toString();
  }
}

class MalformedRequiredInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedRequiredInputPayload> {
  const MalformedRequiredInputRestJson1Serializer()
      : super('MalformedRequiredInput');

  @override
  Iterable<Type> get types => const [
        MalformedRequiredInput,
        _$MalformedRequiredInput,
        MalformedRequiredInputPayload,
        _$MalformedRequiredInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedRequiredInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MalformedRequiredInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'string':
          result.string = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = object is MalformedRequiredInput
        ? object.getPayload()
        : (object as MalformedRequiredInputPayload);
    final result = <Object?>[
      'string',
      serializers.serialize(
        payload.string,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
