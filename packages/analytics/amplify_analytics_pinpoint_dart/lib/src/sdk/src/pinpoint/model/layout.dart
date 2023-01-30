// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.layout; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class Layout extends _i1.SmithyEnum<Layout> {
  const Layout._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const Layout._sdkUnknown(String value) : super.sdkUnknown(value);

  static const bottomBanner = Layout._(
    0,
    'BOTTOM_BANNER',
    'BOTTOM_BANNER',
  );

  static const carousel = Layout._(
    1,
    'CAROUSEL',
    'CAROUSEL',
  );

  static const middleBanner = Layout._(
    2,
    'MIDDLE_BANNER',
    'MIDDLE_BANNER',
  );

  static const mobileFeed = Layout._(
    3,
    'MOBILE_FEED',
    'MOBILE_FEED',
  );

  static const overlays = Layout._(
    4,
    'OVERLAYS',
    'OVERLAYS',
  );

  static const topBanner = Layout._(
    5,
    'TOP_BANNER',
    'TOP_BANNER',
  );

  /// All values of [Layout].
  static const values = <Layout>[
    Layout.bottomBanner,
    Layout.carousel,
    Layout.middleBanner,
    Layout.mobileFeed,
    Layout.overlays,
    Layout.topBanner,
  ];

  static const List<_i1.SmithySerializer<Layout>> serializers = [
    _i1.SmithyEnumSerializer(
      'Layout',
      values: values,
      sdkUnknown: Layout._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension LayoutHelpers on List<Layout> {
  /// Returns the value of [Layout] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  Layout byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [Layout] whose value matches [value].
  Layout byValue(String value) => firstWhere((el) => el.value == value);
}
