#!/usr/bin/env python3
"""
Worker Bee Example - Automated Test Runner

Automates the full test cycle:
1. Run dart build_runner code generation
2. Start Flutter web dev server
3. Launch headless Chrome via Selenium
4. Run worker startup & message tests
5. Report results (pass/fail, errors, stack traces)
6. Clean up (close browser, kill dev server)
"""

import os
import signal
import subprocess
import sys
import time
import traceback
from pathlib import Path

from selenium import webdriver
from selenium.webdriver.chrome.options import Options as ChromeOptions
from selenium.webdriver.chrome.service import Service as ChromeService

# ── Configuration ────────────────────────────────────────────────────────────────

SCRIPT_DIR = Path(__file__).resolve().parent
EXAMPLE_DIR = SCRIPT_DIR.parent.parent  # tool/example_web_tester -> tool -> example
DEV_SERVER_PORT = 12333
DEV_SERVER_URL = f"http://localhost:{DEV_SERVER_PORT}"
FLUTTER_READY_TIMEOUT_S = 30  # Max wait for Flutter app JS interop to be ready
WORKER_STARTUP_WAIT_S = 3
MESSAGE_RESPONSE_WAIT_S = 2
SERVER_READY_TIMEOUT_S = 120  # Flutter compile can be slow
HEADLESS = True

# ── Colors ───────────────────────────────────────────────────────────────────────

RESET = "\033[0m"
RED = "\033[31m"
GREEN = "\033[32m"
YELLOW = "\033[33m"
CYAN = "\033[36m"
DIM = "\033[2m"
BOLD = "\033[1m"


def log(msg):
    print(f"{CYAN}[tester]{RESET} {msg}")


def log_step(step, msg):
    print(f"\n{BOLD}{CYAN}━━━ Step {step}: {msg} ━━━{RESET}")


def log_pass(msg):
    print(f"  {GREEN}✅ PASS{RESET} {msg}")


def log_fail(msg):
    print(f"  {RED}❌ FAIL{RESET} {msg}")


def log_info(msg):
    print(f"  {DIM}ℹ  {msg}{RESET}")


# ── Step 0: Clean Generated Files ────────────────────────────────────────────────

def clean_generated_files():
    log_step(0, "Cleaning previously generated files")
    clean_script = SCRIPT_DIR.parent / "clean_generated_files.sh"
    try:
        subprocess.run(
            ["bash", str(clean_script)],
            cwd=str(EXAMPLE_DIR),
            capture_output=True,
            timeout=30,
            check=True,
        )
        log("Generated files cleaned.")
        return True
    except Exception as e:
        log_fail(f"Clean generated files failed: {e}")
        return False


# ── Step 1: Code Generation ──────────────────────────────────────────────────────

def run_code_generation():
    log_step(1, "Running dart build_runner code generation")

    try:
        log("Cleaning previous build artifacts...")
        subprocess.run(
            ["dart", "run", "build_runner", "clean"],
            cwd=str(EXAMPLE_DIR),
            capture_output=True,
            timeout=60,
            check=True,
        )

        log("Building with build_runner...")
        result = subprocess.run(
            ["dart", "run", "build_runner", "build", "--delete-conflicting-outputs"],
            cwd=str(EXAMPLE_DIR),
            capture_output=True,
            timeout=300,
            check=True,
        )
        log("Code generation completed.")
        output_lines = result.stdout.decode().strip().split("\n")
        log_info("\n".join(output_lines[-3:]))
        return True
    except subprocess.CalledProcessError as e:
        log_fail(f"Code generation failed: {e}")
        if e.stderr:
            log_info(e.stderr.decode()[:1000])
        return False
    except Exception as e:
        log_fail(f"Code generation failed: {e}")
        return False


# ── Step 2: Start Flutter Dev Server ─────────────────────────────────────────────

