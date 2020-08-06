export 'Storage/StorageAccessLevel.dart';
export 'UploadFile/UploadFileOptions.dart';
export 'UploadFile/UploadFileRequest.dart';
export 'UploadFile/UploadFileResponse.dart';

//part of amplify_storage_plugin_interface;

// class UploadFileRequest {
//   String path;
//   String key;
//   UploadFileOptions options;

//   UploadFileRequest({@required this.path, @required this.key, this.options});

//   Map<String, String> serializeAsMap() {
//     final Map<String, String> result = <String, String>{};
//     if (path != null) {
//       result['path'] = path;
//     }
//     if (accessLevel != null) {
//       result['accessLevel'] = accessLevel;
//     }
//     if (key != null) {
//       result['key'] = key;
//     }
//     return result;
//   }
// }

// class S3UploadFileOptions extends UploadFileOptions {
//   String targetIdentityId;

//   S3UploadFileOptions(
//       {StorageAccessLevel accessLevel,
//       String contentType,
//       Map<String, String> metadata,
//       this.targetIdentityId})
//       : super(
//             accessLevel: accessLevel,
//             contentType: contentType,
//             metadata: metadata);
// }
