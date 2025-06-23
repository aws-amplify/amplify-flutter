// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:example_common/src/components/component.dart';
import 'package:web/web.dart';

/// {@template example_common.center_component}
/// A component that centers the provided child
/// {@endtemplate}
class CenterComponent extends Component {
  /// {@macro example_common.center_component}
  CenterComponent({required this.child});

  /// The child component to be centered.
  final Component child;

  @override
  Component render() {
    final container = HTMLDivElement();
    container.style.display = 'flex';
    container.style.alignItems = 'center';
    container.style.justifyContent = 'center';
    container.appendComponent(child);
    return Component.fromElement(container);
  }
}
