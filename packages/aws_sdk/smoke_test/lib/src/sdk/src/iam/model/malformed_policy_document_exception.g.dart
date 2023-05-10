// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.malformed_policy_document_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedPolicyDocumentException
    extends MalformedPolicyDocumentException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$MalformedPolicyDocumentException(
          [void Function(MalformedPolicyDocumentExceptionBuilder)? updates]) =>
      (new MalformedPolicyDocumentExceptionBuilder()..update(updates))._build();

  _$MalformedPolicyDocumentException._({this.message, this.headers})
      : super._();

  @override
  MalformedPolicyDocumentException rebuild(
          void Function(MalformedPolicyDocumentExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedPolicyDocumentExceptionBuilder toBuilder() =>
      new MalformedPolicyDocumentExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedPolicyDocumentException &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedPolicyDocumentExceptionBuilder
    implements
        Builder<MalformedPolicyDocumentException,
            MalformedPolicyDocumentExceptionBuilder> {
  _$MalformedPolicyDocumentException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  MalformedPolicyDocumentExceptionBuilder() {
    MalformedPolicyDocumentException._init(this);
  }

  MalformedPolicyDocumentExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedPolicyDocumentException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedPolicyDocumentException;
  }

  @override
  void update(void Function(MalformedPolicyDocumentExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedPolicyDocumentException build() => _build();

  _$MalformedPolicyDocumentException _build() {
    final _$result = _$v ??
        new _$MalformedPolicyDocumentException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
