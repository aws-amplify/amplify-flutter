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

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

@immutable
class ConflictData<
    ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>,
    P extends PartialModel<ModelIdentifier, M>> {
  final M local;
  final M remote;

  const ConflictData(this.local, this.remote);

  ConflictData.fromJson(
    ModelType<ModelIdentifier, M, P> modelType,
    Map<String, Object?> localJson,
    Map<String, Object?> remoteJson,
  )   : local = modelType.fromJson<M>(
          (localJson['serializedData'] as Map).cast<String, dynamic>(),
        ),
        remote = modelType.fromJson<M>(
          (remoteJson['serializedData'] as Map).cast<String, dynamic>(),
        );
}

enum ResolutionStrategy { applyRemote, retryLocal, retry }

@immutable
class ConflictResolutionDecision<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  final ResolutionStrategy _resolutionStrategy;
  final M? customModel;

  const ConflictResolutionDecision(this._resolutionStrategy, this.customModel);

  const ConflictResolutionDecision.applyRemote()
      : _resolutionStrategy = ResolutionStrategy.applyRemote,
        customModel = null;

  const ConflictResolutionDecision.retryLocal()
      : _resolutionStrategy = ResolutionStrategy.retryLocal,
        customModel = null;

  const ConflictResolutionDecision.retry(M this.customModel)
      : _resolutionStrategy = ResolutionStrategy.retry;

  @override
  String toString() {
    return 'ConflictResolutionDecision{resolutionStrategy=$_resolutionStrategy,'
        ' customModel=$customModel}';
  }

  Map<String, Object?> toJson() => <String, Object?>{
        'resolutionStrategy': _resolutionStrategy.name,
        'customModel': customModel?.toJson()
      };
}
