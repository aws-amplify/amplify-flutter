// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.encryption_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EncryptionConfiguration extends EncryptionConfiguration {
  @override
  final String? replicaKmsKeyId;

  factory _$EncryptionConfiguration(
          [void Function(EncryptionConfigurationBuilder)? updates]) =>
      (new EncryptionConfigurationBuilder()..update(updates))._build();

  _$EncryptionConfiguration._({this.replicaKmsKeyId}) : super._();

  @override
  EncryptionConfiguration rebuild(
          void Function(EncryptionConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EncryptionConfigurationBuilder toBuilder() =>
      new EncryptionConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EncryptionConfiguration &&
        replicaKmsKeyId == other.replicaKmsKeyId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, replicaKmsKeyId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EncryptionConfigurationBuilder
    implements
        Builder<EncryptionConfiguration, EncryptionConfigurationBuilder> {
  _$EncryptionConfiguration? _$v;

  String? _replicaKmsKeyId;
  String? get replicaKmsKeyId => _$this._replicaKmsKeyId;
  set replicaKmsKeyId(String? replicaKmsKeyId) =>
      _$this._replicaKmsKeyId = replicaKmsKeyId;

  EncryptionConfigurationBuilder() {
    EncryptionConfiguration._init(this);
  }

  EncryptionConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _replicaKmsKeyId = $v.replicaKmsKeyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EncryptionConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EncryptionConfiguration;
  }

  @override
  void update(void Function(EncryptionConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EncryptionConfiguration build() => _build();

  _$EncryptionConfiguration _build() {
    final _$result = _$v ??
        new _$EncryptionConfiguration._(replicaKmsKeyId: replicaKmsKeyId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
