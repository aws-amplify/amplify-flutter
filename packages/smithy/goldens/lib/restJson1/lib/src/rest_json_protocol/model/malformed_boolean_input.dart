// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v1.rest_json_protocol.model.malformed_boolean_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_boolean_input.g.dart';

abstract class MalformedBooleanInput
    with
        _i1.HttpInput<MalformedBooleanInputPayload>,
        _i2.AWSEquatable<MalformedBooleanInput>
    implements
        Built<MalformedBooleanInput, MalformedBooleanInputBuilder>,
        _i1.HasPayload<MalformedBooleanInputPayload> {
  factory MalformedBooleanInput({
    bool? booleanInBody,
    bool? booleanInPath,
    bool? booleanInQuery,
    bool? booleanInHeader,
  }) {
    booleanInPath ??= false;
    return _$MalformedBooleanInput._(
      booleanInBody: booleanInBody,
      booleanInPath: booleanInPath,
      booleanInQuery: booleanInQuery,
      booleanInHeader: booleanInHeader,
    );
  }

  factory MalformedBooleanInput.build(
          [void Function(MalformedBooleanInputBuilder) updates]) =
      _$MalformedBooleanInput;

  const MalformedBooleanInput._();

  factory MalformedBooleanInput.fromRequest(
    MalformedBooleanInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      MalformedBooleanInput.build((b) {
        b.booleanInBody = payload.booleanInBody;
        if (request.headers['booleanInHeader'] != null) {
          b.booleanInHeader = request.headers['booleanInHeader']! == 'true';
        }
        if (request.queryParameters['booleanInQuery'] != null) {
          b.booleanInQuery =
              request.queryParameters['booleanInQuery']! == 'true';
        }
        if (labels['booleanInPath'] != null) {
          b.booleanInPath = labels['booleanInPath']! == 'true';
        }
      });

  static const List<_i1.SmithySerializer<MalformedBooleanInputPayload>>
      serializers = [MalformedBooleanInputRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedBooleanInputBuilder b) {
    b.booleanInPath = false;
  }

  bool? get booleanInBody;
  bool get booleanInPath;
  bool? get booleanInQuery;
  bool? get booleanInHeader;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'booleanInPath':
        return booleanInPath.toString();
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  MalformedBooleanInputPayload getPayload() =>
      MalformedBooleanInputPayload((b) {
        b.booleanInBody = booleanInBody;
      });
  @override
  List<Object?> get props => [
        booleanInBody,
        booleanInPath,
        booleanInQuery,
        booleanInHeader,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedBooleanInput')
      ..add(
        'booleanInBody',
        booleanInBody,
      )
      ..add(
        'booleanInPath',
        booleanInPath,
      )
      ..add(
        'booleanInQuery',
        booleanInQuery,
      )
      ..add(
        'booleanInHeader',
        booleanInHeader,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class MalformedBooleanInputPayload
    with
        _i2.AWSEquatable<MalformedBooleanInputPayload>
    implements
        Built<MalformedBooleanInputPayload,
            MalformedBooleanInputPayloadBuilder> {
  factory MalformedBooleanInputPayload(
          [void Function(MalformedBooleanInputPayloadBuilder) updates]) =
      _$MalformedBooleanInputPayload;

  const MalformedBooleanInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedBooleanInputPayloadBuilder b) {}
  bool? get booleanInBody;
  @override
  List<Object?> get props => [booleanInBody];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedBooleanInputPayload')
      ..add(
        'booleanInBody',
        booleanInBody,
      );
    return helper.toString();
  }
}

class MalformedBooleanInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedBooleanInputPayload> {
  const MalformedBooleanInputRestJson1Serializer()
      : super('MalformedBooleanInput');

  @override
  Iterable<Type> get types => const [
        MalformedBooleanInput,
        _$MalformedBooleanInput,
        MalformedBooleanInputPayload,
        _$MalformedBooleanInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedBooleanInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MalformedBooleanInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'booleanInBody':
          result.booleanInBody = (serializers.deserialize(
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
    MalformedBooleanInputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final MalformedBooleanInputPayload(:booleanInBody) = object;
    if (booleanInBody != null) {
      result$
        ..add('booleanInBody')
        ..add(serializers.serialize(
          booleanInBody,
          specifiedType: const FullType(bool),
        ));
    }
    return result$;
  }
}
