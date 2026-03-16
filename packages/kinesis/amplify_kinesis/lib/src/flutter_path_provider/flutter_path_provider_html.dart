// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// On web, the path is unused — Drift uses IndexedDB.
Future<String?> getStoragePath() async => null;
