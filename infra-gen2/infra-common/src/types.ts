// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

export type Mutable<T> = {
  -readonly [P in keyof T]: T[P];
};
