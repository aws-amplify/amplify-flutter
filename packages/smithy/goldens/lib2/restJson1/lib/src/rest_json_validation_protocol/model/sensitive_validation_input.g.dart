// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_validation_protocol.model.sensitive_validation_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SensitiveValidationInput extends SensitiveValidationInput {
  @override
  final String? string;

  factory _$SensitiveValidationInput(
          [void Function(SensitiveValidationInputBuilder)? updates]) =>
      (new SensitiveValidationInputBuilder()..update(updates))._build();

  _$SensitiveValidationInput._({this.string}) : super._();

  @override
  SensitiveValidationInput rebuild(
          void Function(SensitiveValidationInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SensitiveValidationInputBuilder toBuilder() =>
      new SensitiveValidationInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SensitiveValidationInput && string == other.string;
  }

  @override
  int get hashCode {
    return $jf($jc(0, string.hashCode));
  }
}

class SensitiveValidationInputBuilder
    implements
        Builder<SensitiveValidationInput, SensitiveValidationInputBuilder> {
  _$SensitiveValidationInput? _$v;

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  SensitiveValidationInputBuilder() {
    SensitiveValidationInput._init(this);
  }

  SensitiveValidationInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _string = $v.string;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SensitiveValidationInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SensitiveValidationInput;
  }

  @override
  void update(void Function(SensitiveValidationInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SensitiveValidationInput build() => _build();

  _$SensitiveValidationInput _build() {
    final _$result = _$v ?? new _$SensitiveValidationInput._(string: string);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
