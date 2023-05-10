// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.error_details;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorDetails extends ErrorDetails {
  @override
  final String message;
  @override
  final String code;

  factory _$ErrorDetails([void Function(ErrorDetailsBuilder)? updates]) =>
      (new ErrorDetailsBuilder()..update(updates))._build();

  _$ErrorDetails._({required this.message, required this.code}) : super._() {
    BuiltValueNullFieldError.checkNotNull(message, r'ErrorDetails', 'message');
    BuiltValueNullFieldError.checkNotNull(code, r'ErrorDetails', 'code');
  }

  @override
  ErrorDetails rebuild(void Function(ErrorDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorDetailsBuilder toBuilder() => new ErrorDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorDetails &&
        message == other.message &&
        code == other.code;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ErrorDetailsBuilder
    implements Builder<ErrorDetails, ErrorDetailsBuilder> {
  _$ErrorDetails? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  ErrorDetailsBuilder() {
    ErrorDetails._init(this);
  }

  ErrorDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorDetails;
  }

  @override
  void update(void Function(ErrorDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ErrorDetails build() => _build();

  _$ErrorDetails _build() {
    final _$result = _$v ??
        new _$ErrorDetails._(
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'ErrorDetails', 'message'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'ErrorDetails', 'code'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
