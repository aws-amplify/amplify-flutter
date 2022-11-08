// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.storage_class_analysis_data_export; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/analytics_export_destination.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/storage_class_analysis_schema_version.dart'
    as _i3;

part 'storage_class_analysis_data_export.g.dart';

/// Container for data related to the storage class analysis for an Amazon S3 bucket for export.
abstract class StorageClassAnalysisDataExport
    with
        _i1.AWSEquatable<StorageClassAnalysisDataExport>
    implements
        Built<StorageClassAnalysisDataExport,
            StorageClassAnalysisDataExportBuilder> {
  /// Container for data related to the storage class analysis for an Amazon S3 bucket for export.
  factory StorageClassAnalysisDataExport({
    required _i2.AnalyticsExportDestination destination,
    required _i3.StorageClassAnalysisSchemaVersion outputSchemaVersion,
  }) {
    return _$StorageClassAnalysisDataExport._(
      destination: destination,
      outputSchemaVersion: outputSchemaVersion,
    );
  }

  /// Container for data related to the storage class analysis for an Amazon S3 bucket for export.
  factory StorageClassAnalysisDataExport.build(
          [void Function(StorageClassAnalysisDataExportBuilder) updates]) =
      _$StorageClassAnalysisDataExport;

  const StorageClassAnalysisDataExport._();

  static const List<_i4.SmithySerializer> serializers = [
    StorageClassAnalysisDataExportRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StorageClassAnalysisDataExportBuilder b) {}

  /// The place to store the data for an analysis.
  _i2.AnalyticsExportDestination get destination;

  /// The version of the output schema to use when exporting data. Must be `V_1`.
  _i3.StorageClassAnalysisSchemaVersion get outputSchemaVersion;
  @override
  List<Object?> get props => [
        destination,
        outputSchemaVersion,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('StorageClassAnalysisDataExport');
    helper.add(
      'destination',
      destination,
    );
    helper.add(
      'outputSchemaVersion',
      outputSchemaVersion,
    );
    return helper.toString();
  }
}

class StorageClassAnalysisDataExportRestXmlSerializer
    extends _i4.StructuredSmithySerializer<StorageClassAnalysisDataExport> {
  const StorageClassAnalysisDataExportRestXmlSerializer()
      : super('StorageClassAnalysisDataExport');

  @override
  Iterable<Type> get types => const [
        StorageClassAnalysisDataExport,
        _$StorageClassAnalysisDataExport,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  StorageClassAnalysisDataExport deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StorageClassAnalysisDataExportBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Destination':
          result.destination.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalyticsExportDestination),
          ) as _i2.AnalyticsExportDestination));
          break;
        case 'OutputSchemaVersion':
          result.outputSchemaVersion = (serializers.deserialize(
            value!,
            specifiedType:
                const FullType(_i3.StorageClassAnalysisSchemaVersion),
          ) as _i3.StorageClassAnalysisSchemaVersion);
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
    final payload = (object as StorageClassAnalysisDataExport);
    final result = <Object?>[
      const _i4.XmlElementName(
        'StorageClassAnalysisDataExport',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i4.XmlElementName('Destination'))
      ..add(serializers.serialize(
        payload.destination,
        specifiedType: const FullType(_i2.AnalyticsExportDestination),
      ));
    result
      ..add(const _i4.XmlElementName('OutputSchemaVersion'))
      ..add(serializers.serialize(
        payload.outputSchemaVersion,
        specifiedType:
            const FullType.nullable(_i3.StorageClassAnalysisSchemaVersion),
      ));
    return result;
  }
}
