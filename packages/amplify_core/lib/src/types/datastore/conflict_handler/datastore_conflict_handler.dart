import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';

typedef DataStoreConflictHandler = ConflictResolutionDecision Function(
    ConflictData);

@immutable
class ConflictData {
  final Model local;
  final Model remote;

  const ConflictData(this.local, this.remote);

  ConflictData.fromJson(ModelType modelType, Map<String, dynamic> localJson,
      Map<String, dynamic> remoteJson)
      : local = modelType.fromJson(
            (localJson["serializedData"] as Map).cast<String, dynamic>()),
        remote = modelType.fromJson(
            (remoteJson["serializedData"] as Map).cast<String, dynamic>());
}

enum ResolutionStrategy { applyRemote, retryLocal, retry }

@immutable
class ConflictResolutionDecision {
  final ResolutionStrategy _resolutionStrategy;
  final Model? customModel;

  const ConflictResolutionDecision(this._resolutionStrategy, this.customModel);

  ConflictResolutionDecision.applyRemote()
      : _resolutionStrategy = ResolutionStrategy.applyRemote,
        customModel = null;

  ConflictResolutionDecision.retryLocal()
      : _resolutionStrategy = ResolutionStrategy.retryLocal,
        customModel = null;

  ConflictResolutionDecision.retry(Model this.customModel)
      : _resolutionStrategy = ResolutionStrategy.retry;

  @override
  String toString() {
    return "ConflictResolutionDecision{" +
        "resolutionStrategy=" +
        _resolutionStrategy.toString() +
        ", customModel=" +
        customModel.toString() +
        "}";
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'resolutionStrategy': describeEnum(_resolutionStrategy),
        'customModel': customModel?.toJson()
      };
}
