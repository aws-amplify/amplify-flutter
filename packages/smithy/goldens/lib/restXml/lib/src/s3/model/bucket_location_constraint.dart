// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_xml_v1.s3.model.bucket_location_constraint; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class BucketLocationConstraint
    extends _i1.SmithyEnum<BucketLocationConstraint> {
  const BucketLocationConstraint._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const BucketLocationConstraint._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const usWest2 = BucketLocationConstraint._(
    0,
    'us_west_2',
    'us-west-2',
  );

  /// All values of [BucketLocationConstraint].
  static const values = <BucketLocationConstraint>[
    BucketLocationConstraint.usWest2
  ];

  static const List<_i1.SmithySerializer<BucketLocationConstraint>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'BucketLocationConstraint',
      values: values,
      sdkUnknown: BucketLocationConstraint._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension BucketLocationConstraintHelpers on List<BucketLocationConstraint> {
  /// Returns the value of [BucketLocationConstraint] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  BucketLocationConstraint byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [BucketLocationConstraint] whose value matches [value].
  BucketLocationConstraint byValue(String value) =>
      firstWhere((el) => el.value == value);
}
