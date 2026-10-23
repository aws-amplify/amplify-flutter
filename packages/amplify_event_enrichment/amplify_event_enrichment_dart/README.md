# AWS Event Enrichment for Dart

Dart-only implementation for on-device event enrichment. It collects device, app, session, and SDK context and produces a structured analytics JSON envelope. For internal use in the `amplify_event_enrichment` Flutter library.

## Code generation

The event envelope is serialized with `json_serializable`. After changing any of the envelope classes in `lib/src/enriched_event.dart`, regenerate `enriched_event.g.dart` rather than editing it:

```bash
dart run build_runner build
```
