// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

abstract class AppPathProvider {
  AppPathProvider._();

  Future<String> getApplicationSupportPath();
  Future<String> getTemporaryPath();
}
