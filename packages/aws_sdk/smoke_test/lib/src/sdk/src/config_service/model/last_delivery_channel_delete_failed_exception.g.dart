// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.last_delivery_channel_delete_failed_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LastDeliveryChannelDeleteFailedException
    extends LastDeliveryChannelDeleteFailedException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$LastDeliveryChannelDeleteFailedException(
          [void Function(LastDeliveryChannelDeleteFailedExceptionBuilder)?
              updates]) =>
      (new LastDeliveryChannelDeleteFailedExceptionBuilder()..update(updates))
          ._build();

  _$LastDeliveryChannelDeleteFailedException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  LastDeliveryChannelDeleteFailedException rebuild(
          void Function(LastDeliveryChannelDeleteFailedExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LastDeliveryChannelDeleteFailedExceptionBuilder toBuilder() =>
      new LastDeliveryChannelDeleteFailedExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LastDeliveryChannelDeleteFailedException &&
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

class LastDeliveryChannelDeleteFailedExceptionBuilder
    implements
        Builder<LastDeliveryChannelDeleteFailedException,
            LastDeliveryChannelDeleteFailedExceptionBuilder> {
  _$LastDeliveryChannelDeleteFailedException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  LastDeliveryChannelDeleteFailedExceptionBuilder() {
    LastDeliveryChannelDeleteFailedException._init(this);
  }

  LastDeliveryChannelDeleteFailedExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LastDeliveryChannelDeleteFailedException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LastDeliveryChannelDeleteFailedException;
  }

  @override
  void update(
      void Function(LastDeliveryChannelDeleteFailedExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LastDeliveryChannelDeleteFailedException build() => _build();

  _$LastDeliveryChannelDeleteFailedException _build() {
    final _$result = _$v ??
        new _$LastDeliveryChannelDeleteFailedException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
