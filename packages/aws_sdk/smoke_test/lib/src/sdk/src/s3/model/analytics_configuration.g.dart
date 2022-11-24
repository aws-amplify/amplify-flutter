// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.analytics_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalyticsConfiguration extends AnalyticsConfiguration {
  @override
  final _i2.AnalyticsFilter? filter;
  @override
  final String id;
  @override
  final _i3.StorageClassAnalysis storageClassAnalysis;

  factory _$AnalyticsConfiguration(
          [void Function(AnalyticsConfigurationBuilder)? updates]) =>
      (new AnalyticsConfigurationBuilder()..update(updates))._build();

  _$AnalyticsConfiguration._(
      {this.filter, required this.id, required this.storageClassAnalysis})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'AnalyticsConfiguration', 'id');
    BuiltValueNullFieldError.checkNotNull(storageClassAnalysis,
        r'AnalyticsConfiguration', 'storageClassAnalysis');
  }

  @override
  AnalyticsConfiguration rebuild(
          void Function(AnalyticsConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalyticsConfigurationBuilder toBuilder() =>
      new AnalyticsConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalyticsConfiguration &&
        filter == other.filter &&
        id == other.id &&
        storageClassAnalysis == other.storageClassAnalysis;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, filter.hashCode), id.hashCode),
        storageClassAnalysis.hashCode));
  }
}

class AnalyticsConfigurationBuilder
    implements Builder<AnalyticsConfiguration, AnalyticsConfigurationBuilder> {
  _$AnalyticsConfiguration? _$v;

  _i2.AnalyticsFilter? _filter;
  _i2.AnalyticsFilter? get filter => _$this._filter;
  set filter(_i2.AnalyticsFilter? filter) => _$this._filter = filter;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i3.StorageClassAnalysisBuilder? _storageClassAnalysis;
  _i3.StorageClassAnalysisBuilder get storageClassAnalysis =>
      _$this._storageClassAnalysis ??= new _i3.StorageClassAnalysisBuilder();
  set storageClassAnalysis(
          _i3.StorageClassAnalysisBuilder? storageClassAnalysis) =>
      _$this._storageClassAnalysis = storageClassAnalysis;

  AnalyticsConfigurationBuilder() {
    AnalyticsConfiguration._init(this);
  }

  AnalyticsConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filter = $v.filter;
      _id = $v.id;
      _storageClassAnalysis = $v.storageClassAnalysis.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalyticsConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnalyticsConfiguration;
  }

  @override
  void update(void Function(AnalyticsConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalyticsConfiguration build() => _build();

  _$AnalyticsConfiguration _build() {
    _$AnalyticsConfiguration _$result;
    try {
      _$result = _$v ??
          new _$AnalyticsConfiguration._(
              filter: filter,
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'AnalyticsConfiguration', 'id'),
              storageClassAnalysis: storageClassAnalysis.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'storageClassAnalysis';
        storageClassAnalysis.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AnalyticsConfiguration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
