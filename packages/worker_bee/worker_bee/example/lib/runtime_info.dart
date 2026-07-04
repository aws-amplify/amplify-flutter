/// Whether this code is running on the web (dart2js or dart2wasm).
const bool isWeb = bool.fromEnvironment('dart.library.js_interop');

/// The runtime this code is compiled for: `native`, `wasm (dart2wasm)`, or
/// `js (dart2js)`.
///
/// `1` and `1.0` are the same JS number under dart2js but distinct types under
/// dart2wasm, so `identical` tells the two web compilers apart.
String get runtimeDescription {
  if (!isWeb) return 'native';
  return identical(1, 1.0) ? 'js (dart2js)' : 'wasm (dart2wasm)';
}
