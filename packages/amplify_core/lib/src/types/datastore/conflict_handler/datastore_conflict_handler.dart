// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

typedef DataStoreConflictHandler = ConflictResolutionDecision Function(
  ConflictData,
);

@immutable
class ConflictData {
  const ConflictData(this.local, this.remote);

  ConflictData.fromJson(
    ModelType modelType,
    Map<String, dynamic> localJson,
    Map<String, dynamic> remoteJson,
  )   : local = modelType.fromJson(localJson),
        remote = modelType.fromJson(remoteJson);

  final Model local;
  final Model remote;
}

enum ResolutionStrategy { applyRemote, retryLocal, retry }

@immutable
class ConflictResolutionDecision {
  const ConflictResolutionDecision(this._resolutionStrategy, this.customModel);

  const ConflictResolutionDecision.applyRemote()
      : _resolutionStrategy = ResolutionStrategy.applyRemote,
        customModel = null;

  const ConflictResolutionDecision.retryLocal()
      : _resolutionStrategy = ResolutionStrategy.retryLocal,
        customModel = null;

  const ConflictResolutionDecision.retry(Model this.customModel)
      : _resolutionStrategy = ResolutionStrategy.retry;

  final ResolutionStrategy _resolutionStrategy;
  final Model? customModel;

  @override
  String toString() {
    return 'ConflictResolutionDecision{resolutionStrategy=$_resolutionStrategy,'
        ' customModel=$customModel}';
  }

  Map<String, Object?> toJson() => <String, Object?>{
        'resolutionStrategy': _resolutionStrategy.name,
        'customModel': customModel?.toJson(),
      };
}
