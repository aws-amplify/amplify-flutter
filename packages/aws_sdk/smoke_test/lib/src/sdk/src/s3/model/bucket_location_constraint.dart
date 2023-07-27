// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.bucket_location_constraint; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class BucketLocationConstraint
    extends _i1.SmithyEnum<BucketLocationConstraint> {
  const BucketLocationConstraint._(
    super.index,
    super.name,
    super.value,
  );

  const BucketLocationConstraint._sdkUnknown(super.value) : super.sdkUnknown();

  static const afSouth1 = BucketLocationConstraint._(
    0,
    'af_south_1',
    'af-south-1',
  );

  static const apEast1 = BucketLocationConstraint._(
    1,
    'ap_east_1',
    'ap-east-1',
  );

  static const apNortheast1 = BucketLocationConstraint._(
    2,
    'ap_northeast_1',
    'ap-northeast-1',
  );

  static const apNortheast2 = BucketLocationConstraint._(
    3,
    'ap_northeast_2',
    'ap-northeast-2',
  );

  static const apNortheast3 = BucketLocationConstraint._(
    4,
    'ap_northeast_3',
    'ap-northeast-3',
  );

  static const apSouth1 = BucketLocationConstraint._(
    5,
    'ap_south_1',
    'ap-south-1',
  );

  static const apSouth2 = BucketLocationConstraint._(
    6,
    'ap_south_2',
    'ap-south-2',
  );

  static const apSoutheast1 = BucketLocationConstraint._(
    7,
    'ap_southeast_1',
    'ap-southeast-1',
  );

  static const apSoutheast2 = BucketLocationConstraint._(
    8,
    'ap_southeast_2',
    'ap-southeast-2',
  );

  static const apSoutheast3 = BucketLocationConstraint._(
    9,
    'ap_southeast_3',
    'ap-southeast-3',
  );

  static const caCentral1 = BucketLocationConstraint._(
    10,
    'ca_central_1',
    'ca-central-1',
  );

  static const cnNorth1 = BucketLocationConstraint._(
    11,
    'cn_north_1',
    'cn-north-1',
  );

  static const cnNorthwest1 = BucketLocationConstraint._(
    12,
    'cn_northwest_1',
    'cn-northwest-1',
  );

  static const eu = BucketLocationConstraint._(
    13,
    'EU',
    'EU',
  );

  static const euCentral1 = BucketLocationConstraint._(
    14,
    'eu_central_1',
    'eu-central-1',
  );

  static const euNorth1 = BucketLocationConstraint._(
    15,
    'eu_north_1',
    'eu-north-1',
  );

  static const euSouth1 = BucketLocationConstraint._(
    16,
    'eu_south_1',
    'eu-south-1',
  );

  static const euSouth2 = BucketLocationConstraint._(
    17,
    'eu_south_2',
    'eu-south-2',
  );

  static const euWest1 = BucketLocationConstraint._(
    18,
    'eu_west_1',
    'eu-west-1',
  );

  static const euWest2 = BucketLocationConstraint._(
    19,
    'eu_west_2',
    'eu-west-2',
  );

  static const euWest3 = BucketLocationConstraint._(
    20,
    'eu_west_3',
    'eu-west-3',
  );

  static const meSouth1 = BucketLocationConstraint._(
    21,
    'me_south_1',
    'me-south-1',
  );

  static const saEast1 = BucketLocationConstraint._(
    22,
    'sa_east_1',
    'sa-east-1',
  );

  static const usEast2 = BucketLocationConstraint._(
    23,
    'us_east_2',
    'us-east-2',
  );

  static const usGovEast1 = BucketLocationConstraint._(
    24,
    'us_gov_east_1',
    'us-gov-east-1',
  );

  static const usGovWest1 = BucketLocationConstraint._(
    25,
    'us_gov_west_1',
    'us-gov-west-1',
  );

  static const usWest1 = BucketLocationConstraint._(
    26,
    'us_west_1',
    'us-west-1',
  );

  static const usWest2 = BucketLocationConstraint._(
    27,
    'us_west_2',
    'us-west-2',
  );

  /// All values of [BucketLocationConstraint].
  static const values = <BucketLocationConstraint>[
    BucketLocationConstraint.afSouth1,
    BucketLocationConstraint.apEast1,
    BucketLocationConstraint.apNortheast1,
    BucketLocationConstraint.apNortheast2,
    BucketLocationConstraint.apNortheast3,
    BucketLocationConstraint.apSouth1,
    BucketLocationConstraint.apSouth2,
    BucketLocationConstraint.apSoutheast1,
    BucketLocationConstraint.apSoutheast2,
    BucketLocationConstraint.apSoutheast3,
    BucketLocationConstraint.caCentral1,
    BucketLocationConstraint.cnNorth1,
    BucketLocationConstraint.cnNorthwest1,
    BucketLocationConstraint.eu,
    BucketLocationConstraint.euCentral1,
    BucketLocationConstraint.euNorth1,
    BucketLocationConstraint.euSouth1,
    BucketLocationConstraint.euSouth2,
    BucketLocationConstraint.euWest1,
    BucketLocationConstraint.euWest2,
    BucketLocationConstraint.euWest3,
    BucketLocationConstraint.meSouth1,
    BucketLocationConstraint.saEast1,
    BucketLocationConstraint.usEast2,
    BucketLocationConstraint.usGovEast1,
    BucketLocationConstraint.usGovWest1,
    BucketLocationConstraint.usWest1,
    BucketLocationConstraint.usWest2,
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
