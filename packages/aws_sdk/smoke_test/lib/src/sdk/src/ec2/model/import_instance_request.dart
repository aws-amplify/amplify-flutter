// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.import_instance_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_instance_launch_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/platform_values.dart';

part 'import_instance_request.g.dart';

abstract class ImportInstanceRequest
    with
        _i1.HttpInput<ImportInstanceRequest>,
        _i2.AWSEquatable<ImportInstanceRequest>
    implements Built<ImportInstanceRequest, ImportInstanceRequestBuilder> {
  factory ImportInstanceRequest({
    String? description,
    List<DiskImage>? diskImages,
    bool? dryRun,
    ImportInstanceLaunchSpecification? launchSpecification,
    PlatformValues? platform,
  }) {
    dryRun ??= false;
    return _$ImportInstanceRequest._(
      description: description,
      diskImages: diskImages == null ? null : _i3.BuiltList(diskImages),
      dryRun: dryRun,
      launchSpecification: launchSpecification,
      platform: platform,
    );
  }

  factory ImportInstanceRequest.build(
          [void Function(ImportInstanceRequestBuilder) updates]) =
      _$ImportInstanceRequest;

  const ImportInstanceRequest._();

  factory ImportInstanceRequest.fromRequest(
    ImportInstanceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ImportInstanceRequest>> serializers = [
    ImportInstanceRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportInstanceRequestBuilder b) {
    b.dryRun = false;
  }

  /// A description for the instance being imported.
  String? get description;

  /// The disk image.
  _i3.BuiltList<DiskImage>? get diskImages;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The launch specification.
  ImportInstanceLaunchSpecification? get launchSpecification;

  /// The instance operating system.
  PlatformValues? get platform;
  @override
  ImportInstanceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        description,
        diskImages,
        dryRun,
        launchSpecification,
        platform,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportInstanceRequest')
      ..add(
        'description',
        description,
      )
      ..add(
        'diskImages',
        diskImages,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'launchSpecification',
        launchSpecification,
      )
      ..add(
        'platform',
        platform,
      );
    return helper.toString();
  }
}

class ImportInstanceRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ImportInstanceRequest> {
  const ImportInstanceRequestEc2QuerySerializer()
      : super('ImportInstanceRequest');

  @override
  Iterable<Type> get types => const [
        ImportInstanceRequest,
        _$ImportInstanceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportInstanceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportInstanceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'diskImage':
          result.diskImages.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(DiskImage)],
            ),
          ) as _i3.BuiltList<DiskImage>));
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'launchSpecification':
          result.launchSpecification.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ImportInstanceLaunchSpecification),
          ) as ImportInstanceLaunchSpecification));
        case 'platform':
          result.platform = (serializers.deserialize(
            value,
            specifiedType: const FullType(PlatformValues),
          ) as PlatformValues);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ImportInstanceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ImportInstanceRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ImportInstanceRequest(
      :description,
      :diskImages,
      :dryRun,
      :launchSpecification,
      :platform
    ) = object;
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (diskImages != null) {
      result$
        ..add(const _i1.XmlElementName('DiskImage'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          diskImages,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(DiskImage)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (launchSpecification != null) {
      result$
        ..add(const _i1.XmlElementName('LaunchSpecification'))
        ..add(serializers.serialize(
          launchSpecification,
          specifiedType: const FullType(ImportInstanceLaunchSpecification),
        ));
    }
    if (platform != null) {
      result$
        ..add(const _i1.XmlElementName('Platform'))
        ..add(serializers.serialize(
          platform,
          specifiedType: const FullType.nullable(PlatformValues),
        ));
    }
    return result$;
  }
}
