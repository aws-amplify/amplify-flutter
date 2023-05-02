// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.operation_status_check_failed_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperationStatusCheckFailedException
    extends OperationStatusCheckFailedException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$OperationStatusCheckFailedException(
          [void Function(OperationStatusCheckFailedExceptionBuilder)?
              updates]) =>
      (new OperationStatusCheckFailedExceptionBuilder()..update(updates))
          ._build();

  _$OperationStatusCheckFailedException._({this.message, this.headers})
      : super._();

  @override
  OperationStatusCheckFailedException rebuild(
          void Function(OperationStatusCheckFailedExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperationStatusCheckFailedExceptionBuilder toBuilder() =>
      new OperationStatusCheckFailedExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperationStatusCheckFailedException &&
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

class OperationStatusCheckFailedExceptionBuilder
    implements
        Builder<OperationStatusCheckFailedException,
            OperationStatusCheckFailedExceptionBuilder> {
  _$OperationStatusCheckFailedException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  OperationStatusCheckFailedExceptionBuilder() {
    OperationStatusCheckFailedException._init(this);
  }

  OperationStatusCheckFailedExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperationStatusCheckFailedException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OperationStatusCheckFailedException;
  }

  @override
  void update(
      void Function(OperationStatusCheckFailedExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperationStatusCheckFailedException build() => _build();

  _$OperationStatusCheckFailedException _build() {
    final _$result = _$v ??
        new _$OperationStatusCheckFailedException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
