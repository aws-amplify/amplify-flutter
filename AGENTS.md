# AGENTS.md — amplify-flutter repository

## What this repo is

This is the **amplify-flutter** monorepo — the official AWS Amplify SDK for Flutter and Dart. It contains all Amplify category plugins (Auth, Storage, API, Analytics, DataStore, Notifications), shared infrastructure (smithy codegen, aws_common, aws_signature_v4), and tooling (`aft` CLI).

The repo uses a monorepo structure managed by the `aft` (Amplify Flutter Tool) CLI, which handles versioning, dependency constraints, SDK generation, formatting, and analysis across all packages.

## Repo structure

```
packages/
├── aft/                          # Amplify Flutter Tool (repo management CLI)
├── amplify/                      # amplify_flutter (top-level Flutter plugin)
├── amplify_core/                 # Core types, interfaces, dependency manager
├── amplify_foundation/           # V3 foundation layer (NEW — see below)
│   ├── amplify_foundation_dart/        # Credentials, exceptions, logger
│   └── amplify_foundation_dart_bridge/ # V2↔V3 credentials adapter
├── kinesis/                      # Decoupled Kinesis client libraries (NEW)
│   ├── aws_kinesis_datastreams/        # Kinesis Data Streams client
│   └── aws_amazon_firehose/            # Amazon Data Firehose client
├── auth/                         # amplify_auth_cognito
├── storage/                      # amplify_storage_s3
├── api/                          # amplify_api (REST + GraphQL)
├── analytics/                    # amplify_analytics_pinpoint
├── smithy/                       # Smithy Dart codegen (smithy, smithy_aws)
├── aws_common/                   # AWS HTTP client, SigV4 types
├── aws_signature_v4/             # AWS Signature V4 signing
├── common/                       # amplify_db_common, amplify_db_common_dart
└── ...
infra/                            # CDK infrastructure for existing E2E tests
infra-gen2/                       # Amplify Gen 2 backends for new E2E tests
  └── backends/kinesis/main/      # Kinesis + Firehose test resources
.github/workflows/                # CI workflows
```

## Key tooling

- **`aft`** (`packages/aft/`): The repo's Swiss Army knife. Handles `aft generate sdk`, `aft format`, `aft analyze`, `aft pub upgrade`, version bumps, and component management. Configured in the root `pubspec.yaml` under the `aft:` key.
- **SDK generation**: Run `aft generate sdk` to regenerate Smithy SDK clients. Never hand-write SDK model/client files — they live in `lib/src/sdk/src/` and are generated from Smithy models.
- **Drift (SQLite)**: Both kinesis packages use Drift for local record caching. Schema lives in `lib/src/db/`, generated code in `.g.dart` files. Regenerate with `dart run build_runner build`.
- **`pubspec_overrides.yaml`**: Gitignored. Used locally and in CI to resolve unpublished path dependencies between packages. CI workflows generate these on the fly.

## Testing

### Unit tests
```bash
dart test                              # Run all unit tests
dart test test/record_client_test.dart # Run specific test file
```

### E2E tests
E2E tests are tagged with `@Tags(['e2e'])` and excluded from default `dart test` runs.
```bash
dart test test/e2e/ --tags=e2e
```
E2E tests require environment variables for AWS credentials and resource names. See `test/e2e/test_config.dart` in each package.

### CI (GitHub Actions)
- `.github/workflows/kinesis_e2e.yaml` — Runs E2E tests for both Kinesis and Firehose
- Uses GitHub OIDC to assume an AWS role, fetches credentials from Secrets Manager (`kinesis-e2e` secret)
- Generates `pubspec_overrides.yaml` before `dart pub get` since foundation/bridge packages aren't published yet
- Installs `libsqlite3-dev` on Ubuntu for native sqlite3

## Infrastructure provisioning

### Kinesis E2E resources (`infra-gen2/backends/kinesis/main/`)
Uses Amplify Gen 2's `defineBackend({})` as a CDK entry point (no Amplify categories needed). Provisions:
- Kinesis Data Stream: `kinesis-e2e-data-stream`
- S3 bucket (Firehose destination)
- Firehose delivery stream: `kinesis-e2e-delivery-stream`
- IAM user: `kinesis-e2e-test-user` with scoped permissions
- Secrets Manager secret: `kinesis-e2e` (JSON with ACCESS_KEY_ID, SECRET_ACCESS_KEY, STREAM_NAME, DELIVERY_STREAM_NAME)

Deploy with `npx ampx sandbox` from `infra-gen2/backends/kinesis/main/`.

### Existing infra (`infra/`)
CDK stacks for other Amplify E2E tests (auth, storage, etc.). The kinesis resources were intentionally moved OUT of here into `infra-gen2/` to follow the Amplify Gen 2 pattern.

## Branch strategy (kinesis work)

