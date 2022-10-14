import 'dart:html';

import 'package:amplify_core/amplify_core.dart';

/// Returns the href attribute of the element in the document for flutter apps,
/// and null for non flutter apps.
///
/// Returns null if the element isn't found within a flutter app.
///
/// Based on [getBaseElementHrefFromDom](https://api.flutter.dev/flutter/flutter_web_plugins/getBaseElementHrefFromDom.html)
String? getBaseElementHrefFromDom() {
  if (!zIsFlutter) return null;
  return document.querySelector('base')?.getAttribute('href');
}
