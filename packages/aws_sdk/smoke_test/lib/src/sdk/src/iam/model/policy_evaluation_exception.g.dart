// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.policy_evaluation_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PolicyEvaluationException extends PolicyEvaluationException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$PolicyEvaluationException(
          [void Function(PolicyEvaluationExceptionBuilder)? updates]) =>
      (new PolicyEvaluationExceptionBuilder()..update(updates))._build();

  _$PolicyEvaluationException._({this.message, this.headers}) : super._();

  @override
  PolicyEvaluationException rebuild(
          void Function(PolicyEvaluationExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PolicyEvaluationExceptionBuilder toBuilder() =>
      new PolicyEvaluationExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolicyEvaluationException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PolicyEvaluationExceptionBuilder
    implements
        Builder<PolicyEvaluationException, PolicyEvaluationExceptionBuilder> {
  _$PolicyEvaluationException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  PolicyEvaluationExceptionBuilder() {
    PolicyEvaluationException._init(this);
  }

  PolicyEvaluationExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolicyEvaluationException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PolicyEvaluationException;
  }

  @override
  void update(void Function(PolicyEvaluationExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolicyEvaluationException build() => _build();

  _$PolicyEvaluationException _build() {
    final _$result = _$v ??
        new _$PolicyEvaluationException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
