import 'dart:io';

abstract class CachedEventsPathProvider {
  Future<Directory> getApplicationSupportPath();
}
