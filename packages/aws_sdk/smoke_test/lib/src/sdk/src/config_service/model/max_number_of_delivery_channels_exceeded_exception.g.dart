// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.max_number_of_delivery_channels_exceeded_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MaxNumberOfDeliveryChannelsExceededException
    extends MaxNumberOfDeliveryChannelsExceededException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$MaxNumberOfDeliveryChannelsExceededException(
          [void Function(MaxNumberOfDeliveryChannelsExceededExceptionBuilder)?
              updates]) =>
      (new MaxNumberOfDeliveryChannelsExceededExceptionBuilder()
            ..update(updates))
          ._build();

  _$MaxNumberOfDeliveryChannelsExceededException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  MaxNumberOfDeliveryChannelsExceededException rebuild(
          void Function(MaxNumberOfDeliveryChannelsExceededExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MaxNumberOfDeliveryChannelsExceededExceptionBuilder toBuilder() =>
      new MaxNumberOfDeliveryChannelsExceededExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaxNumberOfDeliveryChannelsExceededException &&
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

class MaxNumberOfDeliveryChannelsExceededExceptionBuilder
    implements
        Builder<MaxNumberOfDeliveryChannelsExceededException,
            MaxNumberOfDeliveryChannelsExceededExceptionBuilder> {
  _$MaxNumberOfDeliveryChannelsExceededException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  MaxNumberOfDeliveryChannelsExceededExceptionBuilder() {
    MaxNumberOfDeliveryChannelsExceededException._init(this);
  }

  MaxNumberOfDeliveryChannelsExceededExceptionBuilder get _$this {
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
  void replace(MaxNumberOfDeliveryChannelsExceededException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MaxNumberOfDeliveryChannelsExceededException;
  }

  @override
  void update(
      void Function(MaxNumberOfDeliveryChannelsExceededExceptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  MaxNumberOfDeliveryChannelsExceededException build() => _build();

  _$MaxNumberOfDeliveryChannelsExceededException _build() {
    final _$result = _$v ??
        new _$MaxNumberOfDeliveryChannelsExceededException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
