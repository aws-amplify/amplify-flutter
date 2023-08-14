// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_key_pairs_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeKeyPairsRequest extends DescribeKeyPairsRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final _i3.BuiltList<String>? keyNames;
  @override
  final _i3.BuiltList<String>? keyPairIds;
  @override
  final bool dryRun;
  @override
  final bool includePublicKey;

  factory _$DescribeKeyPairsRequest(
          [void Function(DescribeKeyPairsRequestBuilder)? updates]) =>
      (new DescribeKeyPairsRequestBuilder()..update(updates))._build();

  _$DescribeKeyPairsRequest._(
      {this.filters,
      this.keyNames,
      this.keyPairIds,
      required this.dryRun,
      required this.includePublicKey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeKeyPairsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        includePublicKey, r'DescribeKeyPairsRequest', 'includePublicKey');
  }

  @override
  DescribeKeyPairsRequest rebuild(
          void Function(DescribeKeyPairsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeKeyPairsRequestBuilder toBuilder() =>
      new DescribeKeyPairsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeKeyPairsRequest &&
        filters == other.filters &&
        keyNames == other.keyNames &&
        keyPairIds == other.keyPairIds &&
        dryRun == other.dryRun &&
        includePublicKey == other.includePublicKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, keyNames.hashCode);
    _$hash = $jc(_$hash, keyPairIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, includePublicKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeKeyPairsRequestBuilder
    implements
        Builder<DescribeKeyPairsRequest, DescribeKeyPairsRequestBuilder> {
  _$DescribeKeyPairsRequest? _$v;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  _i3.ListBuilder<String>? _keyNames;
  _i3.ListBuilder<String> get keyNames =>
      _$this._keyNames ??= new _i3.ListBuilder<String>();
  set keyNames(_i3.ListBuilder<String>? keyNames) =>
      _$this._keyNames = keyNames;

  _i3.ListBuilder<String>? _keyPairIds;
  _i3.ListBuilder<String> get keyPairIds =>
      _$this._keyPairIds ??= new _i3.ListBuilder<String>();
  set keyPairIds(_i3.ListBuilder<String>? keyPairIds) =>
      _$this._keyPairIds = keyPairIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  bool? _includePublicKey;
  bool? get includePublicKey => _$this._includePublicKey;
  set includePublicKey(bool? includePublicKey) =>
      _$this._includePublicKey = includePublicKey;

  DescribeKeyPairsRequestBuilder() {
    DescribeKeyPairsRequest._init(this);
  }

  DescribeKeyPairsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _keyNames = $v.keyNames?.toBuilder();
      _keyPairIds = $v.keyPairIds?.toBuilder();
      _dryRun = $v.dryRun;
      _includePublicKey = $v.includePublicKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeKeyPairsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeKeyPairsRequest;
  }

  @override
  void update(void Function(DescribeKeyPairsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeKeyPairsRequest build() => _build();

  _$DescribeKeyPairsRequest _build() {
    _$DescribeKeyPairsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeKeyPairsRequest._(
              filters: _filters?.build(),
              keyNames: _keyNames?.build(),
              keyPairIds: _keyPairIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeKeyPairsRequest', 'dryRun'),
              includePublicKey: BuiltValueNullFieldError.checkNotNull(
                  includePublicKey,
                  r'DescribeKeyPairsRequest',
                  'includePublicKey'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'keyNames';
        _keyNames?.build();
        _$failedField = 'keyPairIds';
        _keyPairIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeKeyPairsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
