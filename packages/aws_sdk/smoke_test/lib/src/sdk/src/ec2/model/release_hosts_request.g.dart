// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'release_hosts_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReleaseHostsRequest extends ReleaseHostsRequest {
  @override
  final _i3.BuiltList<String>? hostIds;

  factory _$ReleaseHostsRequest(
          [void Function(ReleaseHostsRequestBuilder)? updates]) =>
      (new ReleaseHostsRequestBuilder()..update(updates))._build();

  _$ReleaseHostsRequest._({this.hostIds}) : super._();

  @override
  ReleaseHostsRequest rebuild(
          void Function(ReleaseHostsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReleaseHostsRequestBuilder toBuilder() =>
      new ReleaseHostsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReleaseHostsRequest && hostIds == other.hostIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hostIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReleaseHostsRequestBuilder
    implements Builder<ReleaseHostsRequest, ReleaseHostsRequestBuilder> {
  _$ReleaseHostsRequest? _$v;

  _i3.ListBuilder<String>? _hostIds;
  _i3.ListBuilder<String> get hostIds =>
      _$this._hostIds ??= new _i3.ListBuilder<String>();
  set hostIds(_i3.ListBuilder<String>? hostIds) => _$this._hostIds = hostIds;

  ReleaseHostsRequestBuilder();

  ReleaseHostsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hostIds = $v.hostIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReleaseHostsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReleaseHostsRequest;
  }

  @override
  void update(void Function(ReleaseHostsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReleaseHostsRequest build() => _build();

  _$ReleaseHostsRequest _build() {
    _$ReleaseHostsRequest _$result;
    try {
      _$result = _$v ?? new _$ReleaseHostsRequest._(hostIds: _hostIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hostIds';
        _hostIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReleaseHostsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
