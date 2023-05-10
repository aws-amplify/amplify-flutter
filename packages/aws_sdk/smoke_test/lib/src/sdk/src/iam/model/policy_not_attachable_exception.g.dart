// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.policy_not_attachable_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PolicyNotAttachableException extends PolicyNotAttachableException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$PolicyNotAttachableException(
          [void Function(PolicyNotAttachableExceptionBuilder)? updates]) =>
      (new PolicyNotAttachableExceptionBuilder()..update(updates))._build();

  _$PolicyNotAttachableException._({this.message, this.headers}) : super._();

  @override
  PolicyNotAttachableException rebuild(
          void Function(PolicyNotAttachableExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PolicyNotAttachableExceptionBuilder toBuilder() =>
      new PolicyNotAttachableExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolicyNotAttachableException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PolicyNotAttachableExceptionBuilder
    implements
        Builder<PolicyNotAttachableException,
            PolicyNotAttachableExceptionBuilder> {
  _$PolicyNotAttachableException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  PolicyNotAttachableExceptionBuilder() {
    PolicyNotAttachableException._init(this);
  }

  PolicyNotAttachableExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolicyNotAttachableException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PolicyNotAttachableException;
  }

  @override
  void update(void Function(PolicyNotAttachableExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolicyNotAttachableException build() => _build();

  _$PolicyNotAttachableException _build() {
    final _$result = _$v ??
        new _$PolicyNotAttachableException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
