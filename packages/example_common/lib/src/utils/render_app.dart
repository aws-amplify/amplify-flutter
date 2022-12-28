// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:html';

import 'package:example_common/example_common.dart';

const _rootComponentId = 'root-component';

/// Renders a [Component] as the root element
///
/// The DOM must have a body element
void renderApp(Component component) {
  var rootElement = document.getElementById(_rootComponentId);

  if (rootElement == null) {
    rootElement = Element.div()..id = _rootComponentId;
    final body = document.body;
    if (body == null) {
      throw Exception('The DOM must have a body element.');
    }
    body.append(rootElement);
  }

  final app = rootElement.firstChild;
  if (app == null) {
    rootElement.appendComponent(component);
  } else {
    app.replaceWith(component.renderElement());
  }
}
