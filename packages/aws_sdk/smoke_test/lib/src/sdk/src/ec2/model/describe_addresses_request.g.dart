// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_addresses_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAddressesRequest extends DescribeAddressesRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final _i3.BuiltList<String>? publicIps;
  @override
  final _i3.BuiltList<String>? allocationIds;
  @override
  final bool dryRun;

  factory _$DescribeAddressesRequest(
          [void Function(DescribeAddressesRequestBuilder)? updates]) =>
      (new DescribeAddressesRequestBuilder()..update(updates))._build();

  _$DescribeAddressesRequest._(
      {this.filters, this.publicIps, this.allocationIds, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeAddressesRequest', 'dryRun');
  }

  @override
  DescribeAddressesRequest rebuild(
          void Function(DescribeAddressesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAddressesRequestBuilder toBuilder() =>
      new DescribeAddressesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAddressesRequest &&
        filters == other.filters &&
        publicIps == other.publicIps &&
        allocationIds == other.allocationIds &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, publicIps.hashCode);
    _$hash = $jc(_$hash, allocationIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeAddressesRequestBuilder
    implements
        Builder<DescribeAddressesRequest, DescribeAddressesRequestBuilder> {
  _$DescribeAddressesRequest? _$v;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  _i3.ListBuilder<String>? _publicIps;
  _i3.ListBuilder<String> get publicIps =>
      _$this._publicIps ??= new _i3.ListBuilder<String>();
  set publicIps(_i3.ListBuilder<String>? publicIps) =>
      _$this._publicIps = publicIps;

  _i3.ListBuilder<String>? _allocationIds;
  _i3.ListBuilder<String> get allocationIds =>
      _$this._allocationIds ??= new _i3.ListBuilder<String>();
  set allocationIds(_i3.ListBuilder<String>? allocationIds) =>
      _$this._allocationIds = allocationIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeAddressesRequestBuilder() {
    DescribeAddressesRequest._init(this);
  }

  DescribeAddressesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _publicIps = $v.publicIps?.toBuilder();
      _allocationIds = $v.allocationIds?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAddressesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAddressesRequest;
  }

  @override
  void update(void Function(DescribeAddressesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAddressesRequest build() => _build();

  _$DescribeAddressesRequest _build() {
    _$DescribeAddressesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeAddressesRequest._(
              filters: _filters?.build(),
              publicIps: _publicIps?.build(),
              allocationIds: _allocationIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeAddressesRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'publicIps';
        _publicIps?.build();
        _$failedField = 'allocationIds';
        _allocationIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeAddressesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
