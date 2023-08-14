// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_spot_instance_requests_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelSpotInstanceRequestsRequest
    extends CancelSpotInstanceRequestsRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? spotInstanceRequestIds;

  factory _$CancelSpotInstanceRequestsRequest(
          [void Function(CancelSpotInstanceRequestsRequestBuilder)? updates]) =>
      (new CancelSpotInstanceRequestsRequestBuilder()..update(updates))
          ._build();

  _$CancelSpotInstanceRequestsRequest._(
      {required this.dryRun, this.spotInstanceRequestIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CancelSpotInstanceRequestsRequest', 'dryRun');
  }

  @override
  CancelSpotInstanceRequestsRequest rebuild(
          void Function(CancelSpotInstanceRequestsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelSpotInstanceRequestsRequestBuilder toBuilder() =>
      new CancelSpotInstanceRequestsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelSpotInstanceRequestsRequest &&
        dryRun == other.dryRun &&
        spotInstanceRequestIds == other.spotInstanceRequestIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, spotInstanceRequestIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CancelSpotInstanceRequestsRequestBuilder
    implements
        Builder<CancelSpotInstanceRequestsRequest,
            CancelSpotInstanceRequestsRequestBuilder> {
  _$CancelSpotInstanceRequestsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _spotInstanceRequestIds;
  _i3.ListBuilder<String> get spotInstanceRequestIds =>
      _$this._spotInstanceRequestIds ??= new _i3.ListBuilder<String>();
  set spotInstanceRequestIds(_i3.ListBuilder<String>? spotInstanceRequestIds) =>
      _$this._spotInstanceRequestIds = spotInstanceRequestIds;

  CancelSpotInstanceRequestsRequestBuilder() {
    CancelSpotInstanceRequestsRequest._init(this);
  }

  CancelSpotInstanceRequestsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _spotInstanceRequestIds = $v.spotInstanceRequestIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelSpotInstanceRequestsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelSpotInstanceRequestsRequest;
  }

  @override
  void update(
      void Function(CancelSpotInstanceRequestsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelSpotInstanceRequestsRequest build() => _build();

  _$CancelSpotInstanceRequestsRequest _build() {
    _$CancelSpotInstanceRequestsRequest _$result;
    try {
      _$result = _$v ??
          new _$CancelSpotInstanceRequestsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CancelSpotInstanceRequestsRequest', 'dryRun'),
              spotInstanceRequestIds: _spotInstanceRequestIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'spotInstanceRequestIds';
        _spotInstanceRequestIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CancelSpotInstanceRequestsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
