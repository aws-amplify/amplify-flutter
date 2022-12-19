// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template example_common.component_edge_insets}
/// A class representing the spacing around the sides of a component,
/// usually in the form of padding or margin
/// {@endtemplate}
class ComponentEdgeInsets {
  /// {@macro example_common.component_edge_insets}
  const ComponentEdgeInsets({
    this.left = 0,
    this.right = 0,
    this.top = 0,
    this.bottom = 0,
  });

  /// Left edge inset in px
  final double left;

  /// Right edge inset in px
  final double right;

  /// Top edge inset in px
  final double top;

  /// Bottom edge inset in px
  final double bottom;

  /// Create [ComponentEdgeInsets] that is symmetric
  const ComponentEdgeInsets.symmetric(
      {double horizontal = 0, double vertical = 0})
      : left = horizontal,
        right = horizontal,
        top = vertical,
        bottom = vertical;

  /// Create [ComponentEdgeInsets] that has equal value on each side
  const ComponentEdgeInsets.all(double value)
      : left = value,
        right = value,
        top = value,
        bottom = value;

  /// [ComponentEdgeInsets] with no value
  static const zero = ComponentEdgeInsets.all(0);

  /// Creates a CSS string
  String toCssString() {
    return '${top}px ${right}px ${bottom}px ${left}px';
  }
}
