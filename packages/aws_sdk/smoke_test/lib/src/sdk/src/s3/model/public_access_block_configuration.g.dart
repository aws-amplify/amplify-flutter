// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.public_access_block_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PublicAccessBlockConfiguration extends PublicAccessBlockConfiguration {
  @override
  final bool? blockPublicAcls;
  @override
  final bool? blockPublicPolicy;
  @override
  final bool? ignorePublicAcls;
  @override
  final bool? restrictPublicBuckets;

  factory _$PublicAccessBlockConfiguration(
          [void Function(PublicAccessBlockConfigurationBuilder)? updates]) =>
      (new PublicAccessBlockConfigurationBuilder()..update(updates))._build();

  _$PublicAccessBlockConfiguration._(
      {this.blockPublicAcls,
      this.blockPublicPolicy,
      this.ignorePublicAcls,
      this.restrictPublicBuckets})
      : super._();

  @override
  PublicAccessBlockConfiguration rebuild(
          void Function(PublicAccessBlockConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PublicAccessBlockConfigurationBuilder toBuilder() =>
      new PublicAccessBlockConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PublicAccessBlockConfiguration &&
        blockPublicAcls == other.blockPublicAcls &&
        blockPublicPolicy == other.blockPublicPolicy &&
        ignorePublicAcls == other.ignorePublicAcls &&
        restrictPublicBuckets == other.restrictPublicBuckets;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, blockPublicAcls.hashCode), blockPublicPolicy.hashCode),
            ignorePublicAcls.hashCode),
        restrictPublicBuckets.hashCode));
  }
}

class PublicAccessBlockConfigurationBuilder
    implements
        Builder<PublicAccessBlockConfiguration,
            PublicAccessBlockConfigurationBuilder> {
  _$PublicAccessBlockConfiguration? _$v;

  bool? _blockPublicAcls;
  bool? get blockPublicAcls => _$this._blockPublicAcls;
  set blockPublicAcls(bool? blockPublicAcls) =>
      _$this._blockPublicAcls = blockPublicAcls;

  bool? _blockPublicPolicy;
  bool? get blockPublicPolicy => _$this._blockPublicPolicy;
  set blockPublicPolicy(bool? blockPublicPolicy) =>
      _$this._blockPublicPolicy = blockPublicPolicy;

  bool? _ignorePublicAcls;
  bool? get ignorePublicAcls => _$this._ignorePublicAcls;
  set ignorePublicAcls(bool? ignorePublicAcls) =>
      _$this._ignorePublicAcls = ignorePublicAcls;

  bool? _restrictPublicBuckets;
  bool? get restrictPublicBuckets => _$this._restrictPublicBuckets;
  set restrictPublicBuckets(bool? restrictPublicBuckets) =>
      _$this._restrictPublicBuckets = restrictPublicBuckets;

  PublicAccessBlockConfigurationBuilder() {
    PublicAccessBlockConfiguration._init(this);
  }

  PublicAccessBlockConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blockPublicAcls = $v.blockPublicAcls;
      _blockPublicPolicy = $v.blockPublicPolicy;
      _ignorePublicAcls = $v.ignorePublicAcls;
      _restrictPublicBuckets = $v.restrictPublicBuckets;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PublicAccessBlockConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PublicAccessBlockConfiguration;
  }

  @override
  void update(void Function(PublicAccessBlockConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PublicAccessBlockConfiguration build() => _build();

  _$PublicAccessBlockConfiguration _build() {
    final _$result = _$v ??
        new _$PublicAccessBlockConfiguration._(
            blockPublicAcls: blockPublicAcls,
            blockPublicPolicy: blockPublicPolicy,
            ignorePublicAcls: ignorePublicAcls,
            restrictPublicBuckets: restrictPublicBuckets);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
