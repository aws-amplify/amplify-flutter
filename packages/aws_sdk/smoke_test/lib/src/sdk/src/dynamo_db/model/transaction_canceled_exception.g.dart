// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.transaction_canceled_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactionCanceledException extends TransactionCanceledException {
  @override
  final _i4.BuiltList<_i3.CancellationReason>? cancellationReasons;
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$TransactionCanceledException(
          [void Function(TransactionCanceledExceptionBuilder)? updates]) =>
      (new TransactionCanceledExceptionBuilder()..update(updates))._build();

  _$TransactionCanceledException._(
      {this.cancellationReasons, this.message, this.statusCode, this.headers})
      : super._();

  @override
  TransactionCanceledException rebuild(
          void Function(TransactionCanceledExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionCanceledExceptionBuilder toBuilder() =>
      new TransactionCanceledExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionCanceledException &&
        cancellationReasons == other.cancellationReasons &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cancellationReasons.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransactionCanceledExceptionBuilder
    implements
        Builder<TransactionCanceledException,
            TransactionCanceledExceptionBuilder> {
  _$TransactionCanceledException? _$v;

  _i4.ListBuilder<_i3.CancellationReason>? _cancellationReasons;
  _i4.ListBuilder<_i3.CancellationReason> get cancellationReasons =>
      _$this._cancellationReasons ??=
          new _i4.ListBuilder<_i3.CancellationReason>();
  set cancellationReasons(
          _i4.ListBuilder<_i3.CancellationReason>? cancellationReasons) =>
      _$this._cancellationReasons = cancellationReasons;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  TransactionCanceledExceptionBuilder() {
    TransactionCanceledException._init(this);
  }

  TransactionCanceledExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cancellationReasons = $v.cancellationReasons?.toBuilder();
      _message = $v.message;
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionCanceledException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionCanceledException;
  }

  @override
  void update(void Function(TransactionCanceledExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionCanceledException build() => _build();

  _$TransactionCanceledException _build() {
    _$TransactionCanceledException _$result;
    try {
      _$result = _$v ??
          new _$TransactionCanceledException._(
              cancellationReasons: _cancellationReasons?.build(),
              message: message,
              statusCode: statusCode,
              headers: headers);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cancellationReasons';
        _cancellationReasons?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransactionCanceledException', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
