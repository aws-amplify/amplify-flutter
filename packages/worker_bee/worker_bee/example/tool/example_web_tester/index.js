#!/usr/bin/env node

/**
 * Worker Bee Example - Automated Test Runner
 *
 * Automates the full test cycle:
 * 1. Run dart build_runner code generation
 * 2. Start Flutter web dev server
 * 3. Launch headless Chrome via Selenium
 * 4. Run worker startup & message tests
 * 5. Report results (pass/fail, errors, stack traces)
 * 6. Clean up (close browser, kill dev server)
 */

import { spawn, execSync } from 'child_process';
import { Builder, By, until } from 'selenium-webdriver';
import { Options as ChromeOptions } from 'selenium-webdriver/chrome.js';

// ── Configuration ──────────────────────────────────────────────────────────────

const EXAMPLE_DIR = new URL('../..', import.meta.url).pathname;
const DEV_SERVER_PORT = 12333;
const DEV_SERVER_URL = `http://localhost:${DEV_SERVER_PORT}`;
const FLUTTER_READY_TIMEOUT_MS = 30_000; // Max wait for Flutter app JS interop to be ready
const WORKER_STARTUP_WAIT_MS = 3000;
const MESSAGE_RESPONSE_WAIT_MS = 2000;
const SERVER_READY_TIMEOUT_MS = 120_000; // Flutter compile can be slow
const SERVER_POLL_INTERVAL_MS = 2000;
const HEADLESS = true; // Set to false to see the browser during tests

// ── Helpers ────────────────────────────────────────────────────────────────────

const colors = {
  reset: '\x1b[0m',
  red: '\x1b[31m',
  green: '\x1b[32m',
  yellow: '\x1b[33m',
  cyan: '\x1b[36m',
  dim: '\x1b[2m',
  bold: '\x1b[1m',
};

function log(msg) {
  console.log(`${colors.cyan}[tester]${colors.reset} ${msg}`);
}

function logStep(step, msg) {
  console.log(`\n${colors.bold}${colors.cyan}━━━ Step ${step}: ${msg} ━━━${colors.reset}`);
}

function logPass(msg) {
  console.log(`  ${colors.green}✅ PASS${colors.reset} ${msg}`);
}

function logFail(msg) {
  console.log(`  ${colors.red}❌ FAIL${colors.reset} ${msg}`);
}

function logInfo(msg) {
  console.log(`  ${colors.dim}ℹ  ${msg}${colors.reset}`);
}

function sleep(ms) {
  return new Promise((resolve) => setTimeout(resolve, ms));
}

// ── Step 0: Clean Generated Files ──────────────────────────────────────────────

function cleanGeneratedFiles() {
  logStep(0, 'Cleaning previously generated files');

  const cleanScript = new URL('../clean_generated_files.sh', import.meta.url).pathname;
  try {
    execSync(`bash "${cleanScript}"`, {
      cwd: EXAMPLE_DIR,
      stdio: 'pipe',
      timeout: 30_000,
    });
    log('Generated files cleaned.');
    return { success: true };
  } catch (e) {
    return {
      success: false,
      error: `Clean script failed: ${e.message}`,
      stderr: e.stderr?.toString(),
    };
  }
}

// ── Step 1: Code Generation ────────────────────────────────────────────────────

function runCodeGeneration() {
  logStep(1, 'Running dart build_runner code generation');

  try {
    log('Cleaning previous build artifacts...');
    execSync('dart run build_runner clean', {
      cwd: EXAMPLE_DIR,
      stdio: 'pipe',
      timeout: 60_000,
    });

    log('Building with build_runner...');
    const output = execSync(
      'dart run build_runner build --delete-conflicting-outputs',
      {
        cwd: EXAMPLE_DIR,
        stdio: 'pipe',
        timeout: 300_000, // 5 min max
      }
    );
    log(`Code generation completed.`);
    logInfo(output.toString().split('\n').slice(-3).join('\n'));
    return { success: true };
  } catch (e) {
    return {
      success: false,
      error: `Code generation failed: ${e.message}`,
      stderr: e.stderr?.toString(),
    };
  }
}

