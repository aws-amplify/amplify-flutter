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

import 'dart:async';
import 'dart:html';

import 'package:meta/meta.dart';

/// {@template example_common.component}
/// A base component class that other components should extend
///
/// A Component is a wrapper around an [Element] that exposes some
/// lifecycle events
/// {@endtemplate}
abstract class Component {
  /// {@macro example_common.component}
  Component();

  // The current component instance
  late Component _component = render();

  // The element for this component
  Element get _element => _component._element;

  // Wether or not the component is mounted (current rendered in the DOM)
  bool _isMounted = false;

  /// The style of the component's element
  CssStyleDeclaration get style => _element.style;

  /// Calls [render], schedules the [componentDidMount] callback, and returns the [element]
  ///
  /// This should only be called when the Element is about to be inserted into the DOM.
  /// For example, when calling `element.append(component.renderElement())`.
  ///
  /// This generally shouldn't be used directly, but is useful for creating primitives
  Element renderElement() {
    if (!_isMounted) scheduleMicrotask(componentDidMount);
    return _element;
  }

  /// The render method for this component
  Component render();

  /// A callback to be executed when the component mounts (first rendered in the DOM)
  @mustCallSuper
  void componentDidMount() {
    _isMounted = true;
  }

  /// Creates a component from an html [Element].
  static Component fromElement(Element element) {
    return _ElementComponent(element);
  }
}

/// {@template example_common.stateful_component}
/// A component that manages state
/// {@endtemplate}
abstract class StatefulComponent extends Component {
  /// {@macro example_common.stateful_component}
  StatefulComponent() {
    onInit();
  }
  // re-render the component
  void _rerenderComponent() {
    final currentElement = _element;
    _component = render();
    currentElement.replaceWith(_element);
  }

  /// Execute a function, and then re-render the component
  void setState(void Function() fn) {
    fn();
    _rerenderComponent();
  }

  /// A lifecycle event that will be called after the component has been
  /// created, but not necessarily added to the DOM.
  ///
  /// See [componentDidMount] for a lifecycle event that fires after
  /// the component has been added to the DOM.
  void onInit() {}
}

/// A Component created from an html Element
///
/// Useful for creating primitive components, but generally
/// shouldn't be used directly
class _ElementComponent extends Component {
  @override
  final Element _element;

  _ElementComponent(Element element) : _element = element;

  @override
  Component render() {
    return this;
  }
}

/// Extension on [Node] to add component utils
extension NodeX on Node {
  /// calls [Component.renderElement], and appends the result to the node.
  Node appendComponent(Component component) {
    return append(component.renderElement());
  }
}
