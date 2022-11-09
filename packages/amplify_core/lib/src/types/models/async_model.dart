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

class AsyncModel<
    ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>,
    P extends PartialModel<ModelIdentifier, M>,
    T extends P> with AWSSerializable<Map<String, Object?>?> {
  AsyncModel(FutureOr<T> Function() this._model);

  T _save(T model) {
    _cache = model;
    _model = null;
    return model;
  }

  T? _cache;
  FutureOr<T> Function()? _model;

  /// Returns the cached model, if any.
  ///
  /// Use [get] to retrieve the model if it is not cached.
  T? get cache {
    final cache = _cache;
    if (cache != null) {
      return cache;
    }
    final model = _model!;
    if (model is T Function()) {
      return _save(model());
    }
    return null;
  }

  /// Retrieves the model, returning a [Future] if the model is not available
  /// synchronously.
  FutureOr<T> get() {
    final cache = _cache;
    if (cache != null) {
      return cache;
    }
    final model = _model!();
    if (model is T) {
      return _save(model);
    }
    return model.then(_save);
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
      PaginatedResult<ModelIdentifier, M, P, T> result)
      : _cache = List.of(result.items),
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
      _latestResult = response.data ?? const PaginatedResult.empty();
      _cache.addAll(_latestResult.items);
      return _latestResult.items;
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
