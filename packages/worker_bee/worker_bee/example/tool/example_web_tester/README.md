# Worker Bee Example – Automated Test Runner

Automated end-to-end test runner for the `worker_bee_example` Flutter web app.

## What it does

1. **Code Generation** – Runs `dart run build_runner clean && build` in the example app
2. **Dev Server** – Starts `flutter run -d web-server` on port 12333
3. **Headless Chrome** – Launches via Selenium WebDriver (Python)
4. **Tests**:
   - **Worker Startup** – Verifies the web worker starts without errors
   - **Message Processing** – Sends `"12345"`, verifies reversed response `"54321"`
5. **Report** – Prints pass/fail results, browser console errors, and JS stack traces
6. **Cleanup** – Closes browser and kills the dev server

## Prerequisites

- **Python** ≥ 3.9
- **Chrome** + **ChromeDriver** (matching versions)
- **Dart SDK** ≥ 3.9.0
- **Flutter SDK** with web support

## Usage

```bash
cd worker-bee/example/tool/example_web_tester
pip install -r requirements.txt
python3 example_web_tester.py
```

Exit code is `0` if all tests pass, `1` if any fail.
