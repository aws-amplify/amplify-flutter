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

import 'dart:html';

import '../utils/component_edge_insets.dart';
import 'component.dart';

/// {@template example_common.container_component}
/// A component that renders a container with an optional child
/// {@endtemplate}
class ContainerComponent extends Component {
  /// {@macro example_common.container_component}
  ContainerComponent({
    this.child,
    this.height,
    this.width,
    this.margin,
    this.padding,
  });

  /// The child component to render inside the container
  final Component? child;

  /// The margin of the component
  final ComponentEdgeInsets? margin;

  /// The padding of the component
  final ComponentEdgeInsets? padding;

  /// The height of the component in px
  final double? height;

  /// The width of the component in px
  final double? width;

  @override
  Component render() {
    final div = Element.div();
    if (margin != null) div.style.margin = margin!.toCssString();
    if (padding != null) div.style.padding = padding!.toCssString();
    if (height != null) div.style.height = '${height}px';
    if (width != null) div.style.width = '${width}px';
    if (child != null) div.appendComponent(child!);
    return Component.fromElement(div);
  }
}
