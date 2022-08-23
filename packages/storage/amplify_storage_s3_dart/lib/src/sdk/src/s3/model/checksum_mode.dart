// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.model.checksum_mode; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ChecksumMode extends _i1.SmithyEnum<ChecksumMode> {
  const ChecksumMode._(int index, String name, String value)
      : super(index, name, value);

  const ChecksumMode._sdkUnknown(String value) : super.sdkUnknown(value);

  static const enabled = ChecksumMode._(0, 'ENABLED', 'ENABLED');

  /// All values of [ChecksumMode].
  static const values = <ChecksumMode>[ChecksumMode.enabled];

  static const List<_i1.SmithySerializer<ChecksumMode>> serializers = [
    _i1.SmithyEnumSerializer('ChecksumMode',
        values: values,
        sdkUnknown: ChecksumMode._sdkUnknown,
        supportedProtocols: [
          _i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml')
        ])
  ];
}

extension ChecksumModeHelpers on List<ChecksumMode> {
  /// Returns the value of [ChecksumMode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ChecksumMode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ChecksumMode] whose value matches [value].
  ChecksumMode byValue(String value) => firstWhere((el) => el.value == value);
}
