// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fpga_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FpgaInfo extends FpgaInfo {
  @override
  final _i2.BuiltList<FpgaDeviceInfo>? fpgas;
  @override
  final int? totalFpgaMemoryInMib;

  factory _$FpgaInfo([void Function(FpgaInfoBuilder)? updates]) =>
      (new FpgaInfoBuilder()..update(updates))._build();

  _$FpgaInfo._({this.fpgas, this.totalFpgaMemoryInMib}) : super._();

  @override
  FpgaInfo rebuild(void Function(FpgaInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FpgaInfoBuilder toBuilder() => new FpgaInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FpgaInfo &&
        fpgas == other.fpgas &&
        totalFpgaMemoryInMib == other.totalFpgaMemoryInMib;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fpgas.hashCode);
    _$hash = $jc(_$hash, totalFpgaMemoryInMib.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FpgaInfoBuilder implements Builder<FpgaInfo, FpgaInfoBuilder> {
  _$FpgaInfo? _$v;

  _i2.ListBuilder<FpgaDeviceInfo>? _fpgas;
  _i2.ListBuilder<FpgaDeviceInfo> get fpgas =>
      _$this._fpgas ??= new _i2.ListBuilder<FpgaDeviceInfo>();
  set fpgas(_i2.ListBuilder<FpgaDeviceInfo>? fpgas) => _$this._fpgas = fpgas;

  int? _totalFpgaMemoryInMib;
  int? get totalFpgaMemoryInMib => _$this._totalFpgaMemoryInMib;
  set totalFpgaMemoryInMib(int? totalFpgaMemoryInMib) =>
      _$this._totalFpgaMemoryInMib = totalFpgaMemoryInMib;

  FpgaInfoBuilder();

  FpgaInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fpgas = $v.fpgas?.toBuilder();
      _totalFpgaMemoryInMib = $v.totalFpgaMemoryInMib;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FpgaInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FpgaInfo;
  }

  @override
  void update(void Function(FpgaInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FpgaInfo build() => _build();

  _$FpgaInfo _build() {
    _$FpgaInfo _$result;
    try {
      _$result = _$v ??
          new _$FpgaInfo._(
              fpgas: _fpgas?.build(),
              totalFpgaMemoryInMib: totalFpgaMemoryInMib);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fpgas';
        _fpgas?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FpgaInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