// ── Step 2: Start Flutter Dev Server ───────────────────────────────────────────

function startDevServer() {
  logStep(2, 'Starting Flutter web dev server');

  return new Promise((resolve, reject) => {
    const proc = spawn(
      'flutter',
      ['run', '-d', 'web-server', `--web-port=${DEV_SERVER_PORT}`, '--web-hostname=localhost'],
      {
        cwd: EXAMPLE_DIR,
        stdio: ['pipe', 'pipe', 'pipe'],
        detached: true, // Create a new process group so we can kill the whole tree
      }
    );

    let stdout = '';
    let stderr = '';
    let resolved = false;

    const timeout = setTimeout(() => {
      if (!resolved) {
        resolved = true;
        proc.kill('SIGTERM');
        reject(
          new Error(
            `Dev server did not become ready within ${SERVER_READY_TIMEOUT_MS / 1000}s.\nstdout: ${stdout.slice(-2000)}\nstderr: ${stderr.slice(-1000)}`
          )
        );
      }
    }, SERVER_READY_TIMEOUT_MS);

    proc.stdout.on('data', (data) => {
      const chunk = data.toString();
      stdout += chunk;
      // Flutter prints "Flutter run key commands." when the server is ready
      if (!resolved && stdout.includes('Flutter run key commands.')) {
        resolved = true;
        clearTimeout(timeout);
        log(`Dev server ready at ${DEV_SERVER_URL} (PID: ${proc.pid})`);
        resolve({ proc, pid: proc.pid });
      }
    });

    proc.stderr.on('data', (data) => {
      stderr += data.toString();
    });

    proc.on('error', (err) => {
      if (!resolved) {
        resolved = true;
        clearTimeout(timeout);
        reject(new Error(`Failed to start dev server: ${err.message}`));
      }
    });

    proc.on('exit', (code) => {
      if (!resolved) {
        resolved = true;
        clearTimeout(timeout);
        reject(
          new Error(
            `Dev server exited unexpectedly with code ${code}.\nstdout: ${stdout.slice(-2000)}\nstderr: ${stderr.slice(-1000)}`
          )
        );
      }
    });
  });
}

// ── Step 3: Start Headless Chrome ──────────────────────────────────────────────

async function startBrowser() {
  logStep(3, 'Launching headless Chrome via Selenium');

  const chromeOptions = new ChromeOptions();
  if (HEADLESS) {
    chromeOptions.addArguments('--headless=new');
  }
  chromeOptions.addArguments('--window-size=1280,800');
  chromeOptions.addArguments('--no-sandbox');
  chromeOptions.addArguments('--disable-dev-shm-usage');

  const driver = await new Builder()
    .forBrowser('chrome')
    .setChromeOptions(chromeOptions)
    .build();

  log('Headless Chrome started.');
  return driver;
}

// ── Step 4: Navigate & Inject Error Tracking ───────────────────────────────────

async function navigateAndSetup(driver) {
  logStep(4, `Navigating to ${DEV_SERVER_URL}`);

  // Try CDP early error tracking
  let cdpOk = false;
  try {
    if (typeof driver.sendDevToolsCommand === 'function') {
      await driver.sendDevToolsCommand('Page.enable', {});
      await driver.sendDevToolsCommand('Page.addScriptToEvaluateOnNewDocument', {
        source: errorTrackingScript(),
      });
      cdpOk = true;
    }
  } catch {
    // CDP unavailable – fall back to post-load injection
  }

  await driver.get(DEV_SERVER_URL);

  // Post-load fallback injection
  await driver.executeScript(errorTrackingScriptWrapped());

  log(cdpOk ? 'Navigated (CDP early error tracking enabled)' : 'Navigated (post-load error tracking)');
}

