// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Compile-time environment declarations for platform and mode detection.
///
/// These constants mirror the semantics of their `k`-prefixed counterparts in
/// `package:flutter/foundation.dart` (`kDebugMode`, `kProfileMode`,
/// `kReleaseMode`, `kIsWeb`, `kIsWasm`) but use a `z` prefix to avoid
/// naming conflicts when both this package and Flutter's foundation are
/// imported in the same library.
///
/// All values are resolved at compile time via [bool.fromEnvironment],
/// enabling dead-code elimination (tree-shaking) — branches guarded by
/// these constants that evaluate to `false` are removed from the final
/// build output entirely.
///
/// ## Platform detection matrix
///
/// | Compilation target | [zIsWeb] | [zIsWasm] | [zIsJs] |
/// |--------------------|----------|-----------|---------|
/// | `dart2js`          | `true`   | `false`   | `true`  |
/// | `dart2wasm`        | `true`   | `true`    | `false` |
/// | VM / native        | `false`  | `false`   | `false` |
///
/// ## JS + Wasm on the web
///
/// Dart's `dart2wasm` compiler produces a `.wasm` module **plus** a
/// JavaScript bootstrap/glue file. The glue JS instantiates the Wasm
/// module, wires up `dart:js_interop` bindings, and bridges browser APIs.
/// This is why [zIsWeb] is `true` for *both* `dart2js` and `dart2wasm`
/// targets — the `dart.library.js_interop` library is available in both.
///
/// Use [zIsJs] (i.e. `zIsWeb && !zIsWasm`) when you need to distinguish
/// code paths that should only run under `dart2js` (pure-JS output) from
/// those running under `dart2wasm`.
///
/// ### Standards for combining JS and Wasm
///
/// The web platform provides several standardised mechanisms for
/// JavaScript ↔ WebAssembly interoperation:
///
/// * **WebAssembly JavaScript API** — The `WebAssembly` global object
///   (`WebAssembly.instantiate`, `WebAssembly.Module`, etc.) provides
///   the imperative API for compiling, instantiating, and interacting
///   with Wasm modules from JavaScript. This is a W3C standard
///   (https://webassembly.github.io/spec/js-api/).
///
/// * **WebAssembly ESM Integration** (Stage 2 proposal) — Allows
///   `.wasm` files to be imported directly via ES module `import`
///   statements (e.g. `import { foo } from './module.wasm'`), making
///   Wasm modules first-class participants in JavaScript module graphs.
///   See: https://github.com/nicolo-ribaudo/esm-integration
///
/// * **WebAssembly Component Model** — A higher-level architecture by
///   the Bytecode Alliance for building interoperable Wasm components
///   with rich type interfaces (WIT). Enables language-agnostic
///   composition of Wasm modules.
///   See: https://component-model.bytecodealliance.org/
///
/// Dart's `dart2wasm` currently uses the **WebAssembly JavaScript API**
/// via its generated JS glue code, and does not yet leverage ESM
/// Integration or the Component Model.
library;

// ---------------------------------------------------------------------------
// Build-mode detection
// ---------------------------------------------------------------------------

/// Whether the app was compiled in profile mode.
///
/// Equivalent to Flutter's `kProfileMode`.
///
/// Set to `true` when the Dart VM is started with `--profile`, or when
/// the compiler is invoked with `dart.vm.profile=true`.
const bool zProfileMode = bool.fromEnvironment('dart.vm.profile');

/// Whether the app was compiled in release mode.
///
/// Equivalent to Flutter's `kReleaseMode`.
///
/// Set to `true` when the Dart VM is started with `--release`, or when
/// the compiler is invoked with `dart.vm.product=true`.
const bool zReleaseMode = bool.fromEnvironment('dart.vm.product');

/// Whether the app is running in debug mode.
///
/// Equivalent to Flutter's `kDebugMode`.
///
/// This is `true` when neither [zProfileMode] nor [zReleaseMode] is set,
/// which is the default when running via `dart run` or `flutter run`
/// without additional flags.
const bool zDebugMode = !zProfileMode && !zReleaseMode;

// ---------------------------------------------------------------------------
// Platform / compilation-target detection
// ---------------------------------------------------------------------------

/// Whether the app was compiled for a web target (`dart2js` or `dart2wasm`).
///
/// Equivalent to Flutter's `kIsWeb`.
///
/// This checks for the availability of the `dart:js_interop` library,
/// which is present for both the `dart2js` (pure JS) and `dart2wasm`
/// (Wasm + JS glue) compilation targets.
const bool zIsWeb = bool.fromEnvironment('dart.library.js_interop');

/// Whether the app was compiled to WebAssembly via `dart2wasm`.
///
/// Equivalent to Flutter's `kIsWasm`.
///
/// When `true`, [zIsWeb] is also always `true` (Wasm web apps still use
/// JS interop for browser API access via the generated glue code).
///
/// Use this to gate Wasm-specific optimisations or workarounds.
const bool zIsWasm = bool.fromEnvironment('dart.tool.dart2wasm');

/// Whether the app was compiled to JavaScript via `dart2js`.
///
/// This is a convenience constant equivalent to `zIsWeb && !zIsWasm`.
/// It is `true` only for the traditional JS compilation target.
///
/// Use this to gate JS-specific code paths (e.g. `dart:js_interop`
/// patterns that behave differently under Wasm, or JS-only performance
/// workarounds).
const bool zIsJs = zIsWeb && !zIsWasm;
