// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.insufficient_delivery_policy_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InsufficientDeliveryPolicyException
    extends InsufficientDeliveryPolicyException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$InsufficientDeliveryPolicyException(
          [void Function(InsufficientDeliveryPolicyExceptionBuilder)?
              updates]) =>
      (new InsufficientDeliveryPolicyExceptionBuilder()..update(updates))
          ._build();

  _$InsufficientDeliveryPolicyException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  InsufficientDeliveryPolicyException rebuild(
          void Function(InsufficientDeliveryPolicyExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InsufficientDeliveryPolicyExceptionBuilder toBuilder() =>
      new InsufficientDeliveryPolicyExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InsufficientDeliveryPolicyException &&
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

class InsufficientDeliveryPolicyExceptionBuilder
    implements
        Builder<InsufficientDeliveryPolicyException,
            InsufficientDeliveryPolicyExceptionBuilder> {
  _$InsufficientDeliveryPolicyException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InsufficientDeliveryPolicyExceptionBuilder() {
    InsufficientDeliveryPolicyException._init(this);
  }

  InsufficientDeliveryPolicyExceptionBuilder get _$this {
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
  void replace(InsufficientDeliveryPolicyException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InsufficientDeliveryPolicyException;
  }

  @override
  void update(
      void Function(InsufficientDeliveryPolicyExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InsufficientDeliveryPolicyException build() => _build();

  _$InsufficientDeliveryPolicyException _build() {
    final _$result = _$v ??
        new _$InsufficientDeliveryPolicyException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
