// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'component.dart';

/// {@template example_common.builder_component}
/// A component that exposes a [builder] method, which should
/// return a [Component]
/// {@endtemplate}
class BuilderComponent extends Component {
  /// {@macro example_common.builder_component}
  BuilderComponent({required this.builder});

  /// A builder method which will be used to render a child
  final Component Function() builder;

  @override
  Component render() {
    return builder();
  }
}
