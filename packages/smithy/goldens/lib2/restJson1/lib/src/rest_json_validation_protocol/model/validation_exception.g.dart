// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ValidationException extends ValidationException {
  @override
  final String message;
  @override
  final _i4.BuiltList<_i3.ValidationExceptionField>? fieldList;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$ValidationException(
          [void Function(ValidationExceptionBuilder)? updates]) =>
      (new ValidationExceptionBuilder()..update(updates))._build();

  _$ValidationException._(
      {required this.message, this.fieldList, this.statusCode, this.headers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        message, r'ValidationException', 'message');
  }

  @override
  ValidationException rebuild(
          void Function(ValidationExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidationExceptionBuilder toBuilder() =>
      new ValidationExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidationException &&
        message == other.message &&
        fieldList == other.fieldList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, fieldList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ValidationExceptionBuilder
    implements Builder<ValidationException, ValidationExceptionBuilder> {
  _$ValidationException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  _i4.ListBuilder<_i3.ValidationExceptionField>? _fieldList;
  _i4.ListBuilder<_i3.ValidationExceptionField> get fieldList =>
      _$this._fieldList ??= new _i4.ListBuilder<_i3.ValidationExceptionField>();
  set fieldList(_i4.ListBuilder<_i3.ValidationExceptionField>? fieldList) =>
      _$this._fieldList = fieldList;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ValidationExceptionBuilder();

  ValidationExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _fieldList = $v.fieldList?.toBuilder();
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidationException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ValidationException;
  }

  @override
  void update(void Function(ValidationExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ValidationException build() => _build();

  _$ValidationException _build() {
    _$ValidationException _$result;
    try {
      _$result = _$v ??
          new _$ValidationException._(
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'ValidationException', 'message'),
              fieldList: _fieldList?.build(),
              statusCode: statusCode,
              headers: headers);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fieldList';
        _fieldList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ValidationException', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
