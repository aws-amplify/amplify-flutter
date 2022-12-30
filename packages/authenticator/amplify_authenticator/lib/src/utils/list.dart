// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

extension ListX<T> on List<T> {
  List<T> spacedBy(T spacer) {
    return [
      for (var item in this) ...[
        item,
        spacer,
      ]
    ]..removeLast();
  }
}