function errorTrackingScript() {
  return `
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
    const originalError = console.error;
    console.error = function(...args) {
      window.__mcpErrorLog.push({
        type: 'console.error',
        message: args.map(a => String(a)).join(' '),
        stack: new Error().stack,
        timestamp: Date.now()
      });
      originalError.apply(console, args);
    };
  `;
}

function errorTrackingScriptWrapped() {
  return `
    if (!window.__mcpErrorLog) {
      ${errorTrackingScript()}
    }
  `;
}

// ── Step 5: Run Tests ──────────────────────────────────────────────────────────

async function runTests(driver) {
  logStep(5, 'Running tests');

  const results = { passed: 0, failed: 0, tests: [] };

  // ── Test 1: Worker Startup ─────────────────────────────────────────────────
  {
    const testName = 'Worker Startup';
    log(`Running test: ${testName}`);

    let workerStarted = false;
    let lastMessages = '';
    let lastLogs = '';
    let lastError = null;

    try {
      // Set a generous script timeout for waiting on Flutter
      await driver.manage().setTimeouts({ script: FLUTTER_READY_TIMEOUT_MS + WORKER_STARTUP_WAIT_MS + 10000 });

      // Wait for the Flutter app JS interop to be ready, then start the worker
      const logsResult = await driver.executeAsyncScript(`
        const callback = arguments[arguments.length - 1];
        try {
          // Poll until Flutter has registered the JS interop functions
          const deadline = Date.now() + ${FLUTTER_READY_TIMEOUT_MS};
          while (typeof window.startWorker !== 'function') {
            if (Date.now() > deadline) {
              callback({ success: false, error: 'Timeout waiting for Flutter JS interop (startWorker not defined after ${FLUTTER_READY_TIMEOUT_MS / 1000}s)' });
              return;
            }
            await new Promise(r => setTimeout(r, 500));
          }
          // Wait a bit for the Flutter app to fully settle before starting worker
          await new Promise(r => setTimeout(r, 3000));
          // Start the worker
          window.startWorker();
          // Give worker time to start
          await new Promise(r => setTimeout(r, ${WORKER_STARTUP_WAIT_MS}));
          const logs = window.getLogs();
          callback({ success: true, logs: logs });
        } catch (e) {
          callback({ success: false, error: e.toString(), stack: e.stack || '' });
        }
      `);

      if (!logsResult.success) {
        lastError = logsResult.error + (logsResult.stack ? '\n' + logsResult.stack : '');
      } else {
        lastLogs = logsResult.logs || '';
        const messages = await driver.executeScript('return window.getMessages()');
        lastMessages = messages || '';

        const hasStartedMsg =
          lastMessages.includes('Worker started successfully') || lastMessages.includes('✅ Worker started');

        if (hasStartedMsg) {
          workerStarted = true;
        }
      }
    } catch (e) {
      lastError = e.message;
    }

    if (workerStarted) {
      const logLines = lastLogs.split('\n').filter((l) => l.trim());
      const errorLines = logLines.filter(
        (l) => l.includes('❌') || l.toLowerCase().includes('error') || l.toLowerCase().includes('fail')
      );

      if (errorLines.length > 0) {
        logFail(`${testName} – worker started but errors found in logs`);
        errorLines.forEach((l) => logInfo(`  ${l}`));
        results.failed++;
        results.tests.push({ name: testName, status: 'FAIL', errors: errorLines });
      } else {
        logPass(testName);
        logInfo(`Logs (${logLines.length} lines): ${logLines.slice(0, 5).join(' | ')}`);
        results.passed++;
        results.tests.push({ name: testName, status: 'PASS' });
      }
    } else {
      logFail(`${testName} – worker did not start`);
      logInfo(`Messages: ${lastMessages.slice(0, 500)}`);
      logInfo(`Logs: ${lastLogs.slice(0, 500)}`);
      if (lastError) logInfo(`Error: ${lastError}`);
      results.failed++;
      results.tests.push({
        name: testName,
        status: 'FAIL',
        info: 'Worker did not start',
        error: lastError,
        messages: lastMessages.slice(0, 500),
        logs: lastLogs.slice(0, 500),
      });
    }
  }

  // ── Test 2: Send Message & Verify Response ─────────────────────────────────
  {
    const testName = 'Message Processing (echo & reverse)';
    log(`Running test: ${testName}`);

    try {
      await driver.manage().setTimeouts({ script: MESSAGE_RESPONSE_WAIT_MS + 10000 });

      const msgResult = await driver.executeAsyncScript(`
        const callback = arguments[arguments.length - 1];
        try {
          window.sendMessage("12345");
          await new Promise(r => setTimeout(r, ${MESSAGE_RESPONSE_WAIT_MS}));
          const messages = window.getMessages();
          callback({ success: true, messages: messages });
        } catch (e) {
          callback({ success: false, error: e.toString(), stack: e.stack || '' });
        }
      `);

      if (!msgResult.success) {
        throw new Error(msgResult.error + (msgResult.stack ? '\n' + msgResult.stack : ''));
      }

      const messages = msgResult.messages || '';

      // Expected: Reversed: "54321"
      const hasReversed = messages.includes('54321');
      const hasEcho = messages.includes('12345');

      if (hasReversed) {
        logPass(`${testName} – received reversed "54321"`);
        results.passed++;
        results.tests.push({ name: testName, status: 'PASS' });
      } else {
        logFail(`${testName} – did not find reversed message "54321" in response`);
        logInfo(`Messages: ${messages.slice(0, 800)}`);
        results.failed++;
        results.tests.push({
          name: testName,
          status: 'FAIL',
          info: 'Reversed message "54321" not found',
          messages: messages.slice(0, 800),
        });
      }
    } catch (e) {
      logFail(`${testName} – exception: ${e.message}`);
      results.failed++;
      results.tests.push({
        name: testName,
        status: 'FAIL',
        error: e.message,
        stack: e.stack,
      });
    }
  }

  // ── Collect browser console errors ─────────────────────────────────────────
  {
    log('Collecting browser console logs & tracked errors...');

    try {
      const browserLogs = await driver.manage().logs().get('browser');
      const severeLogs = browserLogs.filter((l) => l.level.name === 'SEVERE');

      if (severeLogs.length > 0) {
        results.browserErrors = severeLogs.map((l) => ({
          timestamp: new Date(l.timestamp).toISOString(),
          message: l.message,
        }));
      }

      const trackedErrors = await driver.executeScript('return window.__mcpErrorLog || []');
      if (trackedErrors.length > 0) {
        results.trackedErrors = trackedErrors;
      }
    } catch (e) {
      logInfo(`Could not collect browser logs: ${e.message}`);
    }
  }

  return results;
}

