// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import * as core from '@actions/core';
import * as exec from '@actions/exec';
import * as httpClient from '@actions/http-client';
import * as toolCache from '@actions/tool-cache';
import * as childProcess from 'node:child_process';
import * as fs from 'node:fs';
import { createRequire } from 'node:module';
import * as os from 'node:os';
import { dirname } from 'node:path';
import process from 'node:process';
import { fileURLToPath } from 'node:url';

const require = createRequire(import.meta.url);

// Setup properties for JS interop in Dart.

globalThis.self = globalThis;
globalThis.core = core;
globalThis.exec = exec;
globalThis.HttpClient = httpClient.HttpClient;
globalThis.toolCache = toolCache;
globalThis.fs = fs;
globalThis.os = os;
globalThis.process = process;
globalThis.location = { href: `file://${process.cwd()}/` };
globalThis.__filename = fileURLToPath(import.meta.url);
globalThis.__dirname = dirname(globalThis.__filename);
globalThis.require = require;
globalThis.childProcess = childProcess;

globalThis.dartMainRunner = async function (main, args) {
    const dir = process.argv[2];
    await main(dir);
}

async function scriptMain() {
    // We have to load `main.js` here so that the `dartMainRunner` hook is
    // registered before the IIFE in `dart_main.js` runs.
    require('../dist/main.cjs');
}

if (require.main === require.module) {
    await scriptMain();
}
