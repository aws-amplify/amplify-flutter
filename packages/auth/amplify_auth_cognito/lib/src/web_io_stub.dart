// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: public_member_api_docs, avoid_classes_with_only_static_members

// Web stub for dart:io — Platform is not available on web.
// auth_plugin_impl.dart guards all Platform.isX calls with zIsWeb checks,
// so these are never actually called on web.

abstract class Platform {
  static bool get isAndroid => false;
  static bool get isIOS => false;
  static bool get isMacOS => false;
  static bool get isWindows => false;
  static bool get isLinux => false;
}
