// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include "include/amplify_db_common/amplify_db_common_plugin.h"

#include <flutter_linux/flutter_linux.h>
#include <gtk/gtk.h>
#include <sys/utsname.h>

#include <cstring>

#define AMPLIFY_DB_COMMON_PLUGIN(obj) \
  (G_TYPE_CHECK_INSTANCE_CAST((obj), amplify_db_common_plugin_get_type(), \
                              AmplifyDbCommonPlugin))

struct _AmplifyDbCommonPlugin {
  GObject parent_instance;
};

G_DEFINE_TYPE(AmplifyDbCommonPlugin, amplify_db_common_plugin, g_object_get_type())

// Called when a method call is received from Flutter.
static void amplify_db_common_plugin_handle_method_call(
    AmplifyDbCommonPlugin* self,
    FlMethodCall* method_call) {
  g_autoptr(FlMethodResponse) response = nullptr;

  const gchar* method = fl_method_call_get_name(method_call);

  if (strcmp(method, "getPlatformVersion") == 0) {
    struct utsname uname_data = {};
    uname(&uname_data);
    g_autofree gchar *version = g_strdup_printf("Linux %s", uname_data.version);
    g_autoptr(FlValue) result = fl_value_new_string(version);
    response = FL_METHOD_RESPONSE(fl_method_success_response_new(result));
  } else {
    response = FL_METHOD_RESPONSE(fl_method_not_implemented_response_new());
  }

  fl_method_call_respond(method_call, response, nullptr);
}

static void amplify_db_common_plugin_dispose(GObject* object) {
  G_OBJECT_CLASS(amplify_db_common_plugin_parent_class)->dispose(object);
}

static void amplify_db_common_plugin_class_init(AmplifyDbCommonPluginClass* klass) {
  G_OBJECT_CLASS(klass)->dispose = amplify_db_common_plugin_dispose;
}

static void amplify_db_common_plugin_init(AmplifyDbCommonPlugin* self) {}

static void method_call_cb(FlMethodChannel* channel, FlMethodCall* method_call,
                           gpointer user_data) {
  AmplifyDbCommonPlugin* plugin = AMPLIFY_DB_COMMON_PLUGIN(user_data);
  amplify_db_common_plugin_handle_method_call(plugin, method_call);
}

void amplify_db_common_plugin_register_with_registrar(FlPluginRegistrar* registrar) {
  AmplifyDbCommonPlugin* plugin = AMPLIFY_DB_COMMON_PLUGIN(
      g_object_new(amplify_db_common_plugin_get_type(), nullptr));

  g_autoptr(FlStandardMethodCodec) codec = fl_standard_method_codec_new();
  g_autoptr(FlMethodChannel) channel =
      fl_method_channel_new(fl_plugin_registrar_get_messenger(registrar),
                            "amplify_db_common",
                            FL_METHOD_CODEC(codec));
  fl_method_channel_set_method_call_handler(channel, method_call_cb,
                                            g_object_ref(plugin),
                                            g_object_unref);

  g_object_unref(plugin);
}
