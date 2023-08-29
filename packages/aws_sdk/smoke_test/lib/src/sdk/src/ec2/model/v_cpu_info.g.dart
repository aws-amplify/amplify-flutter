// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v_cpu_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VCpuInfo extends VCpuInfo {
  @override
  final int? defaultVCpus;
  @override
  final int? defaultCores;
  @override
  final int? defaultThreadsPerCore;
  @override
  final _i2.BuiltList<int>? validCores;
  @override
  final _i2.BuiltList<int>? validThreadsPerCore;

  factory _$VCpuInfo([void Function(VCpuInfoBuilder)? updates]) =>
      (new VCpuInfoBuilder()..update(updates))._build();

  _$VCpuInfo._(
      {this.defaultVCpus,
      this.defaultCores,
      this.defaultThreadsPerCore,
      this.validCores,
      this.validThreadsPerCore})
      : super._();

  @override
  VCpuInfo rebuild(void Function(VCpuInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VCpuInfoBuilder toBuilder() => new VCpuInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VCpuInfo &&
        defaultVCpus == other.defaultVCpus &&
        defaultCores == other.defaultCores &&
        defaultThreadsPerCore == other.defaultThreadsPerCore &&
        validCores == other.validCores &&
        validThreadsPerCore == other.validThreadsPerCore;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, defaultVCpus.hashCode);
    _$hash = $jc(_$hash, defaultCores.hashCode);
    _$hash = $jc(_$hash, defaultThreadsPerCore.hashCode);
    _$hash = $jc(_$hash, validCores.hashCode);
    _$hash = $jc(_$hash, validThreadsPerCore.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VCpuInfoBuilder implements Builder<VCpuInfo, VCpuInfoBuilder> {
  _$VCpuInfo? _$v;

  int? _defaultVCpus;
  int? get defaultVCpus => _$this._defaultVCpus;
  set defaultVCpus(int? defaultVCpus) => _$this._defaultVCpus = defaultVCpus;

  int? _defaultCores;
  int? get defaultCores => _$this._defaultCores;
  set defaultCores(int? defaultCores) => _$this._defaultCores = defaultCores;

  int? _defaultThreadsPerCore;
  int? get defaultThreadsPerCore => _$this._defaultThreadsPerCore;
  set defaultThreadsPerCore(int? defaultThreadsPerCore) =>
      _$this._defaultThreadsPerCore = defaultThreadsPerCore;

  _i2.ListBuilder<int>? _validCores;
  _i2.ListBuilder<int> get validCores =>
      _$this._validCores ??= new _i2.ListBuilder<int>();
  set validCores(_i2.ListBuilder<int>? validCores) =>
      _$this._validCores = validCores;

  _i2.ListBuilder<int>? _validThreadsPerCore;
  _i2.ListBuilder<int> get validThreadsPerCore =>
      _$this._validThreadsPerCore ??= new _i2.ListBuilder<int>();
  set validThreadsPerCore(_i2.ListBuilder<int>? validThreadsPerCore) =>
      _$this._validThreadsPerCore = validThreadsPerCore;

  VCpuInfoBuilder();

  VCpuInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _defaultVCpus = $v.defaultVCpus;
      _defaultCores = $v.defaultCores;
      _defaultThreadsPerCore = $v.defaultThreadsPerCore;
      _validCores = $v.validCores?.toBuilder();
      _validThreadsPerCore = $v.validThreadsPerCore?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VCpuInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VCpuInfo;
  }

  @override
  void update(void Function(VCpuInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VCpuInfo build() => _build();

  _$VCpuInfo _build() {
    _$VCpuInfo _$result;
    try {
      _$result = _$v ??
          new _$VCpuInfo._(
              defaultVCpus: defaultVCpus,
              defaultCores: defaultCores,
              defaultThreadsPerCore: defaultThreadsPerCore,
              validCores: _validCores?.build(),
              validThreadsPerCore: _validThreadsPerCore?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'validCores';
        _validCores?.build();
        _$failedField = 'validThreadsPerCore';
        _validThreadsPerCore?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VCpuInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
