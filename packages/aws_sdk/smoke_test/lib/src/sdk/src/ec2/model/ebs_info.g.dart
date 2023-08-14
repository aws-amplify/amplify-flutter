// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ebs_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EbsInfo extends EbsInfo {
  @override
  final EbsOptimizedSupport? ebsOptimizedSupport;
  @override
  final EbsEncryptionSupport? encryptionSupport;
  @override
  final EbsOptimizedInfo? ebsOptimizedInfo;
  @override
  final EbsNvmeSupport? nvmeSupport;

  factory _$EbsInfo([void Function(EbsInfoBuilder)? updates]) =>
      (new EbsInfoBuilder()..update(updates))._build();

  _$EbsInfo._(
      {this.ebsOptimizedSupport,
      this.encryptionSupport,
      this.ebsOptimizedInfo,
      this.nvmeSupport})
      : super._();

  @override
  EbsInfo rebuild(void Function(EbsInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EbsInfoBuilder toBuilder() => new EbsInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EbsInfo &&
        ebsOptimizedSupport == other.ebsOptimizedSupport &&
        encryptionSupport == other.encryptionSupport &&
        ebsOptimizedInfo == other.ebsOptimizedInfo &&
        nvmeSupport == other.nvmeSupport;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ebsOptimizedSupport.hashCode);
    _$hash = $jc(_$hash, encryptionSupport.hashCode);
    _$hash = $jc(_$hash, ebsOptimizedInfo.hashCode);
    _$hash = $jc(_$hash, nvmeSupport.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EbsInfoBuilder implements Builder<EbsInfo, EbsInfoBuilder> {
  _$EbsInfo? _$v;

  EbsOptimizedSupport? _ebsOptimizedSupport;
  EbsOptimizedSupport? get ebsOptimizedSupport => _$this._ebsOptimizedSupport;
  set ebsOptimizedSupport(EbsOptimizedSupport? ebsOptimizedSupport) =>
      _$this._ebsOptimizedSupport = ebsOptimizedSupport;

  EbsEncryptionSupport? _encryptionSupport;
  EbsEncryptionSupport? get encryptionSupport => _$this._encryptionSupport;
  set encryptionSupport(EbsEncryptionSupport? encryptionSupport) =>
      _$this._encryptionSupport = encryptionSupport;

  EbsOptimizedInfoBuilder? _ebsOptimizedInfo;
  EbsOptimizedInfoBuilder get ebsOptimizedInfo =>
      _$this._ebsOptimizedInfo ??= new EbsOptimizedInfoBuilder();
  set ebsOptimizedInfo(EbsOptimizedInfoBuilder? ebsOptimizedInfo) =>
      _$this._ebsOptimizedInfo = ebsOptimizedInfo;

  EbsNvmeSupport? _nvmeSupport;
  EbsNvmeSupport? get nvmeSupport => _$this._nvmeSupport;
  set nvmeSupport(EbsNvmeSupport? nvmeSupport) =>
      _$this._nvmeSupport = nvmeSupport;

  EbsInfoBuilder();

  EbsInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ebsOptimizedSupport = $v.ebsOptimizedSupport;
      _encryptionSupport = $v.encryptionSupport;
      _ebsOptimizedInfo = $v.ebsOptimizedInfo?.toBuilder();
      _nvmeSupport = $v.nvmeSupport;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EbsInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EbsInfo;
  }

  @override
  void update(void Function(EbsInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EbsInfo build() => _build();

  _$EbsInfo _build() {
    _$EbsInfo _$result;
    try {
      _$result = _$v ??
          new _$EbsInfo._(
              ebsOptimizedSupport: ebsOptimizedSupport,
              encryptionSupport: encryptionSupport,
              ebsOptimizedInfo: _ebsOptimizedInfo?.build(),
              nvmeSupport: nvmeSupport);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ebsOptimizedInfo';
        _ebsOptimizedInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EbsInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
