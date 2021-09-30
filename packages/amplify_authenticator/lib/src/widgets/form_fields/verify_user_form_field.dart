part of authenticator.form_field;

/// {@template authenticator.verify_user_form_field}
/// A form field component on the Verify User screen.
/// {@endtemplate}
class VerifyUserFormField
    extends AuthenticatorFormField<String, VerifyUserFormField> {
  /// {@macro authenticator.verify_user_form_field}
  const VerifyUserFormField({
    Key? key,
    required String attributeKey,
    // InputResolverKey? labelKey, TODO
    String? label,
  }) : super._(
          key: key,
          field: attributeKey,
          // titleKey: labelKey,
          title: label,
        );

  @override
  _VerifyUserFormFieldState createState() => _VerifyUserFormFieldState();
}

class _VerifyUserFormFieldState
    extends _AuthenticatorFormFieldState<String, VerifyUserFormField> {
  @override
  void Function(String) get callback => throw UnimplementedError();

  @override
  TextInputType get keyboardType => throw UnimplementedError();

  @override
  bool get obscureText => throw UnimplementedError();

  @override
  FormFieldValidator<String>? get validator => throw UnimplementedError();

  @override
  Widget build(BuildContext context) {
    final group = VerifyUserFormFieldGroup.of<String>(context);
    return ListTile(
      title: Text(widget.title!),
      leading: Radio<String>(
        value: widget.field,
        groupValue: group.groupValue.value,
        onChanged: (String? value) {
          group.groupValue.value = value;
          viewModel.setUserAttributeKey(value);
        },
      ),
    );
  }
}

class VerifyUserFormFieldGroup<T> extends InheritedNotifier {
  const VerifyUserFormFieldGroup({
    Key? key,
    required Widget child,
    required this.groupValue,
  }) : super(
          key: key,
          child: child,
          notifier: groupValue,
        );

  /// The value of the radio button group.
  final ValueNotifier<T?> groupValue;

  static VerifyUserFormFieldGroup<T> of<T>(BuildContext context) {
    final group = context
        .dependOnInheritedWidgetOfExactType<VerifyUserFormFieldGroup<T>>();
    assert(() {
      if (group == null) {
        throw FlutterError.fromParts([
          ErrorSummary('No VerifyUserFormFieldGroup widget found.'),
          ErrorDescription(
              'Make sure your VerifyUserFormFields are wrapped with an VerifyUserForm widget.')
        ]);
      }
      return true;
    }());
    return group!;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<ValueNotifier<T?>>('groupValue', groupValue));
  }
}

// ignore_for_file: prefer_asserts_with_message
