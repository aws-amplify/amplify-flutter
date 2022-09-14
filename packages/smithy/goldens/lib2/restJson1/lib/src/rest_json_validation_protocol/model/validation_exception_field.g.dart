// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_validation_protocol.model.validation_exception_field;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ValidationExceptionField extends ValidationExceptionField {
  @override
  final String message;
  @override
  final String path;

  factory _$ValidationExceptionField(
          [void Function(ValidationExceptionFieldBuilder)? updates]) =>
      (new ValidationExceptionFieldBuilder()..update(updates))._build();

  _$ValidationExceptionField._({required this.message, required this.path})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        message, r'ValidationExceptionField', 'message');
    BuiltValueNullFieldError.checkNotNull(
        path, r'ValidationExceptionField', 'path');
  }

  @override
  ValidationExceptionField rebuild(
          void Function(ValidationExceptionFieldBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidationExceptionFieldBuilder toBuilder() =>
      new ValidationExceptionFieldBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidationExceptionField &&
        message == other.message &&
        path == other.path;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, message.hashCode), path.hashCode));
  }
}

class ValidationExceptionFieldBuilder
    implements
        Builder<ValidationExceptionField, ValidationExceptionFieldBuilder> {
  _$ValidationExceptionField? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  ValidationExceptionFieldBuilder() {
    ValidationExceptionField._init(this);
  }

  ValidationExceptionFieldBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _path = $v.path;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidationExceptionField other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ValidationExceptionField;
  }

  @override
  void update(void Function(ValidationExceptionFieldBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ValidationExceptionField build() => _build();

  _$ValidationExceptionField _build() {
    final _$result = _$v ??
        new _$ValidationExceptionField._(
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'ValidationExceptionField', 'message'),
            path: BuiltValueNullFieldError.checkNotNull(
                path, r'ValidationExceptionField', 'path'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