def start_dev_server():
    log_step(2, "Starting Flutter web dev server")

    proc = subprocess.Popen(
        [
            "flutter", "run", "-d", "web-server",
            f"--web-port={DEV_SERVER_PORT}",
            "--web-hostname=localhost",
        ],
        cwd=str(EXAMPLE_DIR),
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        stdin=subprocess.PIPE,
        preexec_fn=os.setsid,  # Create new process group for cleanup
    )

    stdout_data = ""
    deadline = time.time() + SERVER_READY_TIMEOUT_S

    while time.time() < deadline:
        # Read available stdout without blocking indefinitely
        import select
        readable, _, _ = select.select([proc.stdout], [], [], 2.0)
        if readable:
            chunk = proc.stdout.read1(4096).decode("utf-8", errors="replace")
            stdout_data += chunk
            if "Flutter run key commands." in stdout_data:
                log(f"Dev server ready at {DEV_SERVER_URL} (PID: {proc.pid})")
                return proc

        # Check if process exited
        if proc.poll() is not None:
            remaining = proc.stdout.read().decode("utf-8", errors="replace")
            stderr = proc.stderr.read().decode("utf-8", errors="replace")
            raise RuntimeError(
                f"Dev server exited unexpectedly with code {proc.returncode}.\n"
                f"stdout: {(stdout_data + remaining)[-2000:]}\n"
                f"stderr: {stderr[-1000:]}"
            )

    proc.kill()
    raise TimeoutError(
        f"Dev server did not become ready within {SERVER_READY_TIMEOUT_S}s.\n"
        f"stdout: {stdout_data[-2000:]}"
    )


# ── Step 3: Start Headless Chrome ────────────────────────────────────────────────

def start_browser():
    log_step(3, "Launching headless Chrome via Selenium")

    chrome_options = ChromeOptions()
    if HEADLESS:
        chrome_options.add_argument("--headless=new")
    chrome_options.add_argument("--window-size=1280,800")
    chrome_options.add_argument("--no-sandbox")
    chrome_options.add_argument("--disable-dev-shm-usage")

    driver = webdriver.Chrome(options=chrome_options)
    log("Headless Chrome started.")
    return driver


# ── Step 4: Navigate & Inject Error Tracking ─────────────────────────────────────

ERROR_TRACKING_SCRIPT = """
window.__mcpErrorLog = [];
window.addEventListener('error', function(event) {
    window.__mcpErrorLog.push({
        type: 'error',
        message: event.message,
        source: event.filename,
        lineno: event.lineno,
        colno: event.colno,
        stack: event.error ? event.error.stack : null,
        timestamp: Date.now()
    });
}, true);
window.addEventListener('unhandledrejection', function(event) {
    window.__mcpErrorLog.push({
        type: 'unhandledRejection',
        message: event.reason ? event.reason.toString() : 'Unhandled rejection',
        stack: event.reason && event.reason.stack ? event.reason.stack : null,
        timestamp: Date.now()
    });
});
var originalError = console.error;
console.error = function() {
    var args = Array.prototype.slice.call(arguments);
    window.__mcpErrorLog.push({
        type: 'console.error',
        message: args.map(function(a) { return String(a); }).join(' '),
        stack: new Error().stack,
        timestamp: Date.now()
    });
    originalError.apply(console, args);
};
"""


def navigate_and_setup(driver):
    log_step(4, f"Navigating to {DEV_SERVER_URL}")

    # Try CDP early error tracking
    cdp_ok = False
    try:
        driver.execute_cdp_cmd("Page.enable", {})
        driver.execute_cdp_cmd(
            "Page.addScriptToEvaluateOnNewDocument",
            {"source": ERROR_TRACKING_SCRIPT},
        )
        cdp_ok = True
    except Exception:
        pass

    driver.get(DEV_SERVER_URL)

    # Post-load fallback injection
    driver.execute_script(f"if (!window.__mcpErrorLog) {{ {ERROR_TRACKING_SCRIPT} }}")

    if cdp_ok:
        log("Navigated (CDP early error tracking enabled)")
    else:
        log("Navigated (post-load error tracking)")


# ── Step 5: Run Tests ────────────────────────────────────────────────────────────

