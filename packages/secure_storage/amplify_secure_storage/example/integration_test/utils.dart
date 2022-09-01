import 'package:path_provider/path_provider.dart';

/// Mimics an app uninstall on Linux & Windows by removing
/// all files in the application support directoyr
Future<void> uninstall() async {
  final dir = await getApplicationSupportDirectory();
  await dir.delete(recursive: true);
}