// ── Step 6: Print Report ───────────────────────────────────────────────────────

function printReport(results) {
  logStep(6, 'Test Report');

  console.log(`\n  Tests passed: ${colors.green}${results.passed}${colors.reset}`);
  console.log(`  Tests failed: ${results.failed > 0 ? colors.red : colors.green}${results.failed}${colors.reset}`);
  console.log();

  // Detail for each test
  for (const test of results.tests) {
    const icon = test.status === 'PASS' ? `${colors.green}✅` : `${colors.red}❌`;
    console.log(`  ${icon} ${test.name}${colors.reset}`);

    if (test.error) {
      console.log(`     ${colors.red}Error: ${test.error}${colors.reset}`);
    }
    if (test.stack) {
      console.log(`     ${colors.dim}Stack trace:${colors.reset}`);
      test.stack
        .split('\n')
        .slice(0, 10)
        .forEach((l) => console.log(`       ${colors.dim}${l}${colors.reset}`));
    }
    if (test.errors) {
      test.errors.forEach((e) => console.log(`     ${colors.yellow}${e}${colors.reset}`));
    }
    if (test.info) {
      console.log(`     ${colors.dim}${test.info}${colors.reset}`);
    }
    if (test.messages) {
      console.log(`     ${colors.dim}Messages: ${test.messages.slice(0, 300)}${colors.reset}`);
    }
    if (test.logs) {
      console.log(`     ${colors.dim}Logs: ${test.logs.slice(0, 300)}${colors.reset}`);
    }
  }

  // Browser errors
  if (results.browserErrors?.length) {
    console.log(`\n  ${colors.red}${colors.bold}Browser Console Errors (SEVERE):${colors.reset}`);
    for (const err of results.browserErrors) {
      console.log(`    ${colors.dim}[${err.timestamp}]${colors.reset} ${colors.red}${err.message}${colors.reset}`);
    }
  }

  // Tracked JS errors with stack traces
  if (results.trackedErrors?.length) {
    console.log(`\n  ${colors.red}${colors.bold}Tracked JavaScript Errors:${colors.reset}`);
    for (const err of results.trackedErrors) {
      console.log(`    ${colors.red}[${err.type}] ${err.message}${colors.reset}`);
      if (err.stack) {
        err.stack
          .split('\n')
          .slice(0, 8)
          .forEach((l) => console.log(`      ${colors.dim}${l}${colors.reset}`));
      }
    }
  }

  console.log();
}

