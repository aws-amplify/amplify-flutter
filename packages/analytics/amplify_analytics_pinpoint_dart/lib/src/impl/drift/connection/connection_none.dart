import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/path_provider.dart';
import 'package:drift/drift.dart';

DatabaseConnection connect(CachedEventsPathProvider? pathProvider) {
  throw UnsupportedError(
      'No suitable database implementation was found on this platform.');
}
