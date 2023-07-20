// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_summary_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TemplateSummaryConfig extends TemplateSummaryConfig {
  @override
  final bool? treatUnrecognizedResourceTypesAsWarnings;

  factory _$TemplateSummaryConfig(
          [void Function(TemplateSummaryConfigBuilder)? updates]) =>
      (new TemplateSummaryConfigBuilder()..update(updates))._build();

  _$TemplateSummaryConfig._({this.treatUnrecognizedResourceTypesAsWarnings})
      : super._();

  @override
  TemplateSummaryConfig rebuild(
          void Function(TemplateSummaryConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TemplateSummaryConfigBuilder toBuilder() =>
      new TemplateSummaryConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TemplateSummaryConfig &&
        treatUnrecognizedResourceTypesAsWarnings ==
            other.treatUnrecognizedResourceTypesAsWarnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, treatUnrecognizedResourceTypesAsWarnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TemplateSummaryConfigBuilder
    implements Builder<TemplateSummaryConfig, TemplateSummaryConfigBuilder> {
  _$TemplateSummaryConfig? _$v;

  bool? _treatUnrecognizedResourceTypesAsWarnings;
  bool? get treatUnrecognizedResourceTypesAsWarnings =>
      _$this._treatUnrecognizedResourceTypesAsWarnings;
  set treatUnrecognizedResourceTypesAsWarnings(
          bool? treatUnrecognizedResourceTypesAsWarnings) =>
      _$this._treatUnrecognizedResourceTypesAsWarnings =
          treatUnrecognizedResourceTypesAsWarnings;

  TemplateSummaryConfigBuilder();

  TemplateSummaryConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _treatUnrecognizedResourceTypesAsWarnings =
          $v.treatUnrecognizedResourceTypesAsWarnings;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TemplateSummaryConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TemplateSummaryConfig;
  }

  @override
  void update(void Function(TemplateSummaryConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TemplateSummaryConfig build() => _build();

  _$TemplateSummaryConfig _build() {
    final _$result = _$v ??
        new _$TemplateSummaryConfig._(
            treatUnrecognizedResourceTypesAsWarnings:
                treatUnrecognizedResourceTypesAsWarnings);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