| Branch | Purpose | Base |
|--------|---------|------|
| `feat/amplify-foundation-dart-minimal` | Foundation + bridge packages | `main` |
| `feat/kinesis-data-streams-library` | KDS client + tests | foundation branch |
| `feat/kinesis-firehose-library` | Firehose client + tests | foundation branch |
| `feat/kinesis-e2e-infra` | CDK stack + CI workflow | foundation branch |

Each becomes a separate PR. The foundation branch is the base for all kinesis PRs.

---

## The V3 decoupled client paradigm

### Problem
Traditional Amplify Flutter plugins are tightly coupled to `amplify_core` and the `Amplify.configure()` lifecycle. You can't use them without the full Amplify framework. This limits adoption for developers who just want a good Kinesis or Firehose client without buying into the entire Amplify ecosystem.

### Solution: decoupled client libraries
The kinesis packages (`aws_kinesis_datastreams`, `aws_amazon_firehose`) are the first libraries built under a new paradigm:

1. **Standalone by default** — They depend on `amplify_foundation_dart` (a minimal package with credentials, exceptions, and logging) instead of `amplify_core`. A developer can use them with just an `AWSCredentialsProvider` and never touch Amplify.

2. **Amplify-compatible via bridge** — `amplify_foundation_dart_bridge` adapts V2 credential types (`amplify_core`/`aws_common`) to V3 types (`amplify_foundation_dart`). The barrel export re-exports the bridge, so Amplify users can pass their existing credentials seamlessly.

3. **SDK generated, not hand-written** — The underlying AWS SDK client is Smithy-generated (`aft generate sdk`). The library wraps it with a `WrappedClient` that injects user-agent headers and adapts credentials via `_CredentialsProviderAdapter`.

4. **Local-first with SQLite caching** — Records are persisted to a local Drift/SQLite database before being flushed to AWS. This provides offline support, automatic retry with exponential backoff, and batch optimization.

5. **Sealed exception hierarchy** — All exceptions extend `AmplifyException` from the foundation package but are library-specific sealed types (`AmplifyKinesisException`, `AmplifyFirehoseException`). The `Amplify*` prefix is a naming convention, not a coupling.

### Architecture of a kinesis client

```
AmplifyKinesisClient (public API)
  └── RecordClient (orchestration)
        ├── RecordStorage (Drift/SQLite persistence)
        │     └── KinesisRecordDatabase (generated schema)
        ├── KinesisSender (SDK communication)
        │     └── WrappedKinesisClient (SigV4, user-agent)
        │           └── KinesisClient (Smithy-generated)
        └── AutoFlushScheduler (timer-based flush)
```

### Key design decisions

- **`dataSize` includes partition key** (KDS only): Per AWS docs, the 10 MiB per-record limit applies to partition key + data blob combined. The `data_size` column in the DB stores this combined size so batch queries (`SUM(data_size)`) are accurate.

- **Per-stream error isolation**: When `_sendStreamBatch` throws (e.g., `ResourceNotFoundException`), the `on Exception` catch increments retry counts and returns 0. The flush loop continues to the next stream. Invalid records are eventually purged by `deleteRecordsExceedingRetries`.

- **Batch query uses SQL window functions**: `getRecordsBatch` uses `ROW_NUMBER()` and `SUM() OVER()` to efficiently limit by both record count and byte size in a single query, avoiding over-fetching.

- **`amplify_core` is a transitive dependency**: The Smithy-generated SDK code requires `amplify_core` types internally (e.g., `AWSCredentialsProvider`, `DependencyManager`). The bridge adapter converts foundation credentials to `amplify_core` credentials at the SDK boundary. This is an implementation detail — the public API only exposes foundation types.

### Service limits enforced at record time

| Service | Per-record limit | Batch limit | Max records/batch |
|---------|-----------------|-------------|-------------------|
| Kinesis Data Streams | 10 MiB (partition key + data) | 10 MiB | 500 |
| Amazon Data Firehose | 1,000 KB (before base64) | 4 MB | 500 |

Records exceeding per-record limits are rejected immediately with `KinesisRecordTooLargeException` / `FirehoseRecordTooLargeException`. They never enter the cache.

### Working across branches
- The kinesis client branches (`feat/kinesis-data-streams-library`, `feat/kinesis-firehose-library`) only contain their own package's source files. Always `git checkout` to the correct branch before reading or modifying a package — the other package's files won't exist.
- When changing a shared concept (e.g., how `dataSize` is computed), grep all test files for hardcoded expected values — assertions in `record_storage_test.dart`, `kinesis_data_streams_test.dart`, etc. will break, not just the file you're editing.

### User agent format
```
md/amplify-kinesis#0.1.0 lib/amplify-flutter#0.1.0
```
Injected via `_UserAgentHttpClient` in the SDK bridge.