def run_tests(driver):
    log_step(5, "Running tests")

    results = {"passed": 0, "failed": 0, "tests": [], "trackedErrors": []}

    # ── Test 1: Worker Startup ───────────────────────────────────────────────
    test_name = "Worker Startup"
    log(f"Running test: {test_name}")

    worker_started = False
    last_messages = ""
    last_logs = ""
    last_error = None

    try:
        driver.set_script_timeout(FLUTTER_READY_TIMEOUT_S + WORKER_STARTUP_WAIT_S + 10)

        logs_result = driver.execute_async_script(f"""
            var callback = arguments[arguments.length - 1];
            (async function() {{
                try {{
                    var deadline = Date.now() + {FLUTTER_READY_TIMEOUT_S * 1000};
                    while (typeof window.startWorker !== 'function') {{
                        if (Date.now() > deadline) {{
                            callback({{ success: false, error: 'Timeout waiting for Flutter JS interop (startWorker not defined after {FLUTTER_READY_TIMEOUT_S}s)' }});
                            return;
                        }}
                        await new Promise(function(r) {{ setTimeout(r, 500); }});
                    }}
                    await new Promise(function(r) {{ setTimeout(r, 3000); }});
                    window.startWorker();
                    await new Promise(function(r) {{ setTimeout(r, {WORKER_STARTUP_WAIT_S * 1000}); }});
                    var logs = window.getLogs();
                    callback({{ success: true, logs: logs }});
                }} catch (e) {{
                    callback({{ success: false, error: e.toString(), stack: e.stack || '' }});
                }}
            }})();
        """)

        if not logs_result.get("success"):
            last_error = logs_result.get("error", "") + "\n" + logs_result.get("stack", "")
        else:
            last_logs = logs_result.get("logs", "")
            last_messages = driver.execute_script("return window.getMessages()") or ""

            if "Worker started successfully" in last_messages or "✅ Worker started" in last_messages:
                worker_started = True
    except Exception as e:
        last_error = str(e)

    if worker_started:
        log_lines = [l for l in last_logs.split("\n") if l.strip()]
        error_lines = [
            l for l in log_lines
            if "❌" in l or "error" in l.lower() or "fail" in l.lower()
        ]
        if error_lines:
            log_fail(f"{test_name} – worker started but errors found in logs")
            for l in error_lines:
                log_info(f"  {l}")
            results["failed"] += 1
            results["tests"].append({"name": test_name, "status": "FAIL", "errors": error_lines})
        else:
            log_pass(test_name)
            log_info(f"Logs ({len(log_lines)} lines): {' | '.join(log_lines[:5])}")
            results["passed"] += 1
            results["tests"].append({"name": test_name, "status": "PASS"})
    else:
        log_fail(f"{test_name} – worker did not start")
        log_info(f"Messages: {last_messages[:500]}")
        log_info(f"Logs: {last_logs[:500]}")
        if last_error:
            log_info(f"Error: {last_error}")
        results["failed"] += 1
        results["tests"].append({
            "name": test_name, "status": "FAIL", "info": "Worker did not start",
            "error": last_error, "messages": last_messages[:500], "logs": last_logs[:500],
        })

    # ── Test 2: Send Message & Verify Response ───────────────────────────────
    test_name = "Message Processing (echo & reverse)"
    log(f"Running test: {test_name}")

    try:
        driver.set_script_timeout(MESSAGE_RESPONSE_WAIT_S + 10)

        msg_result = driver.execute_async_script(f"""
            var callback = arguments[arguments.length - 1];
            (async function() {{
                try {{
                    window.sendMessage("12345");
                    await new Promise(function(r) {{ setTimeout(r, {MESSAGE_RESPONSE_WAIT_S * 1000}); }});
                    var messages = window.getMessages();
                    callback({{ success: true, messages: messages }});
                }} catch (e) {{
                    callback({{ success: false, error: e.toString(), stack: e.stack || '' }});
                }}
            }})();
        """)

        if not msg_result.get("success"):
            raise RuntimeError(msg_result.get("error", "") + "\n" + msg_result.get("stack", ""))

        messages = msg_result.get("messages", "")
        has_reversed = "54321" in messages

        if has_reversed:
            log_pass(f'{test_name} – received reversed "54321"')
            results["passed"] += 1
            results["tests"].append({"name": test_name, "status": "PASS"})
        else:
            log_fail(f'{test_name} – did not find reversed message "54321" in response')
            log_info(f"Messages: {messages[:800]}")
            results["failed"] += 1
            results["tests"].append({
                "name": test_name, "status": "FAIL",
                "info": 'Reversed message "54321" not found',
                "messages": messages[:800],
            })
    except Exception as e:
        log_fail(f"{test_name} – exception: {e}")
        results["failed"] += 1
        results["tests"].append({
            "name": test_name, "status": "FAIL",
            "error": str(e), "stack": traceback.format_exc(),
        })

    # ── Collect browser console errors ───────────────────────────────────────
    log("Collecting browser console logs & tracked errors...")
    try:
        browser_logs = driver.get_log("browser")
        severe_logs = [l for l in browser_logs if l.get("level") == "SEVERE"]
        if severe_logs:
            results["browserErrors"] = severe_logs
    except Exception:
        pass

    try:
        tracked_errors = driver.execute_script("return window.__mcpErrorLog || []")
        if tracked_errors:
            results["trackedErrors"] = tracked_errors
    except Exception as e:
        log_info(f"Could not collect tracked errors: {e}")

    return results


