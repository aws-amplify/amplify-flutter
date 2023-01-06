// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: omit_local_variable_types

import 'dart:async';
import 'dart:html';
import 'dart:typed_data';

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:path/path.dart' as p;

final TextInputElement bucketNameEl =
    document.getElementById('bucket-name') as TextInputElement;
final TextInputElement regionEl =
    document.getElementById('region') as TextInputElement;
final FileUploadInputElement fileEl =
    document.getElementById('file') as FileUploadInputElement;
final ButtonElement uploadBtnEl =
    document.getElementById('upload') as ButtonElement;
final AnchorElement downloadBtnEl =
    document.getElementById('download') as AnchorElement;

void main() {
  bucketNameEl.onChange.listen((e) {
    updateState();
  });
  regionEl.onChange.listen((e) {
    updateState();
  });
  fileEl.onChange.listen((e) {
    updateState();
  });
  uploadBtnEl.onClick.listen((e) async {
    e.preventDefault();

    final bucketUpload = getBucketUpload();
    if (bucketUpload == null) {
      return;
    }

    uploadBtnEl.setBusy(true);
    try {
      await upload(bucketUpload);
    } on Exception catch (e) {
      window.console.error(e);
    } finally {
      uploadBtnEl.setBusy(false);
    }
  });
}

Future<void> upload(BucketUpload bucketUpload) async {
  final bucketName = bucketUpload.bucketName;
  final region = bucketUpload.region;
  final file = bucketUpload.file;
  final filename = p.basename(bucketUpload.file.name);

  const signer = AWSSigV4Signer();

  // Set up S3 values
  final scope = AWSCredentialScope(
    region: region,
    service: AWSService.s3,
  );
  final serviceConfiguration = S3ServiceConfiguration();
  final host = '$bucketName.s3.$region.amazonaws.com';
  final path = '/$filename';

  // Read the file's bytes
  final fileBlob = file.slice();
  final reader = FileReader()..readAsArrayBuffer(fileBlob);
  await reader.onLoadEnd.first;
  final fileBytes = reader.result as Uint8List?;
  if (fileBytes == null) {
    throw Exception('Cannot read bytes from Blob.');
  }

  // Upload the file
  final uploadRequest = AWSHttpRequest.put(
    Uri.https(host, path),
    body: fileBytes,
    headers: {
      AWSHeaders.host: host,
      AWSHeaders.contentType: file.type,
    },
  );

  safePrint('Uploading file $filename to $path...');
  final signedUploadRequest = await signer.sign(
    uploadRequest,
    credentialScope: scope,
    serviceConfiguration: serviceConfiguration,
  );
  final uploadResponse = await signedUploadRequest.send().response;
  final uploadStatus = uploadResponse.statusCode;
  safePrint('Upload File Response: $uploadStatus');
  if (uploadStatus != 200) {
    throw Exception('Could not upload file');
  }
  safePrint('File uploaded successfully!');

  // Create a pre-signed URL for downloading the file
  final urlRequest = AWSHttpRequest.get(
    Uri.https(host, path),
    headers: {
      AWSHeaders.host: host,
    },
  );
  final signedUrl = await signer.presign(
    urlRequest,
    credentialScope: scope,
    serviceConfiguration: serviceConfiguration,
    expiresIn: const Duration(minutes: 10),
  );
  safePrint('Download URL: $signedUrl');

  downloadBtnEl
    ..href = signedUrl.toString()
    ..download = filename
    ..show();
}

class BucketUpload {
  const BucketUpload(this.bucketName, this.region, this.file);

  final String bucketName;
  final String region;
  final File file;
}

BucketUpload? getBucketUpload() {
  final bucketName = bucketNameEl.value;
  final region = regionEl.value;
  final files = fileEl.files;
  final hasInvalidProps = bucketName == null ||
      bucketName.isEmpty ||
      region == null ||
      region.isEmpty ||
      files == null ||
      files.isEmpty;
  if (hasInvalidProps) {
    return null;
  }
  return BucketUpload(bucketName, region, files.first);
}

bool get uploadEnabled => getBucketUpload() != null;

void updateState() {
  uploadBtnEl.disabled = !uploadEnabled;
}

extension on Element {
  void show() {
    style.display = 'block';
  }
}

extension on ButtonElement {
  void setBusy(bool busy) {
    if (busy) {
      setAttribute('aria-busy', true);
      text = 'Uploading...';
    } else {
      removeAttribute('aria-busy');
      text = 'Upload';
    }
  }
}
