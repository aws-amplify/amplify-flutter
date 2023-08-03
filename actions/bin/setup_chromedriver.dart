// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:actions/actions.dart';

const _binaryName = 'chromedriver';

/// Downloads ChromeDriver and installs it in the tool cache.
Future<void> main() async {
  final chromeVersion = await core.withGroup(
    'Getting Chrome version',
    () async {
      final chromeExecutable = switch (process.platform) {
        OS.macOS =>
          '/Applications/Google Chrome.app/Contents/MacOS/Google Chrome',
        OS.linux => 'google-chrome',
        final unsupported =>
          throw UnsupportedError('Unsupported OS: $unsupported'),
      };

      final versionResult = await exec.exec(chromeExecutable, ['--version']);
      if (versionResult.exitCode != 0) {
        throw Exception(versionResult.stderr);
      }

      final version = versionResult.stdout.trim().split(' ').last;
      core.info('Found local Chrome version: $version');

      return version;
    },
  );

  final cachedPath = await core.withGroup('Check cache', () async {
    try {
      final location = toolCache.find(_binaryName, chromeVersion).trim();
      return location.isNotEmpty ? location : null;
    } on Object {
      return null;
    }
  });

  if (cachedPath != null) {
    core.info('Found cached install: $cachedPath');
    return core.addPath(cachedPath);
  }

  core.info('ChromeDriver not found in cache.');
  final chromeDriverUrl = await core.withGroup(
    'Get ChromeDriver URL',
    () async {
      core.info('Getting URL for ChromeDriver $chromeVersion');

      // ChromeDriver publishes the latest versions by platform here.
      // See: https://chromedriver.chromium.org/downloads
      final allChromeDownloadsJson = await HttpClient().getJson(
        'https://googlechromelabs.github.io/chrome-for-testing/known-good-versions-with-downloads.json',
      );
      core.debug('Got JSON: $allChromeDownloadsJson');
      final allChromeDownloads = AllChromeDownloads.fromJson(
        allChromeDownloadsJson,
      );
      return allChromeDownloads.chromeDriverUrl(
        chromeVersion,
        ChromePlatform.fromOsArch(process.platform, process.arch),
      );
    },
  );

  final installPath = await core.withGroup('Download ChromeDriver', () async {
    core.info('Downloading ChromeDriver: $chromeDriverUrl');

    final downloadPath = await toolCache.downloadTool(chromeDriverUrl);
    core.info('Downloaded ChromeDriver to: $downloadPath');

    final extractPath = await toolCache.extractZip(downloadPath);
    core.info('Extracted ChromeDriver to: $extractPath');

    return toolCache.cacheDir(
      extractPath,
      _binaryName,
      chromeVersion,
    );
  });

  core
    ..info('Installed ChromeDriver and added to cache: $installPath')
    ..addPath(installPath);
}
