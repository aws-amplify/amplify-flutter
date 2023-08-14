// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'efa_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EfaInfo extends EfaInfo {
  @override
  final int? maximumEfaInterfaces;

  factory _$EfaInfo([void Function(EfaInfoBuilder)? updates]) =>
      (new EfaInfoBuilder()..update(updates))._build();

  _$EfaInfo._({this.maximumEfaInterfaces}) : super._();

  @override
  EfaInfo rebuild(void Function(EfaInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EfaInfoBuilder toBuilder() => new EfaInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EfaInfo &&
        maximumEfaInterfaces == other.maximumEfaInterfaces;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maximumEfaInterfaces.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EfaInfoBuilder implements Builder<EfaInfo, EfaInfoBuilder> {
  _$EfaInfo? _$v;

  int? _maximumEfaInterfaces;
  int? get maximumEfaInterfaces => _$this._maximumEfaInterfaces;
  set maximumEfaInterfaces(int? maximumEfaInterfaces) =>
      _$this._maximumEfaInterfaces = maximumEfaInterfaces;

  EfaInfoBuilder();

  EfaInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maximumEfaInterfaces = $v.maximumEfaInterfaces;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EfaInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EfaInfo;
  }

  @override
  void update(void Function(EfaInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EfaInfo build() => _build();

  _$EfaInfo _build() {
    final _$result =
        _$v ?? new _$EfaInfo._(maximumEfaInterfaces: maximumEfaInterfaces);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
