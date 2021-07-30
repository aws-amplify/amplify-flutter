# amplify_authenticator

The Amplify Flutter Authenticator is meant to bring customers and end-users
a seamless experience while using authentication in Flutter applications.

The authenticator uses a native solution for state management to avoid conflicts
between existing dependencies.

The overall architecture of the authenticator is composed by a View Model, that
handles all the data coming from the client side, and by a BLoC pattern that
separates all the business logic from the User Interface.

## Getting Started

TODO:

1. Refactor previous PoC into a library.
2. Migrate authenticator to NULL SAFETY.
3. SignUp & ConfirmSignUp screens implementation.
4. SignIn, ConfirmSignIn and Password screens implementation.
5. Integrate testing.

## Text Customization and Localization

The Amplify Authenticator offers the ability to customize the text it displays. This can be used for static customization and can also be used to leverage Flutter's out-of-the-box localization capabilities.

To customize text, instantiate an instance of the `AuthStringsResolver`:

```dart
var resolver = AuthStringsResolver(
    buttons: ButtonResolver(
        submit_signin: () => AppLocalizations.of(context)!.submit_signin,
        /// additional customizations...
    ),
    inputs: InputResolver(
        username_title: () => AppLocalizations.of(context)!.username_title,
        /// additional customizations...
    ),
    titles: TitleResolver(
        signin: () => AppLocalizations.of(context)!.title_signin,
        /// additional customizations...
    )
);
```

Each value with in the `AuthStringsResolver` should be a function which returns a String.
