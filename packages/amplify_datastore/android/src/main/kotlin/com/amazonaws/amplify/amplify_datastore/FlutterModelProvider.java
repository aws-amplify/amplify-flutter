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
