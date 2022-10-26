// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.glacier_job_parameters;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GlacierJobParameters extends GlacierJobParameters {
  @override
  final _i2.Tier tier;

  factory _$GlacierJobParameters(
          [void Function(GlacierJobParametersBuilder)? updates]) =>
      (new GlacierJobParametersBuilder()..update(updates))._build();

  _$GlacierJobParameters._({required this.tier}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tier, r'GlacierJobParameters', 'tier');
  }

  @override
  GlacierJobParameters rebuild(
          void Function(GlacierJobParametersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlacierJobParametersBuilder toBuilder() =>
      new GlacierJobParametersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlacierJobParameters && tier == other.tier;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tier.hashCode));
  }
}

class GlacierJobParametersBuilder
    implements Builder<GlacierJobParameters, GlacierJobParametersBuilder> {
  _$GlacierJobParameters? _$v;

  _i2.Tier? _tier;
  _i2.Tier? get tier => _$this._tier;
  set tier(_i2.Tier? tier) => _$this._tier = tier;

  GlacierJobParametersBuilder() {
    GlacierJobParameters._init(this);
  }

  GlacierJobParametersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tier = $v.tier;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlacierJobParameters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlacierJobParameters;
  }

  @override
  void update(void Function(GlacierJobParametersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlacierJobParameters build() => _build();

  _$GlacierJobParameters _build() {
    final _$result = _$v ??
        new _$GlacierJobParameters._(
            tier: BuiltValueNullFieldError.checkNotNull(
                tier, r'GlacierJobParameters', 'tier'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
