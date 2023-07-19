// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_request_validator_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetRequestValidatorRequest extends GetRequestValidatorRequest {
  @override
  final String restApiId;
  @override
  final String requestValidatorId;

  factory _$GetRequestValidatorRequest(
          [void Function(GetRequestValidatorRequestBuilder)? updates]) =>
      (new GetRequestValidatorRequestBuilder()..update(updates))._build();

  _$GetRequestValidatorRequest._(
      {required this.restApiId, required this.requestValidatorId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetRequestValidatorRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(requestValidatorId,
        r'GetRequestValidatorRequest', 'requestValidatorId');
  }

  @override
  GetRequestValidatorRequest rebuild(
          void Function(GetRequestValidatorRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRequestValidatorRequestBuilder toBuilder() =>
      new GetRequestValidatorRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRequestValidatorRequest &&
        restApiId == other.restApiId &&
        requestValidatorId == other.requestValidatorId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, requestValidatorId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetRequestValidatorRequestBuilder
    implements
        Builder<GetRequestValidatorRequest, GetRequestValidatorRequestBuilder> {
  _$GetRequestValidatorRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _requestValidatorId;
  String? get requestValidatorId => _$this._requestValidatorId;
  set requestValidatorId(String? requestValidatorId) =>
      _$this._requestValidatorId = requestValidatorId;

  GetRequestValidatorRequestBuilder();

  GetRequestValidatorRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _requestValidatorId = $v.requestValidatorId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetRequestValidatorRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRequestValidatorRequest;
  }

  @override
  void update(void Function(GetRequestValidatorRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRequestValidatorRequest build() => _build();

  _$GetRequestValidatorRequest _build() {
    final _$result = _$v ??
        new _$GetRequestValidatorRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetRequestValidatorRequest', 'restApiId'),
            requestValidatorId: BuiltValueNullFieldError.checkNotNull(
                requestValidatorId,
                r'GetRequestValidatorRequest',
                'requestValidatorId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetRequestValidatorRequestPayload
    extends GetRequestValidatorRequestPayload {
  factory _$GetRequestValidatorRequestPayload(
          [void Function(GetRequestValidatorRequestPayloadBuilder)? updates]) =>
      (new GetRequestValidatorRequestPayloadBuilder()..update(updates))
          ._build();

  _$GetRequestValidatorRequestPayload._() : super._();

  @override
  GetRequestValidatorRequestPayload rebuild(
          void Function(GetRequestValidatorRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRequestValidatorRequestPayloadBuilder toBuilder() =>
      new GetRequestValidatorRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRequestValidatorRequestPayload;
  }

  @override
  int get hashCode {
    return 996646658;
  }
}

class GetRequestValidatorRequestPayloadBuilder
    implements
        Builder<GetRequestValidatorRequestPayload,
            GetRequestValidatorRequestPayloadBuilder> {
  _$GetRequestValidatorRequestPayload? _$v;

  GetRequestValidatorRequestPayloadBuilder();

  @override
  void replace(GetRequestValidatorRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRequestValidatorRequestPayload;
  }

  @override
  void update(
      void Function(GetRequestValidatorRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRequestValidatorRequestPayload build() => _build();

  _$GetRequestValidatorRequestPayload _build() {
    final _$result = _$v ?? new _$GetRequestValidatorRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
