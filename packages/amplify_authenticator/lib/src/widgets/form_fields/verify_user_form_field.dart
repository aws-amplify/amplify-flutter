part of authenticator.form_field;

/// {@template authenticator.verify_user_form_field}
/// A [Radio] form field component on the Verify User screen.
///
/// Must be a descendant of a [VerifyUserFormFieldGroup] widget.
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
  Widget build(BuildContext context) {
    final groupValue = VerifyUserFormFieldGroup.of<String>(context);
    return ListTile(
      title: Text(widget.title!),
      leading: Radio<String>(
        value: widget.field,
        groupValue: groupValue.value,
        onChanged: (String? value) {
          groupValue.value = value;
          viewModel.setUserAttributeKey(value);
        },
      ),
    );
  }
}

/// {@template authenticator.verify_user_form_field_group}
/// Wraps a group of [VerifyUserFormField] widgets ([Radio] buttons) to provide
/// common group state.
/// {@endtemplate}
class VerifyUserFormFieldGroup<T> extends InheritedNotifier {
  /// {@macro authenticator.verify_user_form_field_group}
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

  static ValueNotifier<T?> of<T>(BuildContext context) {
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
    return group!.groupValue;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<ValueNotifier<T?>>('groupValue', groupValue));
  }
}

// ignore_for_file: prefer_asserts_with_message
