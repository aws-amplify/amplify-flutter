// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.metrics_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetricsConfiguration extends MetricsConfiguration {
  @override
  final String id;
  @override
  final _i2.MetricsFilter? filter;

  factory _$MetricsConfiguration(
          [void Function(MetricsConfigurationBuilder)? updates]) =>
      (new MetricsConfigurationBuilder()..update(updates))._build();

  _$MetricsConfiguration._({required this.id, this.filter}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'MetricsConfiguration', 'id');
  }

  @override
  MetricsConfiguration rebuild(
          void Function(MetricsConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetricsConfigurationBuilder toBuilder() =>
      new MetricsConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetricsConfiguration &&
        id == other.id &&
        filter == other.filter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MetricsConfigurationBuilder
    implements Builder<MetricsConfiguration, MetricsConfigurationBuilder> {
  _$MetricsConfiguration? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i2.MetricsFilter? _filter;
  _i2.MetricsFilter? get filter => _$this._filter;
  set filter(_i2.MetricsFilter? filter) => _$this._filter = filter;

  MetricsConfigurationBuilder() {
    MetricsConfiguration._init(this);
  }

  MetricsConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _filter = $v.filter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetricsConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MetricsConfiguration;
  }

  @override
  void update(void Function(MetricsConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetricsConfiguration build() => _build();

  _$MetricsConfiguration _build() {
    final _$result = _$v ??
        new _$MetricsConfiguration._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'MetricsConfiguration', 'id'),
            filter: filter);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
