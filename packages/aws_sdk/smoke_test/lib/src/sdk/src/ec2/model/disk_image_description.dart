// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disk_image_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image_format.dart';

part 'disk_image_description.g.dart';

/// Describes a disk image.
abstract class DiskImageDescription
    with _i1.AWSEquatable<DiskImageDescription>
    implements Built<DiskImageDescription, DiskImageDescriptionBuilder> {
  /// Describes a disk image.
  factory DiskImageDescription({
    String? checksum,
    DiskImageFormat? format,
    String? importManifestUrl,
    _i2.Int64? size,
  }) {
    size ??= _i2.Int64.ZERO;
    return _$DiskImageDescription._(
      checksum: checksum,
      format: format,
      importManifestUrl: importManifestUrl,
      size: size,
    );
  }

  /// Describes a disk image.
  factory DiskImageDescription.build(
          [void Function(DiskImageDescriptionBuilder) updates]) =
      _$DiskImageDescription;

  const DiskImageDescription._();

  static const List<_i3.SmithySerializer<DiskImageDescription>> serializers = [
    DiskImageDescriptionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DiskImageDescriptionBuilder b) {
    b.size = _i2.Int64.ZERO;
  }

  /// The checksum computed for the disk image.
  String? get checksum;

  /// The disk image format.
  DiskImageFormat? get format;

  /// A presigned URL for the import manifest stored in Amazon S3. For information about creating a presigned URL for an Amazon S3 object, read the "Query String Request Authentication Alternative" section of the [Authenticating REST Requests](https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html) topic in the _Amazon Simple Storage Service Developer Guide_.
  ///
  /// For information about the import manifest referenced by this API action, see [VM Import Manifest](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).
  String? get importManifestUrl;

  /// The size of the disk image, in GiB.
  _i2.Int64 get size;
  @override
  List<Object?> get props => [
        checksum,
        format,
        importManifestUrl,
        size,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DiskImageDescription')
      ..add(
        'checksum',
        checksum,
      )
      ..add(
        'format',
        format,
      )
      ..add(
        'importManifestUrl',
        '***SENSITIVE***',
      )
      ..add(
        'size',
        size,
      );
    return helper.toString();
  }
}

class DiskImageDescriptionEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DiskImageDescription> {
  const DiskImageDescriptionEc2QuerySerializer()
      : super('DiskImageDescription');

  @override
  Iterable<Type> get types => const [
        DiskImageDescription,
        _$DiskImageDescription,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DiskImageDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DiskImageDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'checksum':
          result.checksum = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'format':
          result.format = (serializers.deserialize(
            value,
            specifiedType: const FullType(DiskImageFormat),
          ) as DiskImageFormat);
        case 'importManifestUrl':
          result.importManifestUrl = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'size':
          result.size = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DiskImageDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DiskImageDescriptionResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DiskImageDescription(:checksum, :format, :importManifestUrl, :size) =
        object;
    if (checksum != null) {
      result$
        ..add(const _i3.XmlElementName('Checksum'))
        ..add(serializers.serialize(
          checksum,
          specifiedType: const FullType(String),
        ));
    }
    if (format != null) {
      result$
        ..add(const _i3.XmlElementName('Format'))
        ..add(serializers.serialize(
          format,
          specifiedType: const FullType(DiskImageFormat),
        ));
    }
    if (importManifestUrl != null) {
      result$
        ..add(const _i3.XmlElementName('ImportManifestUrl'))
        ..add(serializers.serialize(
          importManifestUrl,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Size'))
      ..add(serializers.serialize(
        size,
        specifiedType: const FullType(_i2.Int64),
      ));
    return result$;
  }
}
