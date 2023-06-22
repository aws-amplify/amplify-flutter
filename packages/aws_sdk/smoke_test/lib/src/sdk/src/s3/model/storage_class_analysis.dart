// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.storage_class_analysis; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/storage_class_analysis_data_export.dart'
    as _i2;

part 'storage_class_analysis.g.dart';

/// Specifies data related to access patterns to be collected and made available to analyze the tradeoffs between different storage classes for an Amazon S3 bucket.
abstract class StorageClassAnalysis
    with _i1.AWSEquatable<StorageClassAnalysis>
    implements Built<StorageClassAnalysis, StorageClassAnalysisBuilder> {
  /// Specifies data related to access patterns to be collected and made available to analyze the tradeoffs between different storage classes for an Amazon S3 bucket.
  factory StorageClassAnalysis(
      {_i2.StorageClassAnalysisDataExport? dataExport}) {
    return _$StorageClassAnalysis._(dataExport: dataExport);
  }

  /// Specifies data related to access patterns to be collected and made available to analyze the tradeoffs between different storage classes for an Amazon S3 bucket.
  factory StorageClassAnalysis.build(
          [void Function(StorageClassAnalysisBuilder) updates]) =
      _$StorageClassAnalysis;

  const StorageClassAnalysis._();

  static const List<_i3.SmithySerializer<StorageClassAnalysis>> serializers = [
    StorageClassAnalysisRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StorageClassAnalysisBuilder b) {}

  /// Specifies how data related to the storage class analysis for an Amazon S3 bucket should be exported.
  _i2.StorageClassAnalysisDataExport? get dataExport;
  @override
  List<Object?> get props => [dataExport];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StorageClassAnalysis')
      ..add(
        'dataExport',
        dataExport,
      );
    return helper.toString();
  }
}

class StorageClassAnalysisRestXmlSerializer
    extends _i3.StructuredSmithySerializer<StorageClassAnalysis> {
  const StorageClassAnalysisRestXmlSerializer() : super('StorageClassAnalysis');

  @override
  Iterable<Type> get types => const [
        StorageClassAnalysis,
        _$StorageClassAnalysis,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  StorageClassAnalysis deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StorageClassAnalysisBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DataExport':
          result.dataExport.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.StorageClassAnalysisDataExport),
          ) as _i2.StorageClassAnalysisDataExport));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StorageClassAnalysis object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'StorageClassAnalysis',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final StorageClassAnalysis(:dataExport) = object;
    if (dataExport != null) {
      result$
        ..add(const _i3.XmlElementName('DataExport'))
        ..add(serializers.serialize(
          dataExport,
          specifiedType: const FullType(_i2.StorageClassAnalysisDataExport),
        ));
    }
    return result$;
  }
}
