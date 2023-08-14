// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_warning.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ValidationWarning extends ValidationWarning {
  @override
  final _i2.BuiltList<ValidationError>? errors;

  factory _$ValidationWarning(
          [void Function(ValidationWarningBuilder)? updates]) =>
      (new ValidationWarningBuilder()..update(updates))._build();

  _$ValidationWarning._({this.errors}) : super._();

  @override
  ValidationWarning rebuild(void Function(ValidationWarningBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidationWarningBuilder toBuilder() =>
      new ValidationWarningBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidationWarning && errors == other.errors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ValidationWarningBuilder
    implements Builder<ValidationWarning, ValidationWarningBuilder> {
  _$ValidationWarning? _$v;

  _i2.ListBuilder<ValidationError>? _errors;
  _i2.ListBuilder<ValidationError> get errors =>
      _$this._errors ??= new _i2.ListBuilder<ValidationError>();
  set errors(_i2.ListBuilder<ValidationError>? errors) =>
      _$this._errors = errors;

  ValidationWarningBuilder();

  ValidationWarningBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errors = $v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidationWarning other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ValidationWarning;
  }

  @override
  void update(void Function(ValidationWarningBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ValidationWarning build() => _build();

  _$ValidationWarning _build() {
    _$ValidationWarning _$result;
    try {
      _$result = _$v ?? new _$ValidationWarning._(errors: _errors?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        _errors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ValidationWarning', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
