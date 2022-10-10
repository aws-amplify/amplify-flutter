// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.stream_view_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class StreamViewType extends _i1.SmithyEnum<StreamViewType> {
  const StreamViewType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const StreamViewType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const keysOnly = StreamViewType._(
    0,
    'KEYS_ONLY',
    'KEYS_ONLY',
  );

  static const newAndOldImages = StreamViewType._(
    1,
    'NEW_AND_OLD_IMAGES',
    'NEW_AND_OLD_IMAGES',
  );

  static const newImage = StreamViewType._(
    2,
    'NEW_IMAGE',
    'NEW_IMAGE',
  );

  static const oldImage = StreamViewType._(
    3,
    'OLD_IMAGE',
    'OLD_IMAGE',
  );

  /// All values of [StreamViewType].
  static const values = <StreamViewType>[
    StreamViewType.keysOnly,
    StreamViewType.newAndOldImages,
    StreamViewType.newImage,
    StreamViewType.oldImage,
  ];

  static const List<_i1.SmithySerializer<StreamViewType>> serializers = [
    _i1.SmithyEnumSerializer(
      'StreamViewType',
      values: values,
      sdkUnknown: StreamViewType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension StreamViewTypeHelpers on List<StreamViewType> {
  /// Returns the value of [StreamViewType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  StreamViewType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [StreamViewType] whose value matches [value].
  StreamViewType byValue(String value) => firstWhere((el) => el.value == value);
}
