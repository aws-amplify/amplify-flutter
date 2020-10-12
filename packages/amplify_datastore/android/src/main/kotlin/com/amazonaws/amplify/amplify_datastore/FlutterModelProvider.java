/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

package com.amazonaws.amplify.amplify_datastore;

import com.amplifyframework.core.model.Model;
import com.amplifyframework.core.model.ModelProvider;
import com.amplifyframework.core.model.ModelSchema;
import com.amplifyframework.util.Immutable;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class FlutterModelProvider implements ModelProvider {

    private static final String FLUTTER_MODEL_VERSION = "72c040baca4cf48a5330a4a2e02aa042";
    private static FlutterModelProvider flutterGeneratedModelInstance;

    private final Map<String, ModelSchema> modelSchemaMap = new HashMap<>();

    private FlutterModelProvider() {

    }

    public static FlutterModelProvider getInstance() {
        if (flutterGeneratedModelInstance == null) {
            flutterGeneratedModelInstance = new FlutterModelProvider();
        }
        return flutterGeneratedModelInstance;
    }

    @Override
    public Set<Class<? extends Model>> models() {
        return null;
    }

    @Override
    public String version() {
        return FLUTTER_MODEL_VERSION;
    }

    @Override
    public Map<String, ModelSchema> modelSchemas() {
        return Immutable.of(modelSchemaMap);
    }

    @Override
    public Set<String> modelNames() {
        return Immutable.of(modelSchemaMap.keySet());
    }

    public void addModelSchema(String modelName, ModelSchema modelSchema) {
        modelSchemaMap.put(modelName, modelSchema);
    }
}
