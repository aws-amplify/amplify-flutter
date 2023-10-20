// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_already_accepted_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DataAlreadyAcceptedException extends DataAlreadyAcceptedException {
  @override
  final String? expectedSequenceToken;
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$DataAlreadyAcceptedException(
          [void Function(DataAlreadyAcceptedExceptionBuilder)? updates]) =>
      (new DataAlreadyAcceptedExceptionBuilder()..update(updates))._build();

  _$DataAlreadyAcceptedException._(
      {this.expectedSequenceToken, this.message, this.statusCode, this.headers})
      : super._();

  @override
  DataAlreadyAcceptedException rebuild(
          void Function(DataAlreadyAcceptedExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataAlreadyAcceptedExceptionBuilder toBuilder() =>
      new DataAlreadyAcceptedExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataAlreadyAcceptedException &&
        expectedSequenceToken == other.expectedSequenceToken &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expectedSequenceToken.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DataAlreadyAcceptedExceptionBuilder
    implements
        Builder<DataAlreadyAcceptedException,
            DataAlreadyAcceptedExceptionBuilder> {
  _$DataAlreadyAcceptedException? _$v;

  String? _expectedSequenceToken;
  String? get expectedSequenceToken => _$this._expectedSequenceToken;
  set expectedSequenceToken(String? expectedSequenceToken) =>
      _$this._expectedSequenceToken = expectedSequenceToken;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  DataAlreadyAcceptedExceptionBuilder() {
    DataAlreadyAcceptedException._init(this);
  }

  DataAlreadyAcceptedExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expectedSequenceToken = $v.expectedSequenceToken;
      _message = $v.message;
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataAlreadyAcceptedException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataAlreadyAcceptedException;
  }

  @override
  void update(void Function(DataAlreadyAcceptedExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataAlreadyAcceptedException build() => _build();

  _$DataAlreadyAcceptedException _build() {
    final _$result = _$v ??
        new _$DataAlreadyAcceptedException._(
            expectedSequenceToken: expectedSequenceToken,
            message: message,
            statusCode: statusCode,
            headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
