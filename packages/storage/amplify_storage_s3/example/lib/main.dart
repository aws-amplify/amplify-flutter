// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_storage_s3_example/amplifyconfiguration.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:path_provider/path_provider.dart';

final AmplifyLogger _logger = AmplifyLogger('MyStorageApp');

void main() {
  AmplifyLogger().logLevel = LogLevel.debug;
  runApp(
    const MyApp(
      title: 'Amplify Storage Example',
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.title});

  final String title;

  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext _, GoRouterState __) => const HomeScreen(),
      ),
    ],
  );

  @override
  void initState() {
    super.initState();
    configureAmplify();
  }

  Future<void> configureAmplify() async {
    final auth = AmplifyAuthCognito(
      // FIXME: In your app, make sure to remove this line and set up
      /// Keychain Sharing in Xcode as described in the docs:
      /// https://docs.amplify.aws/lib/project-setup/platform-setup/q/platform/flutter/#enable-keychain
      secureStorageFactory: AmplifySecureStorage.factoryFrom(
        macOSOptions:
            // ignore: invalid_use_of_visible_for_testing_member
            MacOSSecureStorageOptions(useDataProtection: false),
      ),
    );
    final storage = AmplifyStorageS3();

    try {
      await Amplify.addPlugins([auth, storage]);
      await Amplify.configure(amplifyconfig);
      _logger.debug('Successfully configured Amplify');
    } on Exception catch (error) {
      _logger.error('Something went wrong configuring Amplify: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      preferPrivateSession: true,
      child: MaterialApp.router(
        title: 'Flutter Demo',
        builder: Authenticator.builder(),
        theme: ThemeData.light(useMaterial3: true),
        darkTheme: ThemeData.dark(useMaterial3: true),
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<StorageItem> list = [];
  var imageUrl = '';

  @override
  void initState() {
    super.initState();
    _checkAuthStatus();
    _listAllPublicFiles();
  }

  // sign out of the app
  Future<void> _signOut() async {
    try {
      await Amplify.Auth.signOut();
      _logger.debug('Signed out');
    } on AuthException catch (e) {
      _logger.error('Could not sign out - ${e.message}');
    }
  }

  // check if the user is signed in
  Future<void> _checkAuthStatus() async {
    try {
      final session = await Amplify.Auth.fetchAuthSession();
      _logger.debug('Signed in: ${session.isSignedIn}');
    } on AuthException catch (e) {
      _logger.error('Could not check auth status - ${e.message}');
    }
  }

  // upload a file to the S3 bucket
  Future<void> _uploadFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      withReadStream: true,
      withData: false,
    );

    if (result == null) {
      _logger.debug('No file selected');
      return;
    }

    final platformFile = result.files.single;

    try {
      await Amplify.Storage.uploadFile(
        localFile: AWSFile.fromStream(
          platformFile.readStream!,
          size: platformFile.size,
        ),
        path: StoragePath.fromString('public/${platformFile.name}'),
        onProgress: (p) =>
            _logger.debug('Uploading: ${p.transferredBytes}/${p.totalBytes}'),
      ).result;
      await _listAllPublicFiles();
    } on StorageException catch (e) {
      _logger.error('Error uploading file - ${e.message}');
    }
  }

  // list all files in the S3 bucket
  Future<void> _listAllPublicFiles() async {
    try {
      final result = await Amplify.Storage.list(
        path: const StoragePath.fromString('public/'),
        options: const StorageListOptions(
          pluginOptions: S3ListPluginOptions.listAll(),
        ),
      ).result;
      setState(() {
        list = result.items;
      });
    } on StorageException catch (e) {
      _logger.error('List error - ${e.message}');
    }
  }

  // download file on mobile
  Future<void> downloadFileMobile(String path) async {
    final documentsDir = await getApplicationDocumentsDirectory();
    final filepath = '${documentsDir.path}/$path';
    try {
      await Amplify.Storage.downloadFile(
        path: StoragePath.fromString(path),
        localFile: AWSFile.fromPath(filepath),
        onProgress: (p0) => _logger
            .debug('Progress: ${(p0.transferredBytes / p0.totalBytes) * 100}%'),
      ).result;
      await _listAllPublicFiles();
    } on StorageException catch (e) {
      _logger.error('Download error - ${e.message}');
    }
  }

  // download file on web
  Future<void> downloadFileWeb(String path) async {
    try {
      await Amplify.Storage.downloadFile(
        path: StoragePath.fromString(path),
        localFile: AWSFile.fromPath(path),
        onProgress: (p0) => _logger
            .debug('Progress: ${(p0.transferredBytes / p0.totalBytes) * 100}%'),
      ).result;
      await _listAllPublicFiles();
    } on StorageException catch (e) {
      _logger.error('Download error - ${e.message}');
    }
  }

  // delete file from S3 bucket
  Future<void> removeFile(String path) async {
    try {
      await Amplify.Storage.remove(
        path: StoragePath.fromString(path),
      ).result;
      setState(() {
        // set the imageUrl to empty if the deleted file is the one being displayed
        imageUrl = '';
      });
      await _listAllPublicFiles();
    } on StorageException catch (e) {
      _logger.error('Delete error - ${e.message}');
    }
  }

  // get the url of a file in the S3 bucket
  Future<String> getUrl(String path) async {
    try {
      final result = await Amplify.Storage.getUrl(
        path: StoragePath.fromString(path),
        options: const StorageGetUrlOptions(
          pluginOptions: S3GetUrlPluginOptions(
            validateObjectExistence: true,
            expiresIn: Duration(minutes: 1),
          ),
        ),
      ).result;
      setState(() {
        imageUrl = result.url.toString();
      });
      return result.url.toString();
    } on StorageException catch (e) {
      _logger.error('Get URL error - ${e.message}');
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Amplify Storage Example'),
      ),
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = list[index];
                  return ListTile(
                    onTap: () {
                      getUrl(item.path);
                    },
                    title: Text(item.path),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        removeFile(item.path);
                      },
                      color: Colors.red,
                    ),
                    leading: IconButton(
                      icon: const Icon(Icons.download),
                      onPressed: () {
                        zIsWeb
                            ? downloadFileWeb(item.path)
                            : downloadFileMobile(item.path);
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          // display the image with the url
          if (imageUrl != '')
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(80),
                child: Image.network(imageUrl, height: 200),
              ),
            ),
          // upload file button
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: _uploadFile,
                child: const Text('Upload File'),
              ),
            ),
          ),
          // sign out button
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                style: ButtonStyle(
                  // TODO(Jordan-Nelson): use `WidgetStateProperty` when min flutter sdk is 3.22.0
                  // ignore: deprecated_member_use
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                onPressed: _signOut,
                child: const Icon(Icons.logout, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
