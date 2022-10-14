import 'dart:html';

import 'package:amplify_core/amplify_core.dart';

/// {@macro amplify_core.get_base_element_href_from_dom}
String? getBaseElementHrefFromDom() {
  if (!zIsFlutter) return null;
  return document.querySelector('base')?.getAttribute('href');
}
