# Event Enrichment Example

A minimal Flutter app demonstrating the `amplify_event_enrichment` package.

## What it does

- Initializes `EventEnrichmentClientFlutter` with a console-logging `EnrichedEventSender`
- Records sample events with attributes and metrics
- Exercises global fields and user identity
- Session lifecycle is tracked automatically (background/foreground the app to see session pause/resume in action)
- Emits `_session.start` and `_session.stop` events at session boundaries, so you can see each session's start timestamp, stop timestamp and duration
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

## Session events

Session boundaries are printed alongside the events you record: `_session.start`
when a session begins, and `_session.stop` when it ends, carrying that session's
`stop_timestamp` and `duration`.

1. A `_session.start` is printed as soon as the client initializes
2. Tap **Record Event**, then **Stop Session** — a `_session.stop` envelope is
   printed for the session you just used
3. Tap **Record Event** again — a new session starts, so a `_session.start` is
   printed before the recorded event
4. **Start Session** on a running session prints the stop for the old one and
   then the start for the new one, in that order
5. Backgrounding for longer than 5s prints a stop from the session timeout, and
   returning prints the start for the replacement session
6. **Close** prints a final stop for whatever session is still running
