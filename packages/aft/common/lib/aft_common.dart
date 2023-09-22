// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Common types and utilities shared between AFT and other local development tools.
library aft_common;

export 'src/changelog/changelog.dart';
export 'src/changelog/commit_message.dart';
export 'src/changelog/printer.dart';
export 'src/config/config.dart';
export 'src/config/config_loader.dart';
export 'src/config/package_selector.dart';
export 'src/config/raw_config.dart';
export 'src/config/script_template.dart';
export 'src/config/serializers.dart'
    show JsonSerializer, VersionConstraintSerializer;
export 'src/deputy/deputy.dart';
export 'src/deputy/group.dart';
export 'src/git/commit.dart';
export 'src/git/commit_reference.dart';
export 'src/git/git_dir.dart';
export 'src/git/process.dart';
export 'src/git/tag.dart';
export 'src/models.dart';
export 'src/repo.dart';
export 'src/util.dart';
export 'src/version_resolver.dart';