// ── Main ───────────────────────────────────────────────────────────────────────

async function main() {
  console.log(`\n${colors.bold}${colors.cyan}╔═══════════════════════════════════════════════╗${colors.reset}`);
  console.log(`${colors.bold}${colors.cyan}║   Worker Bee Example – Automated Test Runner  ║${colors.reset}`);
  console.log(`${colors.bold}${colors.cyan}╚═══════════════════════════════════════════════╝${colors.reset}\n`);

  let devServerProc = null;
  let driver = null;

  try {
    // Step 0: Clean generated files
    const cleanResult = cleanGeneratedFiles();
    if (!cleanResult.success) {
      logFail(`Clean generated files failed.`);
      if (cleanResult.error) console.error(cleanResult.error);
      if (cleanResult.stderr) console.error(cleanResult.stderr);
      process.exit(1);
    }
    logPass('Generated files cleaned.');

    // Step 1: Code generation
    const genResult = runCodeGeneration();
    if (!genResult.success) {
      logFail(`Code generation failed.`);
      if (genResult.error) console.error(genResult.error);
      if (genResult.stderr) console.error(genResult.stderr);
      process.exit(1);
    }
    logPass('Code generation succeeded.');

    // Step 2: Start dev server
    const server = await startDevServer();
    devServerProc = server.proc;
    logPass(`Dev server running (PID: ${server.pid}).`);

    // Step 3: Start browser
    driver = await startBrowser();

    // Step 4: Navigate
    await navigateAndSetup(driver);

    // Step 5: Run tests
    const results = await runTests(driver);

    // Step 6: Report
    printReport(results);

    // Exit code based on results
    if (results.failed > 0) {
      process.exitCode = 1;
    }
  } catch (e) {
    console.error(`\n${colors.red}${colors.bold}Fatal error: ${e.message}${colors.reset}`);
    if (e.stack) {
      console.error(`${colors.dim}${e.stack}${colors.reset}`);
    }
    process.exitCode = 1;
  } finally {
    // ── Cleanup ──────────────────────────────────────────────────────────────
    logStep(7, 'Cleanup');

    // Close browser
    if (driver) {
      try {
        await driver.quit();
        log('Browser session closed.');
      } catch (e) {
        log(`Warning: error closing browser: ${e.message}`);
      }
    }

    // Kill dev server
    if (devServerProc) {
      try {
        // Kill the whole process group
        process.kill(-devServerProc.pid, 'SIGTERM');
      } catch {
        try {
          devServerProc.kill('SIGTERM');
        } catch {
          // Already dead
        }
      }

      // Also try to kill any flutter process on the port
      try {
        execSync(`lsof -ti:${DEV_SERVER_PORT} | xargs kill -9 2>/dev/null`, { stdio: 'pipe' });
      } catch {
        // Nothing listening or already killed
      }

      log(`Dev server (PID: ${devServerProc.pid}) terminated.`);
    }

    log('Done.');
  }
}

main();
