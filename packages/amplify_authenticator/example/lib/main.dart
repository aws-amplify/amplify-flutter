import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'amplifyconfiguration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('es', 'US'),
        Locale.fromSubtags(
            languageCode: 'zh', scriptCode: 'Hans', countryCode: 'CN'),
        Locale.fromSubtags(
            languageCode: 'zh', scriptCode: 'Hans', countryCode: 'HK')
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        // resolver = AuthStringsResolver(
        //     signIn_title: () => AppLocalizations.of(context)!.helloWorld,
        //     username_title: () => AppLocalizations.of(context)!.helloWorld,
        //     username_hint: () => AppLocalizations.of(context)!.helloWorld
        // );
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale?.languageCode &&
              supportedLocale.countryCode == locale?.countryCode) {
            return locale;
          }
        }
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyApp extends StatelessWidget {
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
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();

    _amplifyConfig();
  }

// Amplify Configuration
  void _amplifyConfig() async {
    try {
      await Amplify.addPlugin(AmplifyAuthCognito());
      await Amplify.configure(amplifyconfig);
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();

    _amplifyConfig();
    // try {
    //   _locale = localeList.firstWhere((Locale locale) {
    //     return locale.toLanguageTag() == Platform.localeName.replaceAll('_', '-');
    //   });
    // } on Exception {
    //   _locale = english;
    // }

    var d;
  }

// Amplify Configuration
  void _amplifyConfig() async {
    try {
      await Amplify.addPlugin(AmplifyAuthCognito());
      await Amplify.configure(amplifyconfig);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: const CustomersApp(),
    );
  }
}

class CustomersApp extends StatelessWidget {
  const CustomersApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customer's App"),
      ),
      body: SignOutButton(),
    );
  }
}

// import 'dart:io';

// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
// import 'package:amplify_flutter/amplify.dart';
// import 'package:flutter/material.dart';
// import 'package:amplify_authenticator/amplify_authenticator.dart';
// import 'package:flutter/foundation.dart' show SynchronousFuture;
// import 'package:flutter_localizations/flutter_localizations.dart';

// import 'localizations/english.dart';
// import 'localizations/spanish.dart';
// import 'localizations/chinese_ch.dart';
// import 'localizations/chinese_hk.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// //import 'amplifyconfiguration.dart';

// void main() {
//   runApp(MyHomePage());
// }
// const english =  AuthenticatorLocale('en', englishLocalizations);
// const spanish = AuthenticatorLocale.fromSubtags('es', spanishLocalizations, countryCode: 'US');
// const chineseHansChina = AuthenticatorLocale.fromSubtags('zh', chineseLocalizations, countryCode:'CN', scriptCode: 'Hans');
// const chineseHansHongKong = AuthenticatorLocale.fromSubtags('zh', honkKongLocalizations, countryCode:'HK', scriptCode: 'Hans');
// const localeList = [english, spanish, chineseHansChina, chineseHansHongKong];
// class MyHomePage extends StatefulWidget {
//   MyHomePage();

//   // static void setLocale(BuildContext context, Locale newLocale) async {
//   //   _MyHomePageState? state = context.findAncestorStateOfType<_MyHomePageState>();
//   //     state!.changeLanguage(spanish);
//   // }

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   Locale? _locale;

//   void changeLanguage(Locale? locale) {
//     setState(() {
//     _locale = locale!;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();

//     _amplifyConfig();
//     // try {
//     //   _locale = localeList.firstWhere((Locale locale) {
//     //     return locale.toLanguageTag() == Platform.localeName.replaceAll('_', '-');
//     //   });
//     // } on Exception {
//     //   _locale = english;
//     // }

//     var d;
//   }

// // Amplify Configuration
//   void _amplifyConfig() async {
//     try {
//       await Amplify.addPlugin(AmplifyAuthCognito());
//       // await Amplify.configure(amplifyconfig);
//     } catch (e) {
//       print(e);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {

//     var resolver = AuthStringsResolver(

//         signIn_title: () => AppLocalizations.of(context)!.helloWorld,
//         username_title: () => AppLocalizations.of(context)!.helloWorld,
//         username_hint: () => AppLocalizations.of(context)!.helloWorld
//       )

//     return MaterialApp(
//       // title: 'Flutter Demo',\
//       onGenerateTitle: (context) {
//         return AppLocalizations.of(context)!.helloWorld;
//       },
//       locale: _locale,
//       localizationsDelegates: const [
//         AppLocalizations.delegate,
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//       ],
//       supportedLocales: const [
//         Locale('en', ''),
//         Locale('es', 'US'),
//         Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans', countryCode: 'CN'),
//         Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans', countryCode: 'HK')
//       ],
//       localeResolutionCallback: (locale, supportedLocales) {
//         resolver = AuthStringsResolver(
//             signIn_title: () => AppLocalizations.of(context)!.helloWorld,
//             username_title: () => AppLocalizations.of(context)!.helloWorld,
//             username_hint: () => AppLocalizations.of(context)!.helloWorld
//         );
//         // for (var supportedLocale in supportedLocales) {
//         //   if (supportedLocale.languageCode == locale?.languageCode &&
//         //       supportedLocale.countryCode == locale?.countryCode) {
//         //     return locale;
//         //   }
//         // }
//         // return english;
//       },
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Stack(
//         children: [
//           Authenticator(
//           authStringResolver: resolver,
//           child: Scaffold(
//             appBar: AppBar(
//               title: Text("whatever"),
//             ),
//             body: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   SignOutButton(),
//                   Text(
//                     'You have pushed the button this many times:',
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//         Card(
//           child: Padding(
//             padding: EdgeInsets.all(20.0),
//             child: DropdownButton<Locale>(
//               value: _locale,
//               icon: const Icon(Icons.arrow_downward),
//               iconSize: 24,
//               elevation: 16,
//               style: const TextStyle(
//                 color: Colors.deepPurple
//               ),
//               underline: Container(
//                 height: 2,
//                 color: Colors.deepPurpleAccent,
//               ),
//               onChanged: (Locale? newValue) {
//                 changeLanguage(newValue);
//               },
//               items: <Locale>[english, spanish, chineseHansChina, chineseHansHongKong]
//                 .map<DropdownMenuItem<Locale>>((Locale value) {
//                   return DropdownMenuItem<Locale>(
//                     value: value,
//                     child: Text(value.toLanguageTag()),
//                   );
//                 })
//                 .toList(),
//             ),
//           ),
//         )
//       ]
//     ));
//   }
// }
