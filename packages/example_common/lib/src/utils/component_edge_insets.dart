// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
