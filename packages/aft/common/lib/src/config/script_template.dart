// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:mustache_template/mustache_template.dart';

class ScriptTemplater {
  ScriptTemplater(
    this._templateString, {
    this.partials = const {},
  });

  final String _templateString;
  late final Template _template = Template(
    _templateString,
    partialResolver: (name) => partials[name],
  );

  final Map<String, Template> partials;

  String render([Map<String, Object?>? input]) {
    return _template.renderString(input);
  }
}
