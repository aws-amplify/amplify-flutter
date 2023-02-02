// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.field_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FieldInfo extends FieldInfo {
  @override
  final String? name;

  factory _$FieldInfo([void Function(FieldInfoBuilder)? updates]) =>
      (new FieldInfoBuilder()..update(updates))._build();

  _$FieldInfo._({this.name}) : super._();

  @override
  FieldInfo rebuild(void Function(FieldInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldInfoBuilder toBuilder() => new FieldInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FieldInfo && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FieldInfoBuilder implements Builder<FieldInfo, FieldInfoBuilder> {
  _$FieldInfo? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  FieldInfoBuilder() {
    FieldInfo._init(this);
  }

  FieldInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FieldInfo;
  }

  @override
  void update(void Function(FieldInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FieldInfo build() => _build();

  _$FieldInfo _build() {
    final _$result = _$v ?? new _$FieldInfo._(name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
