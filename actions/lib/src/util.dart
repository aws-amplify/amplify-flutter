// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Marker for code which can never be reached.
Never get unreachable => throw _UnreachableError();

final class _UnreachableError extends Error {}
