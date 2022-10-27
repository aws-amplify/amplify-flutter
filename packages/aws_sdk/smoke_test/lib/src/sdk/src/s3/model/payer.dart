// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.payer; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class Payer extends _i1.SmithyEnum<Payer> {
  const Payer._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const Payer._sdkUnknown(String value) : super.sdkUnknown(value);

  static const bucketOwner = Payer._(
    0,
    'BucketOwner',
    'BucketOwner',
  );

  static const requester = Payer._(
    1,
    'Requester',
    'Requester',
  );

  /// All values of [Payer].
  static const values = <Payer>[
    Payer.bucketOwner,
    Payer.requester,
  ];

  static const List<_i1.SmithySerializer<Payer>> serializers = [
    _i1.SmithyEnumSerializer(
      'Payer',
      values: values,
      sdkUnknown: Payer._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension PayerHelpers on List<Payer> {
  /// Returns the value of [Payer] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  Payer byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [Payer] whose value matches [value].
  Payer byValue(String value) => firstWhere((el) => el.value == value);
}
