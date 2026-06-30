# Event Enrichment Example

A minimal Flutter app demonstrating the `amplify_event_enrichment` package.

## What it does

- Initializes `EventEnrichmentClientFlutter` with a console-logging `EventSink`
- Records sample events with attributes and metrics
- Exercises global fields and user identity
- Session lifecycle is tracked automatically (background/foreground the app to see session pause/resume in action)
- Full enriched JSON envelopes are printed to the debug console

## Run

```bash
cd packages/amplify_event_enrichment/amplify_event_enrichment/example
flutter run
```

Watch the debug console (`flutter logs` or your IDE's console) for the full enriched JSON output on each recorded event.

## Session lifecycle

1. Tap **Record Event** — observe the session ID in the output
2. Background the app (press Home) and wait a few seconds
3. Return to the app and tap **Record Event** again
4. If you returned within 5s, the session ID is the same. After 5s, a new session starts automatically.
