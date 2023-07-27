// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_access_block_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PublicAccessBlockConfiguration extends PublicAccessBlockConfiguration {
  @override
  final bool? blockPublicAcls;
  @override
  final bool? ignorePublicAcls;
  @override
  final bool? blockPublicPolicy;
  @override
  final bool? restrictPublicBuckets;

  factory _$PublicAccessBlockConfiguration(
          [void Function(PublicAccessBlockConfigurationBuilder)? updates]) =>
      (new PublicAccessBlockConfigurationBuilder()..update(updates))._build();

  _$PublicAccessBlockConfiguration._(
      {this.blockPublicAcls,
      this.ignorePublicAcls,
      this.blockPublicPolicy,
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
        ignorePublicAcls == other.ignorePublicAcls &&
        blockPublicPolicy == other.blockPublicPolicy &&
        restrictPublicBuckets == other.restrictPublicBuckets;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, blockPublicAcls.hashCode);
    _$hash = $jc(_$hash, ignorePublicAcls.hashCode);
    _$hash = $jc(_$hash, blockPublicPolicy.hashCode);
    _$hash = $jc(_$hash, restrictPublicBuckets.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

  bool? _ignorePublicAcls;
  bool? get ignorePublicAcls => _$this._ignorePublicAcls;
  set ignorePublicAcls(bool? ignorePublicAcls) =>
      _$this._ignorePublicAcls = ignorePublicAcls;

  bool? _blockPublicPolicy;
  bool? get blockPublicPolicy => _$this._blockPublicPolicy;
  set blockPublicPolicy(bool? blockPublicPolicy) =>
      _$this._blockPublicPolicy = blockPublicPolicy;

  bool? _restrictPublicBuckets;
  bool? get restrictPublicBuckets => _$this._restrictPublicBuckets;
  set restrictPublicBuckets(bool? restrictPublicBuckets) =>
      _$this._restrictPublicBuckets = restrictPublicBuckets;

  PublicAccessBlockConfigurationBuilder();

  PublicAccessBlockConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blockPublicAcls = $v.blockPublicAcls;
      _ignorePublicAcls = $v.ignorePublicAcls;
      _blockPublicPolicy = $v.blockPublicPolicy;
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
            ignorePublicAcls: ignorePublicAcls,
            blockPublicPolicy: blockPublicPolicy,
            restrictPublicBuckets: restrictPublicBuckets);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
