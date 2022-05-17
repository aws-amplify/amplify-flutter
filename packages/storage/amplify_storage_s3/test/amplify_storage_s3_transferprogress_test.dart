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

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'dart:io';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const MethodChannel storageMethodChannel =
      MethodChannel('com.amazonaws.amplify/storage_s3');
  const String transferEventChannel =
      'com.amazonaws.amplify/storage_transfer_progress_events';
  const standardCodec = StandardMethodCodec();

  AmplifyStorageS3 storage = AmplifyStorageS3();

  int totalTransferProgress = 15;
  int unitTransferProgress = 5;
  int numProgressEvents = (totalTransferProgress ~/ unitTransferProgress) + 1;

  tearDown(() {
    storageMethodChannel.setMockMethodCallHandler(null);
  });

  Map buildProgressionEventMap(String uuid, int currentBytes, int totalBytes) =>
      <String, dynamic>{
        'uuid': uuid,
        'currentBytes': currentBytes,
        'totalBytes': totalBytes
      };

  ByteData buildProgressionSuccessEvent(
          String uuid, int currentBytes, int totalBytes) =>
      standardCodec.encodeSuccessEnvelope(
          buildProgressionEventMap(uuid, currentBytes, totalBytes));

  Future<void> emitMockNativeValues(ByteData? event) {
    return ambiguate(ServicesBinding.instance)!
        .defaultBinaryMessenger
        .handlePlatformMessage(
          transferEventChannel,
          event,
          (ByteData? reply) {},
        );
  }

  void setupTransferEventChannel() {
    Future sendTransferProgressEvents(String uuid) async {
      var futures = <Future>[];
      for (int i = 0; i < numProgressEvents; i++) {
        futures.add(emitMockNativeValues(buildProgressionSuccessEvent(
            uuid, i * unitTransferProgress, totalTransferProgress)));
      }
      return Future.wait(futures);
    }

    ambiguate(ServicesBinding.instance)!
        .defaultBinaryMessenger
        .setMockMessageHandler(
      transferEventChannel,
      (ByteData? message) async {
        final methodCall = standardCodec.decodeMethodCall(message);
        switch (methodCall.method) {
          case 'listen':
            return standardCodec.encodeSuccessEnvelope(null);
          case 'cancel':
            return standardCodec.encodeSuccessEnvelope(null);
          default:
            fail('Unknown method: ${methodCall.method}');
        }
      },
    );

    // Set the method channel handler. Handles sending events for a transfer (upload/download file)
    // when the transfer is registered.
    storageMethodChannel
        .setMockMethodCallHandler((MethodCall methodCall) async {
      switch (methodCall.method) {
        case 'downloadFile':
          String uuid = methodCall.arguments['uuid'];
          await sendTransferProgressEvents(uuid);

          await Future.delayed(const Duration(seconds: 1));

          return {
            'path': 'downloadFilePath',
          };
        case 'uploadFile':
          String uuid = methodCall.arguments['uuid'];
          await sendTransferProgressEvents(uuid);

          await Future.delayed(const Duration(seconds: 1));

          return {
            'key': 'keyForFile',
          };
        case 'addPlugin':
          return {};
        default:
          fail('Unknown method: ${methodCall.method}');
      }
    });
  }

  // Download Happy Case
  Future downloadTask(String key) async {
    int progressCalls = 0;
    StreamController<TransferProgress> progressStreamController =
        StreamController<TransferProgress>();

    await storage.downloadFile(
        request: DownloadFileRequest(key: key, local: File('path/to/file')),
        onProgress: (event) {
          progressStreamController.add(event);
          progressCalls++;

          if (progressCalls == numProgressEvents) {
            progressStreamController.close();
          }
        });

    List<Matcher> matcherList = List<Matcher>.generate(
        numProgressEvents,
        (index) => allOf([
              isA<TransferProgress>(),
              predicate<TransferProgress>((item) {
                return item.currentBytes == (index * unitTransferProgress);
              })
            ]));

    await expectLater(
        progressStreamController.stream, emitsInOrder(matcherList));
    await expectLater(progressCalls, numProgressEvents);
  }

  test('downloadFile request returns proper transfer events in the happy case',
      () async {
    setupTransferEventChannel();
    await storage.addPlugin();

    await downloadTask("A");
  });

  test(
      'multiple downloadFile request returns proper transfer events in the happy case',
      () async {
    setupTransferEventChannel();
    await storage.addPlugin();

    Future task1 = downloadTask("A");
    Future task2 = downloadTask("B");
    Future task3 = downloadTask("C");

    await task1;
    await task2;
    await task3;
  });

  // Upload Happy Case
  Future uploadTask(String key) async {
    int progressCalls = 0;
    StreamController<TransferProgress> progressStreamController =
        StreamController<TransferProgress>();

    await storage.uploadFile(
        request: UploadFileRequest(key: key, local: File('path/to/file')),
        onProgress: (event) {
          progressStreamController.add(event);
          progressCalls++;

          if (progressCalls == numProgressEvents) {
            progressStreamController.close();
          }
        });

    List<Matcher> matcherList = List<Matcher>.generate(
        numProgressEvents,
        (index) => allOf([
              isA<TransferProgress>(),
              predicate<TransferProgress>((item) {
                return item.currentBytes == (index * unitTransferProgress);
              })
            ]));

    await expectLater(
        progressStreamController.stream, emitsInOrder(matcherList));
    await expectLater(progressCalls, numProgressEvents);
  }

  test('uploadFile request returns proper transfer events in the happy case',
      () async {
    setupTransferEventChannel();
    await storage.addPlugin();

    await uploadTask("A");
  });

  test(
      'multiple uploadFile request returns proper transfer events in the happy case',
      () async {
    setupTransferEventChannel();
    await storage.addPlugin();

    Future task1 = uploadTask("A");
    Future task2 = uploadTask("B");
    Future task3 = uploadTask("C");

    await task1;
    await task2;
    await task3;
  });

  // For Upload and Download sad case check downloadfile and uploadfile unit test files
}
