// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$PubServerRouter(PubServer service) {
  final router = Router();
  router.add(
    'GET',
    r'/api/packages/<name>',
    service.getVersions,
  );
  router.add(
    'GET',
    r'/api/packages/<name>/versions/<version>',
    service.getVersion,
  );
  router.add(
    'GET',
    r'/api/packages/versions/new',
    service.newVersion,
  );
  router.add(
    'POST',
    r'/api/packages/versions/newUpload',
    service.upload,
  );
  router.add(
    'GET',
    r'/api/packages/versions/newUploadFinish',
    service.uploadFinish,
  );
  router.add(
    'GET',
    r'/packages/<name>/versions/<version>.tar.gz',
    service.download,
  );
  return router;
}
