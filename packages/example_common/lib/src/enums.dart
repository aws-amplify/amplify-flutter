// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Represents an axis in a two dimensional plane.
enum Axis {
  /// The horizontal axis
  horizontal,

  /// The vertical axis.
  vertical,
}

/// Extension on [Axis]
extension AxisX on Axis {
  /// represents the CSS flex-direction property
  String get flexDirection {
    switch (this) {
      case Axis.horizontal:
        return 'row';
      case Axis.vertical:
        return 'column';
    }
  }
}

/// Represents the CSS align-items property
///
/// The CSS align-items property sets the align-self value on all
/// direct children as a group. In Flexbox, it controls the alignment
/// of items on the Cross Axis. In Grid Layout, it controls the
/// alignment of items on the Block Axis within their grid area.
///
/// See: https://developer.mozilla.org/en-US/docs/Web/CSS/align-items
enum AlignItems {
  /// The flex items' margin boxes are centered within the line on the cross-axis.
  /// If the cross-size of an item is larger than the flex container, it will
  /// overflow equally in both directions.
  center,

  /// The items are packed flush to each other toward the start edge of the
  /// alignment container in the appropriate axis.
  start,

  /// The items are packed flush to each other toward the end edge of the
  /// alignment container in the appropriate axis.
  end,

  /// Flex items are stretched such that the cross-size of the item's margin
  /// box is the same as the line while respecting width and height constraints.
  stretch,
}
