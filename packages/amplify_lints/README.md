# AWS Amplify Lints

Lints used throughout Flutter packages and plugins.

## Lints

The linter rules in this package are derived from the Dart team's [lints](https://pub.dev/packages/lints) package (for Dart packages) and [flutter_lints](https://pub.dev/packages/flutter_lints) (for Flutter apps/plugins/packages). A link to the description for each of the additional linter rules is provided below. More detail about linter rules can be found on the official linter rules [homepage](https://dart-lang.github.io/linter/lints/).

### Dart packages ([`dart.yaml`](lib/dart.yaml))

In addition to the rules recommended in the `lints` package:

- [always_declare_return_types](https://dart-lang.github.io/linter/lints/always_declare_return_types.html)
- [avoid_catches_without_on_clauses](https://dart-lang.github.io/linter/lints/avoid_catches_without_on_clauses.html)
- [avoid_equals_and_hash_code_on_mutable_classes](https://dart-lang.github.io/linter/lints/avoid_equals_and_hash_code_on_mutable_classes.html)
- [avoid_positional_boolean_parameters](https://dart-lang.github.io/linter/lints/avoid_positional_boolean_parameters.html)
- [avoid_type_to_string](https://dart-lang.github.io/linter/lints/avoid_type_to_string.html)
- [avoid_unused_constructor_parameters](https://dart-lang.github.io/linter/lints/avoid_unused_constructor_parameters.html)
- [avoid_void_async](https://dart-lang.github.io/linter/lints/avoid_void_async.html)
- [cancel_subscriptions](https://dart-lang.github.io/linter/lints/cancel_subscriptions.html)
- [close_sinks](https://dart-lang.github.io/linter/lints/close_sinks.html)
- [directives_ordering](https://dart-lang.github.io/linter/lints/directives_ordering.html)
- [missing_whitespace_between_adjacent_strings](https://dart-lang.github.io/linter/lints/missing_whitespace_between_adjacent_strings.html)
- [only_throw_errors](https://dart-lang.github.io/linter/lints/only_throw_errors.html)
- [package_api_docs](https://dart-lang.github.io/linter/lints/package_api_docs.html)
- [prefer_asserts_with_message](https://dart-lang.github.io/linter/lints/prefer_asserts_with_message.html)
- [prefer_const_constructors](https://dart-lang.github.io/linter/lints/prefer_const_constructors.html)
- [prefer_const_constructors_in_immutables](https://dart-lang.github.io/linter/lints/prefer_const_constructors_in_immutables.html)
- [prefer_const_declarations](https://dart-lang.github.io/linter/lints/prefer_const_declarations.html)
- [prefer_const_literals_to_create_immutables](https://dart-lang.github.io/linter/lints/prefer_const_literals_to_create_immutables.html)
- [prefer_single_quotes](https://dart-lang.github.io/linter/lints/prefer_single_quotes.html)
- [public_member_api_docs](https://dart-lang.github.io/linter/lints/public_member_api_docs.html)
- [sort_unnamed_constructors_first](https://dart-lang.github.io/linter/lints/sort_unnamed_constructors_first.html)
- [sort_pub_dependencies](https://dart-lang.github.io/linter/lints/sort_pub_dependencies.html)
- [type_annotate_public_apis](https://dart-lang.github.io/linter/lints/type_annotate_public_apis.html)
- [unnecessary_await_in_return](https://dart-lang.github.io/linter/lints/unnecessary_await_in_return.html)
- [unnecessary_lambdas](https://dart-lang.github.io/linter/lints/unnecessary_lambdas.html)

## Flutter packages/plugins ([`flutter_lib.yaml`](lib/flutter_lib.yaml))

All of the previous linter rules plus:

- [diagnostic_describe_all_properties](https://dart-lang.github.io/linter/lints/diagnostic_describe_all_properties.html)
- [prefer_if_elements_to_conditional_expressions](https://dart-lang.github.io/linter/lints/prefer_if_elements_to_conditional_expressions.html)

## Flutter apps ([`flutter_app.yaml`](lib/flutter_app.yaml))

Flutter apps will make use of a subset of the linter rules mentioned above, namely:

- [avoid_catches_without_on_clauses](https://dart-lang.github.io/linter/lints/avoid_catches_without_on_clauses.html)
- [cancel_subscriptions](https://dart-lang.github.io/linter/lints/cancel_subscriptions.html)
- [close_sinks](https://dart-lang.github.io/linter/lints/close_sinks.html)
- [directives_ordering](https://dart-lang.github.io/linter/lints/directives_ordering.html)
- [only_throw_errors](https://dart-lang.github.io/linter/lints/only_throw_errors.html)
- [prefer_if_elements_to_conditional_expressions](https://dart-lang.github.io/linter/lints/prefer_if_elements_to_conditional_expressions.html)
- [prefer_single_quotes](https://dart-lang.github.io/linter/lints/prefer_single_quotes.html)
- [sort_pub_dependencies](https://dart-lang.github.io/linter/lints/sort_pub_dependencies.html)
- [unnecessary_await_in_return](https://dart-lang.github.io/linter/lints/unnecessary_await_in_return.html)
- [unnecessary_lambdas](https://dart-lang.github.io/linter/lints/unnecessary_lambdas.html)

The following new rules will be used as well:

- [avoid_catching_errors](https://dart-lang.github.io/linter/lints/avoid_catching_errors.html)