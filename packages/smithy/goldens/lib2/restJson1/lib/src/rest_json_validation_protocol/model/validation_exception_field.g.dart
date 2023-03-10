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
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