# ── Step 6: Print Report ─────────────────────────────────────────────────────────

def print_report(results):
    log_step(6, "Test Report")

    print(f"\n  Tests passed: {GREEN}{results['passed']}{RESET}")
    failed_color = RED if results["failed"] > 0 else GREEN
    print(f"  Tests failed: {failed_color}{results['failed']}{RESET}")
    print()

    for test in results["tests"]:
        icon = f"{GREEN}✅" if test["status"] == "PASS" else f"{RED}❌"
        print(f"  {icon} {test['name']}{RESET}")

        if test.get("error"):
            print(f"     {RED}Error: {test['error']}{RESET}")
        if test.get("stack"):
            print(f"     {DIM}Stack trace:{RESET}")
            for line in str(test["stack"]).split("\n")[:10]:
                print(f"       {DIM}{line}{RESET}")
        if test.get("errors"):
            for e in test["errors"]:
                print(f"     {YELLOW}{e}{RESET}")
        if test.get("info"):
            print(f"     {DIM}{test['info']}{RESET}")
        if test.get("messages"):
            print(f"     {DIM}Messages: {test['messages'][:300]}{RESET}")
        if test.get("logs"):
            print(f"     {DIM}Logs: {test['logs'][:300]}{RESET}")

    if results.get("browserErrors"):
        print(f"\n  {RED}{BOLD}Browser Console Errors (SEVERE):{RESET}")
        for err in results["browserErrors"]:
            print(f"    {DIM}[{err.get('timestamp', '')}]{RESET} {RED}{err.get('message', '')}{RESET}")

    if results.get("trackedErrors"):
        print(f"\n  {RED}{BOLD}Tracked JavaScript Errors:{RESET}")
        for err in results["trackedErrors"]:
            print(f"    {RED}[{err.get('type', '')}] {err.get('message', '')}{RESET}")
            if err.get("stack"):
                for line in str(err["stack"]).split("\n")[:8]:
                    print(f"      {DIM}{line}{RESET}")

    print()


# ── Main ─────────────────────────────────────────────────────────────────────────

def kill_dev_server(proc):
    """Kill the dev server process group."""
    if proc is None:
        return
    try:
        os.killpg(os.getpgid(proc.pid), signal.SIGTERM)
    except Exception:
        try:
            proc.kill()
        except Exception:
            pass

    # Also kill any process on the port
    try:
        subprocess.run(
            f"lsof -ti:{DEV_SERVER_PORT} | xargs kill -9 2>/dev/null",
            shell=True, capture_output=True,
        )
    except Exception:
        pass


def main():
    print(f"\n{BOLD}{CYAN}╔═══════════════════════════════════════════════╗{RESET}")
    print(f"{BOLD}{CYAN}║   Worker Bee Example – Automated Test Runner  ║{RESET}")
    print(f"{BOLD}{CYAN}╚═══════════════════════════════════════════════╝{RESET}\n")

    dev_server_proc = None
    driver = None
    exit_code = 0

    try:
        # Step 0: Clean generated files
        if not clean_generated_files():
            sys.exit(1)
        log_pass("Generated files cleaned.")

        # Step 1: Code generation
        if not run_code_generation():
            sys.exit(1)
        log_pass("Code generation succeeded.")

        # Step 2: Start dev server
        dev_server_proc = start_dev_server()
        log_pass(f"Dev server running (PID: {dev_server_proc.pid}).")

        # Step 3: Start browser
        driver = start_browser()

        # Step 4: Navigate
        navigate_and_setup(driver)

        # Step 5: Run tests
        results = run_tests(driver)

        # Step 6: Report
        print_report(results)

        if results["failed"] > 0:
            exit_code = 1

    except Exception as e:
        print(f"\n{RED}{BOLD}Fatal error: {e}{RESET}")
        traceback.print_exc()
        exit_code = 1

    finally:
        # ── Cleanup ──────────────────────────────────────────────────────────
        log_step(7, "Cleanup")

        if driver:
            try:
                driver.quit()
                log("Browser session closed.")
            except Exception as e:
                log(f"Warning: error closing browser: {e}")

        if dev_server_proc:
            kill_dev_server(dev_server_proc)
            log(f"Dev server (PID: {dev_server_proc.pid}) terminated.")

        log("Done.")

    sys.exit(exit_code)


if __name__ == "__main__":
    main()
