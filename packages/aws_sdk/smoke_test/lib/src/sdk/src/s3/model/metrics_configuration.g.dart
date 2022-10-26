// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.metrics_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetricsConfiguration extends MetricsConfiguration {
  @override
  final _i2.MetricsFilter? filter;
  @override
  final String id;

  factory _$MetricsConfiguration(
          [void Function(MetricsConfigurationBuilder)? updates]) =>
      (new MetricsConfigurationBuilder()..update(updates))._build();

  _$MetricsConfiguration._({this.filter, required this.id}) : super._() {
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
        filter == other.filter &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, filter.hashCode), id.hashCode));
  }
}

class MetricsConfigurationBuilder
    implements Builder<MetricsConfiguration, MetricsConfigurationBuilder> {
  _$MetricsConfiguration? _$v;

  _i2.MetricsFilter? _filter;
  _i2.MetricsFilter? get filter => _$this._filter;
  set filter(_i2.MetricsFilter? filter) => _$this._filter = filter;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  MetricsConfigurationBuilder() {
    MetricsConfiguration._init(this);
  }

  MetricsConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filter = $v.filter;
      _id = $v.id;
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
            filter: filter,
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'MetricsConfiguration', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
