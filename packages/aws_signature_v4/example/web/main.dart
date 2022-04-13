import 'dart:async';
import 'dart:html';
import 'dart:typed_data';

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:http/http.dart' as http;
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
  downloadBtnEl.hide();
  bucketNameEl.onChange.listen((e) {
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
  final String bucketName = bucketUpload.bucketName;
  final String region = bucketUpload.region;
  final File file = bucketUpload.file;
  final String filename = p.basename(bucketUpload.file.name);

  const AWSSigV4Signer signer = AWSSigV4Signer();

  // Set up S3 values
  final AWSCredentialScope scope =
      AWSCredentialScope(region: region, service: 's3');
  final ServiceConfiguration serviceConfiguration = S3ServiceConfiguration();
  final String host = '$bucketName.s3.$region.amazonaws.com';
  final String path = '/$filename';

  // Read the file's bytes
  final Blob fileBlob = file.slice();
  final FileReader reader = FileReader();
  reader.readAsArrayBuffer(fileBlob);
  await reader.onLoadEnd.first;
  final Uint8List? fileBytes = reader.result as Uint8List?;
  if (fileBytes == null) {
    throw Exception('Cannot read bytes from Blob.');
  }

  // Upload the file
  final AWSHttpRequest uploadRequest = AWSHttpRequest(
    method: HttpMethod.put,
    host: host,
    path: path,
    body: fileBytes,
    headers: {
      AWSHeaders.host: host,
      AWSHeaders.contentType: file.type,
    },
  );

  safePrint('Uploading file $filename to $path...');
  final AWSSignedRequest signedUploadRequest = await signer.sign(
    uploadRequest,
    credentialScope: scope,
    serviceConfiguration: serviceConfiguration,
  );
  final http.StreamedResponse uploadResponse = await signedUploadRequest.send();
  final int uploadStatus = uploadResponse.statusCode;
  safePrint('Upload File Response: $uploadStatus');
  if (uploadStatus != 200) {
    throw Exception('Could not upload file');
  }
  safePrint('File uploaded successfully!');

  // Create a pre-signed URL for downloading the file
  final AWSHttpRequest urlRequest = AWSHttpRequest(
    method: HttpMethod.get,
    host: host,
    path: path,
    headers: {
      AWSHeaders.host: host,
    },
  );
  final Uri signedUrl = await signer.presign(
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
  if (bucketName == null ||
      bucketName.isEmpty ||
      region == null ||
      region.isEmpty ||
      files == null ||
      files.isEmpty) {
    return null;
  }
  return BucketUpload(bucketName, region, files.first);
}

void updateState() {
  final uploadEnabled = getBucketUpload() != null;
  uploadBtnEl.disabled = !uploadEnabled;
}

extension on Element {
  void show() {
    style.display = 'block';
  }

  void hide() {
    style.display = 'none';
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
