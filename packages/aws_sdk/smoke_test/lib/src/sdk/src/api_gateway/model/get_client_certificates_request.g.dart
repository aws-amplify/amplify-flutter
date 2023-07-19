// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_client_certificates_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetClientCertificatesRequest extends GetClientCertificatesRequest {
  @override
  final String? position;
  @override
  final int? limit;

  factory _$GetClientCertificatesRequest(
          [void Function(GetClientCertificatesRequestBuilder)? updates]) =>
      (new GetClientCertificatesRequestBuilder()..update(updates))._build();

  _$GetClientCertificatesRequest._({this.position, this.limit}) : super._();

  @override
  GetClientCertificatesRequest rebuild(
          void Function(GetClientCertificatesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetClientCertificatesRequestBuilder toBuilder() =>
      new GetClientCertificatesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetClientCertificatesRequest &&
        position == other.position &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetClientCertificatesRequestBuilder
    implements
        Builder<GetClientCertificatesRequest,
            GetClientCertificatesRequestBuilder> {
  _$GetClientCertificatesRequest? _$v;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GetClientCertificatesRequestBuilder();

  GetClientCertificatesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _position = $v.position;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetClientCertificatesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetClientCertificatesRequest;
  }

  @override
  void update(void Function(GetClientCertificatesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetClientCertificatesRequest build() => _build();

  _$GetClientCertificatesRequest _build() {
    final _$result = _$v ??
        new _$GetClientCertificatesRequest._(position: position, limit: limit);
    replace(_$result);
    return _$result;
  }
}

class _$GetClientCertificatesRequestPayload
    extends GetClientCertificatesRequestPayload {
  factory _$GetClientCertificatesRequestPayload(
          [void Function(GetClientCertificatesRequestPayloadBuilder)?
              updates]) =>
      (new GetClientCertificatesRequestPayloadBuilder()..update(updates))
          ._build();

  _$GetClientCertificatesRequestPayload._() : super._();

  @override
  GetClientCertificatesRequestPayload rebuild(
          void Function(GetClientCertificatesRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetClientCertificatesRequestPayloadBuilder toBuilder() =>
      new GetClientCertificatesRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetClientCertificatesRequestPayload;
  }

  @override
  int get hashCode {
    return 371209336;
  }
}

class GetClientCertificatesRequestPayloadBuilder
    implements
        Builder<GetClientCertificatesRequestPayload,
            GetClientCertificatesRequestPayloadBuilder> {
  _$GetClientCertificatesRequestPayload? _$v;

  GetClientCertificatesRequestPayloadBuilder();

  @override
  void replace(GetClientCertificatesRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetClientCertificatesRequestPayload;
  }

  @override
  void update(
      void Function(GetClientCertificatesRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetClientCertificatesRequestPayload build() => _build();

  _$GetClientCertificatesRequestPayload _build() {
    final _$result = _$v ?? new _$GetClientCertificatesRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
