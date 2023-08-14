// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'traffic_mirror_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrafficMirrorFilter extends TrafficMirrorFilter {
  @override
  final String? trafficMirrorFilterId;
  @override
  final _i2.BuiltList<TrafficMirrorFilterRule>? ingressFilterRules;
  @override
  final _i2.BuiltList<TrafficMirrorFilterRule>? egressFilterRules;
  @override
  final _i2.BuiltList<TrafficMirrorNetworkService>? networkServices;
  @override
  final String? description;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$TrafficMirrorFilter(
          [void Function(TrafficMirrorFilterBuilder)? updates]) =>
      (new TrafficMirrorFilterBuilder()..update(updates))._build();

  _$TrafficMirrorFilter._(
      {this.trafficMirrorFilterId,
      this.ingressFilterRules,
      this.egressFilterRules,
      this.networkServices,
      this.description,
      this.tags})
      : super._();

  @override
  TrafficMirrorFilter rebuild(
          void Function(TrafficMirrorFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrafficMirrorFilterBuilder toBuilder() =>
      new TrafficMirrorFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrafficMirrorFilter &&
        trafficMirrorFilterId == other.trafficMirrorFilterId &&
        ingressFilterRules == other.ingressFilterRules &&
        egressFilterRules == other.egressFilterRules &&
        networkServices == other.networkServices &&
        description == other.description &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorFilterId.hashCode);
    _$hash = $jc(_$hash, ingressFilterRules.hashCode);
    _$hash = $jc(_$hash, egressFilterRules.hashCode);
    _$hash = $jc(_$hash, networkServices.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TrafficMirrorFilterBuilder
    implements Builder<TrafficMirrorFilter, TrafficMirrorFilterBuilder> {
  _$TrafficMirrorFilter? _$v;

  String? _trafficMirrorFilterId;
  String? get trafficMirrorFilterId => _$this._trafficMirrorFilterId;
  set trafficMirrorFilterId(String? trafficMirrorFilterId) =>
      _$this._trafficMirrorFilterId = trafficMirrorFilterId;

  _i2.ListBuilder<TrafficMirrorFilterRule>? _ingressFilterRules;
  _i2.ListBuilder<TrafficMirrorFilterRule> get ingressFilterRules =>
      _$this._ingressFilterRules ??=
          new _i2.ListBuilder<TrafficMirrorFilterRule>();
  set ingressFilterRules(
          _i2.ListBuilder<TrafficMirrorFilterRule>? ingressFilterRules) =>
      _$this._ingressFilterRules = ingressFilterRules;

  _i2.ListBuilder<TrafficMirrorFilterRule>? _egressFilterRules;
  _i2.ListBuilder<TrafficMirrorFilterRule> get egressFilterRules =>
      _$this._egressFilterRules ??=
          new _i2.ListBuilder<TrafficMirrorFilterRule>();
  set egressFilterRules(
          _i2.ListBuilder<TrafficMirrorFilterRule>? egressFilterRules) =>
      _$this._egressFilterRules = egressFilterRules;

  _i2.ListBuilder<TrafficMirrorNetworkService>? _networkServices;
  _i2.ListBuilder<TrafficMirrorNetworkService> get networkServices =>
      _$this._networkServices ??=
          new _i2.ListBuilder<TrafficMirrorNetworkService>();
  set networkServices(
          _i2.ListBuilder<TrafficMirrorNetworkService>? networkServices) =>
      _$this._networkServices = networkServices;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  TrafficMirrorFilterBuilder();

  TrafficMirrorFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorFilterId = $v.trafficMirrorFilterId;
      _ingressFilterRules = $v.ingressFilterRules?.toBuilder();
      _egressFilterRules = $v.egressFilterRules?.toBuilder();
      _networkServices = $v.networkServices?.toBuilder();
      _description = $v.description;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrafficMirrorFilter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrafficMirrorFilter;
  }

  @override
  void update(void Function(TrafficMirrorFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrafficMirrorFilter build() => _build();

  _$TrafficMirrorFilter _build() {
    _$TrafficMirrorFilter _$result;
    try {
      _$result = _$v ??
          new _$TrafficMirrorFilter._(
              trafficMirrorFilterId: trafficMirrorFilterId,
              ingressFilterRules: _ingressFilterRules?.build(),
              egressFilterRules: _egressFilterRules?.build(),
              networkServices: _networkServices?.build(),
              description: description,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ingressFilterRules';
        _ingressFilterRules?.build();
        _$failedField = 'egressFilterRules';
        _egressFilterRules?.build();
        _$failedField = 'networkServices';
        _networkServices?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TrafficMirrorFilter', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
