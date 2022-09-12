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
// Autogenerated from Pigeon (v3.2.7), do not edit directly.
// See also: https://pub.dev/packages/pigeon

package com.amazonaws.amplify.amplify_secure_storage.amplify_secure_storage;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.StandardMessageCodec;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

/** Generated class from Pigeon. */
@SuppressWarnings({"unused", "unchecked", "CodeBlock2Expr", "RedundantSuppression"})
public class Messages {

  public interface Result<T> {
    void success(T result);
    void error(Throwable error);
  }
  private static class AmplifySecureStorageApiCodec extends StandardMessageCodec {
    public static final AmplifySecureStorageApiCodec INSTANCE = new AmplifySecureStorageApiCodec();
    private AmplifySecureStorageApiCodec() {}
  }

  /** Generated interface from Pigeon that represents a handler of messages from Flutter.*/
  public interface AmplifySecureStorageApi {
    void read(@NonNull String namespace, @NonNull String key, Result<String> result);
    void write(@NonNull String namespace, @NonNull String key, @Nullable String value, Result<Void> result);
    void delete(@NonNull String namespace, @NonNull String key, Result<Void> result);

    /** The codec used by AmplifySecureStorageApi. */
    static MessageCodec<Object> getCodec() {
      return AmplifySecureStorageApiCodec.INSTANCE;
    }

    /** Sets up an instance of `AmplifySecureStorageApi` to handle messages through the `binaryMessenger`. */
    static void setup(BinaryMessenger binaryMessenger, AmplifySecureStorageApi api) {
      {
        BinaryMessenger.TaskQueue taskQueue = binaryMessenger.makeBackgroundTaskQueue();
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(binaryMessenger, "dev.flutter.pigeon.AmplifySecureStorageApi.read", getCodec(), taskQueue);
        if (api != null) {
          channel.setMessageHandler((message, reply) -> {
            Map<String, Object> wrapped = new HashMap<>();
            try {
              ArrayList<Object> args = (ArrayList<Object>)message;
              String namespaceArg = (String)args.get(0);
              if (namespaceArg == null) {
                throw new NullPointerException("namespaceArg unexpectedly null.");
              }
              String keyArg = (String)args.get(1);
              if (keyArg == null) {
                throw new NullPointerException("keyArg unexpectedly null.");
              }
              Result<String> resultCallback = new Result<String>() {
                public void success(String result) {
                  wrapped.put("result", result);
                  reply.reply(wrapped);
                }
                public void error(Throwable error) {
                  wrapped.put("error", wrapError(error));
                  reply.reply(wrapped);
                }
              };

              api.read(namespaceArg, keyArg, resultCallback);
            }
            catch (Error | RuntimeException exception) {
              wrapped.put("error", wrapError(exception));
              reply.reply(wrapped);
            }
          });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BinaryMessenger.TaskQueue taskQueue = binaryMessenger.makeBackgroundTaskQueue();
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(binaryMessenger, "dev.flutter.pigeon.AmplifySecureStorageApi.write", getCodec(), taskQueue);
        if (api != null) {
          channel.setMessageHandler((message, reply) -> {
            Map<String, Object> wrapped = new HashMap<>();
            try {
              ArrayList<Object> args = (ArrayList<Object>)message;
              String namespaceArg = (String)args.get(0);
              if (namespaceArg == null) {
                throw new NullPointerException("namespaceArg unexpectedly null.");
              }
              String keyArg = (String)args.get(1);
              if (keyArg == null) {
                throw new NullPointerException("keyArg unexpectedly null.");
              }
              String valueArg = (String)args.get(2);
              Result<Void> resultCallback = new Result<Void>() {
                public void success(Void result) {
                  wrapped.put("result", null);
                  reply.reply(wrapped);
                }
                public void error(Throwable error) {
                  wrapped.put("error", wrapError(error));
                  reply.reply(wrapped);
                }
              };

              api.write(namespaceArg, keyArg, valueArg, resultCallback);
            }
            catch (Error | RuntimeException exception) {
              wrapped.put("error", wrapError(exception));
              reply.reply(wrapped);
            }
          });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BinaryMessenger.TaskQueue taskQueue = binaryMessenger.makeBackgroundTaskQueue();
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(binaryMessenger, "dev.flutter.pigeon.AmplifySecureStorageApi.delete", getCodec(), taskQueue);
        if (api != null) {
          channel.setMessageHandler((message, reply) -> {
            Map<String, Object> wrapped = new HashMap<>();
            try {
              ArrayList<Object> args = (ArrayList<Object>)message;
              String namespaceArg = (String)args.get(0);
              if (namespaceArg == null) {
                throw new NullPointerException("namespaceArg unexpectedly null.");
              }
              String keyArg = (String)args.get(1);
              if (keyArg == null) {
                throw new NullPointerException("keyArg unexpectedly null.");
              }
              Result<Void> resultCallback = new Result<Void>() {
                public void success(Void result) {
                  wrapped.put("result", null);
                  reply.reply(wrapped);
                }
                public void error(Throwable error) {
                  wrapped.put("error", wrapError(error));
                  reply.reply(wrapped);
                }
              };

              api.delete(namespaceArg, keyArg, resultCallback);
            }
            catch (Error | RuntimeException exception) {
              wrapped.put("error", wrapError(exception));
              reply.reply(wrapped);
            }
          });
        } else {
          channel.setMessageHandler(null);
        }
      }
    }
  }
  private static Map<String, Object> wrapError(Throwable exception) {
    Map<String, Object> errorMap = new HashMap<>();
    errorMap.put("message", exception.toString());
    errorMap.put("code", exception.getClass().getSimpleName());
    errorMap.put("details", "Cause: " + exception.getCause() + ", Stacktrace: " + Log.getStackTraceString(exception));
    return errorMap;
  }
}
