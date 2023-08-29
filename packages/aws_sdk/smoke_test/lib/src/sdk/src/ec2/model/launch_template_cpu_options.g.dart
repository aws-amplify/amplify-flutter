// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_cpu_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateCpuOptions extends LaunchTemplateCpuOptions {
  @override
  final int coreCount;
  @override
  final int threadsPerCore;
  @override
  final AmdSevSnpSpecification? amdSevSnp;

  factory _$LaunchTemplateCpuOptions(
          [void Function(LaunchTemplateCpuOptionsBuilder)? updates]) =>
      (new LaunchTemplateCpuOptionsBuilder()..update(updates))._build();

  _$LaunchTemplateCpuOptions._(
      {required this.coreCount, required this.threadsPerCore, this.amdSevSnp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        coreCount, r'LaunchTemplateCpuOptions', 'coreCount');
    BuiltValueNullFieldError.checkNotNull(
        threadsPerCore, r'LaunchTemplateCpuOptions', 'threadsPerCore');
  }

  @override
  LaunchTemplateCpuOptions rebuild(
          void Function(LaunchTemplateCpuOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateCpuOptionsBuilder toBuilder() =>
      new LaunchTemplateCpuOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateCpuOptions &&
        coreCount == other.coreCount &&
        threadsPerCore == other.threadsPerCore &&
        amdSevSnp == other.amdSevSnp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, coreCount.hashCode);
    _$hash = $jc(_$hash, threadsPerCore.hashCode);
    _$hash = $jc(_$hash, amdSevSnp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchTemplateCpuOptionsBuilder
    implements
        Builder<LaunchTemplateCpuOptions, LaunchTemplateCpuOptionsBuilder> {
  _$LaunchTemplateCpuOptions? _$v;

  int? _coreCount;
  int? get coreCount => _$this._coreCount;
  set coreCount(int? coreCount) => _$this._coreCount = coreCount;

  int? _threadsPerCore;
  int? get threadsPerCore => _$this._threadsPerCore;
  set threadsPerCore(int? threadsPerCore) =>
      _$this._threadsPerCore = threadsPerCore;

  AmdSevSnpSpecification? _amdSevSnp;
  AmdSevSnpSpecification? get amdSevSnp => _$this._amdSevSnp;
  set amdSevSnp(AmdSevSnpSpecification? amdSevSnp) =>
      _$this._amdSevSnp = amdSevSnp;

  LaunchTemplateCpuOptionsBuilder() {
    LaunchTemplateCpuOptions._init(this);
  }

  LaunchTemplateCpuOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coreCount = $v.coreCount;
      _threadsPerCore = $v.threadsPerCore;
      _amdSevSnp = $v.amdSevSnp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateCpuOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateCpuOptions;
  }

  @override
  void update(void Function(LaunchTemplateCpuOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateCpuOptions build() => _build();

  _$LaunchTemplateCpuOptions _build() {
    final _$result = _$v ??
        new _$LaunchTemplateCpuOptions._(
            coreCount: BuiltValueNullFieldError.checkNotNull(
                coreCount, r'LaunchTemplateCpuOptions', 'coreCount'),
            threadsPerCore: BuiltValueNullFieldError.checkNotNull(
                threadsPerCore, r'LaunchTemplateCpuOptions', 'threadsPerCore'),
            amdSevSnp: amdSevSnp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
