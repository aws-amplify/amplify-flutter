// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalyticsConfiguration extends AnalyticsConfiguration {
  @override
  final String id;
  @override
  final AnalyticsFilter? filter;
  @override
  final StorageClassAnalysis storageClassAnalysis;

  factory _$AnalyticsConfiguration(
          [void Function(AnalyticsConfigurationBuilder)? updates]) =>
      (new AnalyticsConfigurationBuilder()..update(updates))._build();

  _$AnalyticsConfiguration._(
      {required this.id, this.filter, required this.storageClassAnalysis})
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
        id == other.id &&
        filter == other.filter &&
        storageClassAnalysis == other.storageClassAnalysis;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, storageClassAnalysis.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AnalyticsConfigurationBuilder
    implements Builder<AnalyticsConfiguration, AnalyticsConfigurationBuilder> {
  _$AnalyticsConfiguration? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  AnalyticsFilter? _filter;
  AnalyticsFilter? get filter => _$this._filter;
  set filter(AnalyticsFilter? filter) => _$this._filter = filter;

  StorageClassAnalysisBuilder? _storageClassAnalysis;
  StorageClassAnalysisBuilder get storageClassAnalysis =>
      _$this._storageClassAnalysis ??= new StorageClassAnalysisBuilder();
  set storageClassAnalysis(StorageClassAnalysisBuilder? storageClassAnalysis) =>
      _$this._storageClassAnalysis = storageClassAnalysis;

  AnalyticsConfigurationBuilder();

  AnalyticsConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _filter = $v.filter;
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
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'AnalyticsConfiguration', 'id'),
              filter: filter,
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
