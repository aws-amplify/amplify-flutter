// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icmp_type_code.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IcmpTypeCode extends IcmpTypeCode {
  @override
  final int code;
  @override
  final int type;

  factory _$IcmpTypeCode([void Function(IcmpTypeCodeBuilder)? updates]) =>
      (new IcmpTypeCodeBuilder()..update(updates))._build();

  _$IcmpTypeCode._({required this.code, required this.type}) : super._() {
    BuiltValueNullFieldError.checkNotNull(code, r'IcmpTypeCode', 'code');
    BuiltValueNullFieldError.checkNotNull(type, r'IcmpTypeCode', 'type');
  }

  @override
  IcmpTypeCode rebuild(void Function(IcmpTypeCodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IcmpTypeCodeBuilder toBuilder() => new IcmpTypeCodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IcmpTypeCode && code == other.code && type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IcmpTypeCodeBuilder
    implements Builder<IcmpTypeCode, IcmpTypeCodeBuilder> {
  _$IcmpTypeCode? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  int? _type;
  int? get type => _$this._type;
  set type(int? type) => _$this._type = type;

  IcmpTypeCodeBuilder() {
    IcmpTypeCode._init(this);
  }

  IcmpTypeCodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IcmpTypeCode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IcmpTypeCode;
  }

  @override
  void update(void Function(IcmpTypeCodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IcmpTypeCode build() => _build();

  _$IcmpTypeCode _build() {
    final _$result = _$v ??
        new _$IcmpTypeCode._(
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'IcmpTypeCode', 'code'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'IcmpTypeCode', 'type'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
