// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.sts.model.get_session_token_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSessionTokenRequest extends GetSessionTokenRequest {
  @override
  final int? durationSeconds;
  @override
  final String? serialNumber;
  @override
  final String? tokenCode;

  factory _$GetSessionTokenRequest(
          [void Function(GetSessionTokenRequestBuilder)? updates]) =>
      (new GetSessionTokenRequestBuilder()..update(updates))._build();

  _$GetSessionTokenRequest._(
      {this.durationSeconds, this.serialNumber, this.tokenCode})
      : super._();

  @override
  GetSessionTokenRequest rebuild(
          void Function(GetSessionTokenRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSessionTokenRequestBuilder toBuilder() =>
      new GetSessionTokenRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSessionTokenRequest &&
        durationSeconds == other.durationSeconds &&
        serialNumber == other.serialNumber &&
        tokenCode == other.tokenCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, durationSeconds.hashCode);
    _$hash = $jc(_$hash, serialNumber.hashCode);
    _$hash = $jc(_$hash, tokenCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetSessionTokenRequestBuilder
    implements Builder<GetSessionTokenRequest, GetSessionTokenRequestBuilder> {
  _$GetSessionTokenRequest? _$v;

  int? _durationSeconds;
  int? get durationSeconds => _$this._durationSeconds;
  set durationSeconds(int? durationSeconds) =>
      _$this._durationSeconds = durationSeconds;

  String? _serialNumber;
  String? get serialNumber => _$this._serialNumber;
  set serialNumber(String? serialNumber) => _$this._serialNumber = serialNumber;

  String? _tokenCode;
  String? get tokenCode => _$this._tokenCode;
  set tokenCode(String? tokenCode) => _$this._tokenCode = tokenCode;

  GetSessionTokenRequestBuilder() {
    GetSessionTokenRequest._init(this);
  }

  GetSessionTokenRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _durationSeconds = $v.durationSeconds;
      _serialNumber = $v.serialNumber;
      _tokenCode = $v.tokenCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSessionTokenRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSessionTokenRequest;
  }

  @override
  void update(void Function(GetSessionTokenRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSessionTokenRequest build() => _build();

  _$GetSessionTokenRequest _build() {
    final _$result = _$v ??
        new _$GetSessionTokenRequest._(
            durationSeconds: durationSeconds,
            serialNumber: serialNumber,
            tokenCode: tokenCode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
