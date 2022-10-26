// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.cors_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CorsConfiguration extends CorsConfiguration {
  @override
  final _i3.BuiltList<_i2.CorsRule> corsRules;

  factory _$CorsConfiguration(
          [void Function(CorsConfigurationBuilder)? updates]) =>
      (new CorsConfigurationBuilder()..update(updates))._build();

  _$CorsConfiguration._({required this.corsRules}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        corsRules, r'CorsConfiguration', 'corsRules');
  }

  @override
  CorsConfiguration rebuild(void Function(CorsConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CorsConfigurationBuilder toBuilder() =>
      new CorsConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorsConfiguration && corsRules == other.corsRules;
  }

  @override
  int get hashCode {
    return $jf($jc(0, corsRules.hashCode));
  }
}

class CorsConfigurationBuilder
    implements Builder<CorsConfiguration, CorsConfigurationBuilder> {
  _$CorsConfiguration? _$v;

  _i3.ListBuilder<_i2.CorsRule>? _corsRules;
  _i3.ListBuilder<_i2.CorsRule> get corsRules =>
      _$this._corsRules ??= new _i3.ListBuilder<_i2.CorsRule>();
  set corsRules(_i3.ListBuilder<_i2.CorsRule>? corsRules) =>
      _$this._corsRules = corsRules;

  CorsConfigurationBuilder() {
    CorsConfiguration._init(this);
  }

  CorsConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _corsRules = $v.corsRules.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorsConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CorsConfiguration;
  }

  @override
  void update(void Function(CorsConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CorsConfiguration build() => _build();

  _$CorsConfiguration _build() {
    _$CorsConfiguration _$result;
    try {
      _$result = _$v ?? new _$CorsConfiguration._(corsRules: corsRules.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'corsRules';
        corsRules.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CorsConfiguration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
