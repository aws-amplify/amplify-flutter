// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.cfn_registry_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CfnRegistryException extends CfnRegistryException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$CfnRegistryException(
          [void Function(CfnRegistryExceptionBuilder)? updates]) =>
      (new CfnRegistryExceptionBuilder()..update(updates))._build();

  _$CfnRegistryException._({this.message, this.headers}) : super._();

  @override
  CfnRegistryException rebuild(
          void Function(CfnRegistryExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CfnRegistryExceptionBuilder toBuilder() =>
      new CfnRegistryExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CfnRegistryException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CfnRegistryExceptionBuilder
    implements Builder<CfnRegistryException, CfnRegistryExceptionBuilder> {
  _$CfnRegistryException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  CfnRegistryExceptionBuilder() {
    CfnRegistryException._init(this);
  }

  CfnRegistryExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CfnRegistryException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CfnRegistryException;
  }

  @override
  void update(void Function(CfnRegistryExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CfnRegistryException build() => _build();

  _$CfnRegistryException _build() {
    final _$result =
        _$v ?? new _$CfnRegistryException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
