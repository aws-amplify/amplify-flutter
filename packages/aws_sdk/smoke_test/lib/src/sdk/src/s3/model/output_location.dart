// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.output_location; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/s3_location.dart' as _i2;

part 'output_location.g.dart';

/// Describes the location where the restore job's output is stored.
abstract class OutputLocation
    with _i1.AWSEquatable<OutputLocation>
    implements Built<OutputLocation, OutputLocationBuilder> {
  /// Describes the location where the restore job's output is stored.
  factory OutputLocation({_i2.S3Location? s3}) {
    return _$OutputLocation._(s3: s3);
  }

  /// Describes the location where the restore job's output is stored.
  factory OutputLocation.build([void Function(OutputLocationBuilder) updates]) =
      _$OutputLocation;

  const OutputLocation._();

  static const List<_i3.SmithySerializer> serializers = [
    OutputLocationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OutputLocationBuilder b) {}

  /// Describes an S3 location that will receive the results of the restore request.
  _i2.S3Location? get s3;
  @override
  List<Object?> get props => [s3];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OutputLocation');
    helper.add(
      's3',
      s3,
    );
    return helper.toString();
  }
}

class OutputLocationRestXmlSerializer
    extends _i3.StructuredSmithySerializer<OutputLocation> {
  const OutputLocationRestXmlSerializer() : super('OutputLocation');

  @override
  Iterable<Type> get types => const [
        OutputLocation,
        _$OutputLocation,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  OutputLocation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OutputLocationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'S3':
          if (value != null) {
            result.s3.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.S3Location),
            ) as _i2.S3Location));
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
    final payload = (object as OutputLocation);
    final result = <Object?>[
      const _i3.XmlElementName(
        'OutputLocation',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.s3 != null) {
      result
        ..add(const _i3.XmlElementName('S3'))
        ..add(serializers.serialize(
          payload.s3!,
          specifiedType: const FullType(_i2.S3Location),
        ));
    }
    return result;
  }
}
