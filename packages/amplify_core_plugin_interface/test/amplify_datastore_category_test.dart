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

import 'package:amplify_core_plugin_interface/amplify_core_plugin_interface.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DataStoreCategory without selected plugin', () {
    final datastore = DataStoreCategory();
    final modelType = FakeModelType();
    final model = FakeModel('id', modelType);

    test('query throws', () {
      expect(() => datastore.query(modelType), throwsA(noPluginError()));
    });
    test('delete throws', () {
      expect(() => datastore.delete(model), throwsA(noPluginError()));
    });
    test('save throws', () {
      expect(() => datastore.save(model), throwsA(noPluginError()));
    });
    test('observe throws', () {
      expect(() => datastore.observe(modelType), throwsA(noPluginError()));
    });
    test('clear throws', () {
      expect(() => datastore.clear(), throwsA(noPluginError()));
    });
  });
  group('DataStoreCategory with one selected plugin', () {
    DataStoreCategory datastore;
    FakePlugin plugin;
    FakeModelType modelType;
    FakeModel model;

    setUpAll(() {
      datastore = DataStoreCategory();
      plugin = FakePlugin();
      datastore.addPlugin(plugin);
      modelType = FakeModelType();
      model = FakeModel('id', modelType);
    });
    test('query passes to plugin', () {
      expect(datastore.query(modelType), completion(equals(List())));
    });
    test('delete passes to plugin', () {
      expect(datastore.delete(model), completion(equals(null)));
    });
    test('save passes to plugin', () {
      expect(datastore.save(model), completion(equals(null)));
    });
    test('observe passes to plugin', () {
      expect(datastore.observe(modelType), emitsInOrder([emitsDone]));
    });
    test('clear passes to plugin', () {
      expect(datastore.clear(), completion(equals(null)));
    });
  });
}

Matcher noPluginError() {
  return predicate((e) {
    return e is String &&
      e == 'No DataStore plugin is available. Did you add one?';
  });
}

class FakeModelProvider implements ModelProviderInterface {
  @override
  List<ModelSchema> modelSchemas;

  @override
  String version;
}

class FakePlugin implements DataStorePluginInterface {
  @override
  Future<void> clear() {
    return Future.value(null);
  }

  @override
  Future<void> configure({String configuration}) {
    return Future.value(null);
  }

  @override
  Future<void> configureModelProvider({ModelProviderInterface modelProvider}) {
    return Future.value(null);
  }

  @override
  Future<void> delete<T extends Model>(T model) {
    return Future.value(null);
  }

  @override
  ModelProviderInterface get modelProvider {
    return FakeModelProvider();
  }

  @override
  Stream<SubscriptionEvent<T>> observe<T extends Model>(
      ModelType<T> modelType) {
    return Stream.empty();
  }

  @override
  Future<List<T>> query<T extends Model>(
      ModelType<T> modelType,
      {QueryPredicate where, QueryPagination pagination, List<QuerySortBy> sortBy}) {
    return Future.value(List());
  }

  @override
  Future<void> save<T extends Model>(T model) {
    return Future.value(null);
  }
}

class FakeModel implements Model {
  String modelId;
  ModelType<Model> modelType;

  FakeModel(id, modelType) {
    this.modelId = id;
    this.modelType = modelType;
  }

  @override
  String getId() {
    return modelId;
  }

  @override
  ModelType<Model> getInstanceType() {
    return modelType;
  }

  @override
  String get id {
    return modelId;
  }

  @override
  Map<String, dynamic> toJson() {
    final value = Map<String, dynamic>();
    value['id'] = modelId;
    value['modelType'] = modelType.toString();
    return value;
  }
}

class FakeModelType extends ModelType<FakeModel> {
  @override
  FakeModel fromJson(Map<String, dynamic> jsonData) {
    return FakeModel("id", this);
  }
}
