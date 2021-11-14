part of '../form_field.dart';

class AuthenticatorPhoneField<FieldType> extends AuthenticatorFormField<
    FieldType, String, AuthenticatorPhoneField<FieldType>> {
  const AuthenticatorPhoneField({
    Key? key,
    required FieldType field,
    this.onChanged,
    FormFieldValidator<String?>? validator,
    this.enabled,
    this.initialValue,
    this.errorMaxLines,
  }) : super._(
          key: key,
          field: field,
          hintTextKey: InputResolverKey.phoneNumberHint,
          validator: validator,
        );

  final bool? enabled;
  final String? initialValue;
  final ValueChanged<String>? onChanged;
  final int? errorMaxLines;

  @override
  _AuthenticatorPhoneFieldState<FieldType> createState() =>
      _AuthenticatorPhoneFieldState<FieldType>();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        ObjectFlagProperty<ValueChanged<String>>.has('onChanged', onChanged));
    properties.add(DiagnosticsProperty<bool?>('enabled', enabled));
    properties.add(StringProperty('initialValue', initialValue));
    properties.add(IntProperty('errorMaxLines', errorMaxLines));
  }
}

class _AuthenticatorPhoneFieldState<FieldType>
    extends AuthenticatorFormFieldState<FieldType, String,
        AuthenticatorPhoneField<FieldType>>
    with AuthenticatorPhoneFieldMixin, AuthenticatorTextField {
  @override
  String? get initialValue {
    var _initialValue = widget.initialValue ?? super.initialValue;
    if (_initialValue != null) {
      _initialValue = displayPhoneNumber(_initialValue);
    }
    return _initialValue;
  }

  @override
  bool get enabled => widget.enabled ?? super.enabled;

  @override
  int get errorMaxLines => widget.errorMaxLines ?? super.errorMaxLines;

  @override
  ValueChanged<String> get onChanged => (phoneNumber) {
        phoneNumber = formatPhoneNumber(phoneNumber);
        return (widget.onChanged ?? super.onChanged)(phoneNumber);
      };

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(IterableProperty<Country>('filteredCountries', filteredCountries));
    properties.add(
        ObjectFlagProperty<ValueChanged<String>>.has('onChanged', onChanged));
  }
}

extension StringPrefix on String {
  String ensureStartsWith(String value) {
    if (!startsWith(value)) {
      return '$value$this';
    }
    return this;
  }
}
