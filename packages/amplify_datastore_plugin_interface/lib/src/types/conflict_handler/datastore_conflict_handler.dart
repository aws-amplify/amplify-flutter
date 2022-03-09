import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

typedef DataStoreConflictHandler = ConflictResolutionDecision Function(
    ConflictData);

class ConflictData {
  Model local;
  Model remote;

  ConflictData(this.local, this.remote);

  ConflictData.fromJson(ModelType modelType, Map<String, dynamic> localJson,
      Map<String, dynamic> remoteJson)
      : local = modelType.fromJson(
            new Map<String, dynamic>.from(localJson["serializedData"])),
        remote = modelType.fromJson(
            new Map<String, dynamic>.from(remoteJson["serializedData"]));
}

enum ResolutionStrategy { APPLY_REMOTE, RETRY_LOCAL, RETRY }

class ConflictResolutionDecision {
  ResolutionStrategy _resolutionStrategy;
  Model? customModel;

  ConflictResolutionDecision(this._resolutionStrategy, customModel);

  ConflictResolutionDecision.applyRemote()
      : _resolutionStrategy = ResolutionStrategy.APPLY_REMOTE;

  ConflictResolutionDecision.retryLocal()
      : _resolutionStrategy = ResolutionStrategy.RETRY_LOCAL;

  ConflictResolutionDecision.retry(this.customModel)
      : _resolutionStrategy = ResolutionStrategy.RETRY;

  @override
  String toString() {
    return "ConflictResolutionDecision{" +
        "resolutionStrategy=" +
        _resolutionStrategy.toString() +
        ", customModel=" +
        customModel.toString() +
        "}";
  }

  Map<String, dynamic> toJson() => {
        'resolutionStrategy': describeEnum(_resolutionStrategy),
        'customModel': customModel?.toJson()
      };
}
