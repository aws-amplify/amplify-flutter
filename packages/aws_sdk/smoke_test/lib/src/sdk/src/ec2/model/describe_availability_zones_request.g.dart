// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_availability_zones_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAvailabilityZonesRequest
    extends DescribeAvailabilityZonesRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final _i3.BuiltList<String>? zoneNames;
  @override
  final _i3.BuiltList<String>? zoneIds;
  @override
  final bool allAvailabilityZones;
  @override
  final bool dryRun;

  factory _$DescribeAvailabilityZonesRequest(
          [void Function(DescribeAvailabilityZonesRequestBuilder)? updates]) =>
      (new DescribeAvailabilityZonesRequestBuilder()..update(updates))._build();

  _$DescribeAvailabilityZonesRequest._(
      {this.filters,
      this.zoneNames,
      this.zoneIds,
      required this.allAvailabilityZones,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(allAvailabilityZones,
        r'DescribeAvailabilityZonesRequest', 'allAvailabilityZones');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeAvailabilityZonesRequest', 'dryRun');
  }

  @override
  DescribeAvailabilityZonesRequest rebuild(
          void Function(DescribeAvailabilityZonesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAvailabilityZonesRequestBuilder toBuilder() =>
      new DescribeAvailabilityZonesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAvailabilityZonesRequest &&
        filters == other.filters &&
        zoneNames == other.zoneNames &&
        zoneIds == other.zoneIds &&
        allAvailabilityZones == other.allAvailabilityZones &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, zoneNames.hashCode);
    _$hash = $jc(_$hash, zoneIds.hashCode);
    _$hash = $jc(_$hash, allAvailabilityZones.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeAvailabilityZonesRequestBuilder
    implements
        Builder<DescribeAvailabilityZonesRequest,
            DescribeAvailabilityZonesRequestBuilder> {
  _$DescribeAvailabilityZonesRequest? _$v;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  _i3.ListBuilder<String>? _zoneNames;
  _i3.ListBuilder<String> get zoneNames =>
      _$this._zoneNames ??= new _i3.ListBuilder<String>();
  set zoneNames(_i3.ListBuilder<String>? zoneNames) =>
      _$this._zoneNames = zoneNames;

  _i3.ListBuilder<String>? _zoneIds;
  _i3.ListBuilder<String> get zoneIds =>
      _$this._zoneIds ??= new _i3.ListBuilder<String>();
  set zoneIds(_i3.ListBuilder<String>? zoneIds) => _$this._zoneIds = zoneIds;

  bool? _allAvailabilityZones;
  bool? get allAvailabilityZones => _$this._allAvailabilityZones;
  set allAvailabilityZones(bool? allAvailabilityZones) =>
      _$this._allAvailabilityZones = allAvailabilityZones;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeAvailabilityZonesRequestBuilder() {
    DescribeAvailabilityZonesRequest._init(this);
  }

  DescribeAvailabilityZonesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _zoneNames = $v.zoneNames?.toBuilder();
      _zoneIds = $v.zoneIds?.toBuilder();
      _allAvailabilityZones = $v.allAvailabilityZones;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAvailabilityZonesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAvailabilityZonesRequest;
  }

  @override
  void update(void Function(DescribeAvailabilityZonesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAvailabilityZonesRequest build() => _build();

  _$DescribeAvailabilityZonesRequest _build() {
    _$DescribeAvailabilityZonesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeAvailabilityZonesRequest._(
              filters: _filters?.build(),
              zoneNames: _zoneNames?.build(),
              zoneIds: _zoneIds?.build(),
              allAvailabilityZones: BuiltValueNullFieldError.checkNotNull(
                  allAvailabilityZones,
                  r'DescribeAvailabilityZonesRequest',
                  'allAvailabilityZones'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeAvailabilityZonesRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'zoneNames';
        _zoneNames?.build();
        _$failedField = 'zoneIds';
        _zoneIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeAvailabilityZonesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
