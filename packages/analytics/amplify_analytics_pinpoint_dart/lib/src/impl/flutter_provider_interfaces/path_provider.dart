import 'dart:io';

abstract class PathProvider {
  Future<Directory> getApplicationSupportPath();
}
