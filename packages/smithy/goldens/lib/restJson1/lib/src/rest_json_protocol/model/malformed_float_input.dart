// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v1.rest_json_protocol.model.malformed_float_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_float_input.g.dart';

abstract class MalformedFloatInput
    with
        _i1.HttpInput<MalformedFloatInputPayload>,
        _i2.AWSEquatable<MalformedFloatInput>
    implements
        Built<MalformedFloatInput, MalformedFloatInputBuilder>,
        _i1.HasPayload<MalformedFloatInputPayload> {
  factory MalformedFloatInput({
    double? floatInBody,
    double? floatInPath,
    double? floatInQuery,
    double? floatInHeader,
  }) {
    floatInPath ??= 0;
    return _$MalformedFloatInput._(
      floatInBody: floatInBody,
      floatInPath: floatInPath,
      floatInQuery: floatInQuery,
      floatInHeader: floatInHeader,
    );
  }

  factory MalformedFloatInput.build(
          [void Function(MalformedFloatInputBuilder) updates]) =
      _$MalformedFloatInput;

  const MalformedFloatInput._();

  factory MalformedFloatInput.fromRequest(
    MalformedFloatInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      MalformedFloatInput.build((b) {
        b.floatInBody = payload.floatInBody;
        if (request.headers['floatInHeader'] != null) {
          b.floatInHeader = double.parse(request.headers['floatInHeader']!);
        }
        if (request.queryParameters['floatInQuery'] != null) {
          b.floatInQuery =
              double.parse(request.queryParameters['floatInQuery']!);
        }
        if (labels['floatInPath'] != null) {
          b.floatInPath = double.parse(labels['floatInPath']!);
        }
      });

  static const List<_i1.SmithySerializer<MalformedFloatInputPayload>>
      serializers = [MalformedFloatInputRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedFloatInputBuilder b) {
    b.floatInPath = 0;
  }

  double? get floatInBody;
  double get floatInPath;
  double? get floatInQuery;
  double? get floatInHeader;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'floatInPath':
        return floatInPath.toString();
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  MalformedFloatInputPayload getPayload() => MalformedFloatInputPayload((b) {
        b.floatInBody = floatInBody;
      });
  @override
  List<Object?> get props => [
        floatInBody,
        floatInPath,
        floatInQuery,
        floatInHeader,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedFloatInput')
      ..add(
        'floatInBody',
        floatInBody,
      )
      ..add(
        'floatInPath',
        floatInPath,
      )
      ..add(
        'floatInQuery',
        floatInQuery,
      )
      ..add(
        'floatInHeader',
        floatInHeader,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class MalformedFloatInputPayload
    with _i2.AWSEquatable<MalformedFloatInputPayload>
    implements
        Built<MalformedFloatInputPayload, MalformedFloatInputPayloadBuilder> {
  factory MalformedFloatInputPayload(
          [void Function(MalformedFloatInputPayloadBuilder) updates]) =
      _$MalformedFloatInputPayload;

  const MalformedFloatInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedFloatInputPayloadBuilder b) {}
  double? get floatInBody;
  @override
  List<Object?> get props => [floatInBody];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedFloatInputPayload')
      ..add(
        'floatInBody',
        floatInBody,
      );
    return helper.toString();
  }
}

class MalformedFloatInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedFloatInputPayload> {
  const MalformedFloatInputRestJson1Serializer() : super('MalformedFloatInput');

  @override
  Iterable<Type> get types => const [
        MalformedFloatInput,
        _$MalformedFloatInput,
        MalformedFloatInputPayload,
        _$MalformedFloatInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedFloatInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MalformedFloatInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'floatInBody':
          result.floatInBody = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MalformedFloatInputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final MalformedFloatInputPayload(:floatInBody) = object;
    if (floatInBody != null) {
      result$
        ..add('floatInBody')
        ..add(serializers.serialize(
          floatInBody,
          specifiedType: const FullType(double),
        ));
    }
    return result$;
  }
}
