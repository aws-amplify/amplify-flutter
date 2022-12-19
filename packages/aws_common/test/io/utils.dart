// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:async/async.dart';

Future<List<int>> collectBytesFromChunkedReader(
  ChunkedStreamReader<int> chunkedStreamReader,
) async {
  final readBytes = <int>[];
  const readChunkSize = 10;
  var hasNext = true;

  while (hasNext) {
    final bytesChunk = await chunkedStreamReader.readChunk(readChunkSize);
    if (bytesChunk.isNotEmpty) {
      readBytes.addAll(bytesChunk);
    }
    if (bytesChunk.isEmpty || bytesChunk.length < readChunkSize) {
      hasNext = false;
    }
  }

  return readBytes;
}
