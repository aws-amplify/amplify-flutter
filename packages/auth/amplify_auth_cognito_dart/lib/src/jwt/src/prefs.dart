// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';

/// Default serialization options for JWTs.
const jwtSerializable =
    JsonSerializable(includeIfNull: false, explicitToJson: true);
