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
