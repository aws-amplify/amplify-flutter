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
    var _$hash = 0;
    _$hash = $jc(_$hash, tier.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
