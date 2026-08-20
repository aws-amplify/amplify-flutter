# Event Enrichment Example

A minimal Flutter app demonstrating the `amplify_event_enrichment` package.

## What it does

- Initializes `EventEnrichmentClientFlutter` with a console-logging `Sender`
- Records sample events with attributes and metrics
- Exercises global fields and user identity
- Session lifecycle is tracked automatically (background/foreground the app to see session pause/resume in action)
- Emits a `_session.stop` event when a session ends, so you can see the session's stop timestamp and duration
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

## Session stop events

Whenever a session ends, a `_session.stop` event is printed alongside the events
you recorded, carrying that session's `stop_timestamp` and `duration`.

1. Tap **Record Event**, then **Stop Session** — a `_session.stop` envelope is
   printed for the session you just used
2. Tap **Record Event** again — a new session starts, and the next stop reports
   that one
3. Backgrounding for longer than 5s prints one too, from the session timeout
4. **Close** prints a final one for whatever session is still running
