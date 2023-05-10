// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.delete_conflict_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteConflictException extends DeleteConflictException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$DeleteConflictException(
          [void Function(DeleteConflictExceptionBuilder)? updates]) =>
      (new DeleteConflictExceptionBuilder()..update(updates))._build();

  _$DeleteConflictException._({this.message, this.headers}) : super._();

  @override
  DeleteConflictException rebuild(
          void Function(DeleteConflictExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteConflictExceptionBuilder toBuilder() =>
      new DeleteConflictExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteConflictException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteConflictExceptionBuilder
    implements
        Builder<DeleteConflictException, DeleteConflictExceptionBuilder> {
  _$DeleteConflictException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  DeleteConflictExceptionBuilder() {
    DeleteConflictException._init(this);
  }

  DeleteConflictExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteConflictException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteConflictException;
  }

  @override
  void update(void Function(DeleteConflictExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteConflictException build() => _build();

  _$DeleteConflictException _build() {
    final _$result = _$v ??
        new _$DeleteConflictException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
