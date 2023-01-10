// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/material.dart';

abstract class Resolver<ResolverKey> {
  const Resolver();

  String resolve(BuildContext context, ResolverKey key);
}
