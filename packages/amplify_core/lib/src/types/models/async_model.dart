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

import 'dart:async';
import 'dart:collection';

import 'package:amplify_core/amplify_core.dart';
import 'package:async/async.dart';

class AsyncModel<
    ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>,
    P extends PartialModel<ModelIdentifier, M>,
    T extends P> with AWSSerializable<Map<String, Object?>?> {
  AsyncModel(FutureOr<T> Function(DataStorePluginInterface) this._model);
  AsyncModel.fromModel(T this._cache);
  AsyncModel.fromModelIdentifier(ModelType<ModelIdentifier, M, P> modelType,
      ModelIdentifier modelIdentifier)
      : _model = ((plugin) async =>
            await plugin.queryById(modelType, modelIdentifier) as T);

  T _save(T model) {
    _cache = model;
    _model = null;
    return model;
  }

  T? _cache;
  FutureOr<T> Function(DataStorePluginInterface)? _model;
  AsyncMemoizer<T>? _getMemo;

  /// Returns the cached model, if any.
  ///
  /// Use [get] to retrieve the model if it is not cached.
  T? get cache => _cache;

  /// Retrieves the model, returning a [Future] if the model is not available
  /// synchronously.
  FutureOr<T> get([DataStorePluginInterface? dataStore]) {
    // TODO(dnys1): Decide how to expose this publicly.
    // ignore: invalid_use_of_protected_member
    final plugin = dataStore ?? Amplify.DataStore.defaultPlugin;
    final cache = _cache;
    if (cache != null) {
      return cache;
    }
    if (_getMemo != null) {
      return _getMemo!.future;
    }
    final model = _model!;
    _model = null;
    if (model is T Function(DataStorePluginInterface)) {
      return _save(model(plugin));
    }
    _getMemo = AsyncMemoizer();
    return _getMemo!.runOnce(() => model(plugin)).then(_save);
  }

  @override
  Map<String, Object?>? toJson() => cache?.toJson();
}

class AsyncModelCollection<
        ModelIdentifier extends Object,
        M extends Model<ModelIdentifier, M>,
        P extends PartialModel<ModelIdentifier, M>,
        T extends PartialModel<ModelIdentifier, M>>
    with AWSSerializable<List<Map<String, Object?>>> {
  AsyncModelCollection.fromResult(
    PaginatedResult<ModelIdentifier, M, P, T> result,
  )   : _cache = List.of(result.items.whereType()),
        _stream = null,
        _latestResult = result;

  AsyncModelCollection.fromList(List<T> cache)
      : _cache = List.of(cache),
        _stream = null,
        _latestResult = const PaginatedResult.empty();

  AsyncModelCollection.fromStream(Stream<List<T>> this._stream)
      : _cache = [],
        _latestResult = const PaginatedResult.empty();

  final List<T> _cache;
  final Stream<List<T>>? _stream;
  PaginatedResult<ModelIdentifier, M, P, T> _latestResult;

  /// The list of cached models.
  List<T> get cache => UnmodifiableListView(_cache);

  /// Whether there are more models to load.
  bool get hasNext => _latestResult.hasNextResult;

  /// Returns the next page of results.
  Future<List<T>> next() async {
    if (_latestResult.hasNextResult) {
      final response = await Amplify.API
          .query(request: _latestResult.requestForNextResult!)
          .response;
      if (response.errors.isNotEmpty) {
        // TODO(dnys1): Replace with a GraphQL-specific exception type.
        throw Exception(response.errors);
      }
      _latestResult = response.data ?? const PaginatedResult.empty();
      _cache.addAll(_latestResult.items.whereType());
      return _latestResult.items.whereType<T>().toList();
    }
    return const [];
  }

  /// Loads all models lazily.
  Stream<List<T>> loadAll() async* {
    if (_cache.isNotEmpty) {
      yield _cache;
    }
    final stream = _stream;
    if (stream != null) {
      yield* stream;
    } else {
      while (_latestResult.hasNextResult) {
        yield await next();
      }
    }
  }

  @override
  List<Map<String, Object?>> toJson() =>
      _cache.map((el) => el.toJson()).toList();
}
