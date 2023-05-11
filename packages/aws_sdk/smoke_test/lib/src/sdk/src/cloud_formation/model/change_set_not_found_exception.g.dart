// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.change_set_not_found_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangeSetNotFoundException extends ChangeSetNotFoundException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$ChangeSetNotFoundException(
          [void Function(ChangeSetNotFoundExceptionBuilder)? updates]) =>
      (new ChangeSetNotFoundExceptionBuilder()..update(updates))._build();

  _$ChangeSetNotFoundException._({this.message, this.headers}) : super._();

  @override
  ChangeSetNotFoundException rebuild(
          void Function(ChangeSetNotFoundExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeSetNotFoundExceptionBuilder toBuilder() =>
      new ChangeSetNotFoundExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeSetNotFoundException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ChangeSetNotFoundExceptionBuilder
    implements
        Builder<ChangeSetNotFoundException, ChangeSetNotFoundExceptionBuilder> {
  _$ChangeSetNotFoundException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ChangeSetNotFoundExceptionBuilder() {
    ChangeSetNotFoundException._init(this);
  }

  ChangeSetNotFoundExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeSetNotFoundException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeSetNotFoundException;
  }

  @override
  void update(void Function(ChangeSetNotFoundExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeSetNotFoundException build() => _build();

  _$ChangeSetNotFoundException _build() {
    final _$result = _$v ??
        new _$ChangeSetNotFoundException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
