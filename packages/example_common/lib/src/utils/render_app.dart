// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:example_common/example_common.dart';
import 'package:web/web.dart';

const _rootComponentId = 'root-component';

/// Renders a [Component] as the root element
///
/// The DOM must have a body element
void renderApp(Component component) {
  var rootElement = document.getElementById(_rootComponentId);

  if (rootElement == null) {
    rootElement = HTMLDivElement()..id = _rootComponentId;
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
    app.parentNode?.replaceChild(app, component.renderElement());
  }
}
