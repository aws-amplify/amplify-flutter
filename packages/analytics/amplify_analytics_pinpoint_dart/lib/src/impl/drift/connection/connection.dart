// We use a conditional export to expose the right connection factory depending
// on the platform.
export 'connection_none.dart'
    if (dart.library.html) 'connection_html.dart'
    if (dart.library.io) 'connection_io.dart';
