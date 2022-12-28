// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_helper.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_init_result.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_init_worker.worker.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:worker_bee/worker_bee.dart';

part 'srp_init_worker.g.dart';

/// {@template amplify_auth_cognito.srp_init_worker}
/// Empty message for [SrpInitWorker].
/// {@endtemplate}
abstract class SrpInitMessage
    implements Built<SrpInitMessage, SrpInitMessageBuilder> {
  /// {@macro amplify_auth_cognito.srp_init_worker}
  factory SrpInitMessage([void Function(SrpInitMessageBuilder) updates]) =
      _$SrpInitMessage;
  SrpInitMessage._();

  /// The [SrpInitMessage] serializer.
  static Serializer<SrpInitMessage> get serializer =>
      _$srpInitMessageSerializer;
}

/// {@template amplify_auth_cognito.srp_init_worker}
/// Worker bee for handling the SRP initialization routine.
/// {@endtemplate}
@WorkerBee('lib/src/workers/workers.dart')
abstract class SrpInitWorker
    extends WorkerBeeBase<SrpInitMessage, SrpInitResult> {
  /// {@macro amplify_auth_cognito.srp_init_worker}
  SrpInitWorker() : super(serializers: serializers);

  /// {@macro amplify_auth_cognito.srp_init_worker}
  factory SrpInitWorker.create() = SrpInitWorkerImpl;

  @override
  Future<SrpInitResult?> run(
    Stream<SrpInitMessage> listen,
    StreamSink<SrpInitResult> respond,
  ) async {
    // ignore: no_leading_underscores_for_local_identifiers
    await for (final _ in listen) {
      respond.add(SrpHelper.deriveEphemeralValues());
    }
    return null;
  }
}

/// Serializers for the [SrpInitWorker] worker.
@SerializersFor([
  SrpInitResult,
  SrpInitMessage,
])
final Serializers serializers = _$serializers;
