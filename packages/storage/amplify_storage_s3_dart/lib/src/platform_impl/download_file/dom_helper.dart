// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:html';

/// {@template amplify_storage_s3_dart.dom_helper}
/// Helper to insert a hidden DOM element into the Web page to trigger
/// a download for s3 download file operation in Web.
/// {@endtemplate}
class DomHelper {
  DomHelper._() {
    _initializeContainerElement('__amplify_storage_downloader');
  }

  late Element _container;

  static final DomHelper _instance = DomHelper._();

  /// Gets a instance of the [DomHelper]
  static DomHelper get instance => _instance;

  void _initializeContainerElement(String containerId) {
    final container = Element.tag('amplify_storage_downloader')
      ..id = containerId
      ..style.display = 'none';

    querySelector('body')!.children.add(container);
    _container = container;
  }

  /// Triggers browser download for the `url` with `name`.
  void download({
    required String url,
    String? name = '',
  }) {
    final anchor = AnchorElement()
      ..href = url
      ..download = name;

    _container.children.add(anchor);
    anchor.click();
    _container.children.remove(anchor);
  }
}
