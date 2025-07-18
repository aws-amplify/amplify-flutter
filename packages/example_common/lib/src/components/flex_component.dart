// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:example_common/src/components/component.dart';
import 'package:example_common/src/enums.dart';
import 'package:web/web.dart';

/// {@template example_common.flex_component}
/// a component that displays a set of [children] in either a row or column
/// {@endtemplate}
class FlexComponent extends Component {
  /// {@macro example_common.flex_component}
  FlexComponent({
    required this.direction,
    this.alignItems = AlignItems.start,
    required this.children,
  });

  /// The axis that the items should be displayed on.
  final Axis direction;

  /// The alignment of the child items.
  final AlignItems alignItems;

  /// The child components to be displayed.
  final List<Component> children;

  @override
  Component render() {
    final div = HTMLDivElement();
    div.style.display = 'flex';
    div.style.flexDirection = direction.flexDirection;
    div.style.alignItems = alignItems.name;
    for (final child in children) {
      div.appendComponent(child);
    }
    return Component.fromElement(div);
  }
}

/// {@template example_common.column_component}
/// a component that displays a set of [children] in a column
/// {@endtemplate}
class ColumnComponent extends FlexComponent {
  /// {@macro example_common.column_component}
  ColumnComponent({super.alignItems, required super.children})
    : super(direction: Axis.vertical);
}

/// {@template example_common.row_component}
/// a component that displays a set of [children] in a row
/// {@endtemplate}
class RowComponent extends FlexComponent {
  /// {@macro example_common.row_component}
  RowComponent({super.alignItems, required super.children})
    : super(direction: Axis.horizontal);
}
