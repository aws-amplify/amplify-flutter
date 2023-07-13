// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_storage_s3_example/amplifyconfiguration.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:path_provider/path_provider.dart';

final AmplifyLogger _logger = AmplifyLogger('MyStorageApp');

void main() {
  AmplifyLogger().logLevel = LogLevel.debug;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      _logger.debug('Something went wrong configuring Amplify: $error');
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
      _logger.debug('Could not sign out - ${e.message}');
    }
  }

  // check if the user is signed in
  Future<void> _checkAuthStatus() async {
    try {
      final session = await Amplify.Auth.fetchAuthSession();
      _logger.debug('Signed in: ${session.isSignedIn}');
    } on AuthException catch (e) {
      _logger.debug('Could not check auth status - ${e.message}');
    }
  }

  // upload a file to the S3 bucket
  Future<void> _uploadFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'png'],
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
        key: platformFile.name,
        onProgress: (p) =>
            _logger.debug('Uploading: ${p.transferredBytes}/${p.totalBytes}'),
      ).result;
      await _listAllPublicFiles();
    } on StorageException catch (e) {
      _logger.debug('Error uploading file - ${e.message}');
    }
  }

  // list all files in the S3 bucket
  Future<void> _listAllPublicFiles() async {
    try {
      final result = await Amplify.Storage.list(
        options: const StorageListOptions(
          accessLevel: StorageAccessLevel.guest,
          pluginOptions: S3ListPluginOptions.listAll(),
        ),
      ).result;
      setState(() {
        list = result.items;
      });
    } on StorageException catch (e) {
      _logger.debug('List error - ${e.message}');
    }
  }

  // download file on mobile
  Future<void> downloadFileMobile(String key) async {
    final documentsDir = await getApplicationDocumentsDirectory();
    final filepath = '${documentsDir.path}/$key';
    try {
      final result = await Amplify.Storage.downloadFile(
        key: key,
        localFile: AWSFile.fromPath(filepath),
        onProgress: (p0) => _logger
            .debug('Progress: ${p0.transferredBytes} / ${p0.totalBytes}%)'),
      ).result;
      await _listAllPublicFiles();
    } on StorageException catch (e) {
      _logger.debug('Download error - ${e.message}');
    }
  }

  // download file on web
  Future<void> downloadFileWeb(String key) async {
    try {
      final result = await Amplify.Storage.downloadFile(
        key: key,
        localFile: AWSFile.fromPath(key),
      ).result;
      await _listAllPublicFiles();
    } on StorageException catch (e) {
      _logger.debug('Download error - ${e.message}');
    }
  }

  // delete file from S3 bucket
  Future<void> removeFile({
    required String key,
    required StorageAccessLevel accessLevel,
  }) async {
    try {
      final result = await Amplify.Storage.remove(
        key: key,
        options: StorageRemoveOptions(accessLevel: accessLevel),
      ).result;
      await _listAllPublicFiles();
    } on StorageException catch (e) {
      _logger.debug('Delete error - ${e.message}');
      rethrow;
    }
  }

  // get the url of a file in the S3 bucket
  Future<String> getUrl({
    required String key,
    required StorageAccessLevel accessLevel,
  }) async {
    try {
      final result = await Amplify.Storage.getUrl(
        key: key,
        options: StorageGetUrlOptions(
          accessLevel: accessLevel,
          pluginOptions: const S3GetUrlPluginOptions(
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
      _logger.debug('Get URL error - ${e.message}');
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
              child: ListView(
                children: [
                  for (final item in list)
                    ListTile(
                      onTap: () => {
                        getUrl(
                          key: item.key,
                          accessLevel: StorageAccessLevel.guest,
                        )
                      },
                      title: Text(item.key as String),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              removeFile(
                                key: item.key as String,
                                accessLevel: StorageAccessLevel.guest,
                              );
                            },
                            color: Colors.red,
                          ),
                        ],
                      ),
                      leading: IconButton(
                        icon: const Icon(Icons.download),
                        onPressed: () {
                          if (defaultTargetPlatform == TargetPlatform.iOS ||
                              defaultTargetPlatform == TargetPlatform.android) {
                            downloadFileMobile(item.key as String);
                          } else {
                            downloadFileWeb(item.key as String);
                          }
                        },
                      ),
                    ),
                ],
              ),
            ),
          ),
          // display the url of the image
          if (imageUrl != '')
            Positioned(
              bottom: 300,
              left: 20,
              right: 20,
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Image URL:',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Text(
                      imageUrl,
                      style: const TextStyle(fontSize: 5),
                    ),
                  ],
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
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                onPressed: _signOut,
                child: const Icon(Icons.logout),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
