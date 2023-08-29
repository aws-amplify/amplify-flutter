// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.import_volume_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/conversion_task.dart';

part 'import_volume_result.g.dart';

abstract class ImportVolumeResult
    with _i1.AWSEquatable<ImportVolumeResult>
    implements Built<ImportVolumeResult, ImportVolumeResultBuilder> {
  factory ImportVolumeResult({ConversionTask? conversionTask}) {
    return _$ImportVolumeResult._(conversionTask: conversionTask);
  }

  factory ImportVolumeResult.build(
          [void Function(ImportVolumeResultBuilder) updates]) =
      _$ImportVolumeResult;

  const ImportVolumeResult._();

  /// Constructs a [ImportVolumeResult] from a [payload] and [response].
  factory ImportVolumeResult.fromResponse(
    ImportVolumeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ImportVolumeResult>> serializers = [
    ImportVolumeResultEc2QuerySerializer()
  ];

  /// Information about the conversion task.
  ConversionTask? get conversionTask;
  @override
  List<Object?> get props => [conversionTask];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportVolumeResult')
      ..add(
        'conversionTask',
        conversionTask,
      );
    return helper.toString();
  }
}

class ImportVolumeResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ImportVolumeResult> {
  const ImportVolumeResultEc2QuerySerializer() : super('ImportVolumeResult');

  @override
  Iterable<Type> get types => const [
        ImportVolumeResult,
        _$ImportVolumeResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportVolumeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportVolumeResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'conversionTask':
          result.conversionTask.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ConversionTask),
          ) as ConversionTask));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ImportVolumeResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ImportVolumeResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ImportVolumeResult(:conversionTask) = object;
    if (conversionTask != null) {
      result$
        ..add(const _i2.XmlElementName('ConversionTask'))
        ..add(serializers.serialize(
          conversionTask,
          specifiedType: const FullType(ConversionTask),
        ));
    }
    return result$;
  }
}
