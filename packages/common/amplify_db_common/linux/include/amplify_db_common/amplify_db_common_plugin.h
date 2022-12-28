// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

#ifndef FLUTTER_PLUGIN_AMPLIFY_DB_COMMON_PLUGIN_H_
#define FLUTTER_PLUGIN_AMPLIFY_DB_COMMON_PLUGIN_H_

#include <flutter_linux/flutter_linux.h>

G_BEGIN_DECLS

#ifdef FLUTTER_PLUGIN_IMPL
#define FLUTTER_PLUGIN_EXPORT __attribute__((visibility("default")))
#else
#define FLUTTER_PLUGIN_EXPORT
#endif

typedef struct _AmplifyDbCommonPlugin AmplifyDbCommonPlugin;
typedef struct {
  GObjectClass parent_class;
} AmplifyDbCommonPluginClass;

FLUTTER_PLUGIN_EXPORT GType amplify_db_common_plugin_get_type();

FLUTTER_PLUGIN_EXPORT void amplify_db_common_plugin_register_with_registrar(
    FlPluginRegistrar* registrar);

G_END_DECLS

#endif  // FLUTTER_PLUGIN_AMPLIFY_DB_COMMON_PLUGIN_H_
