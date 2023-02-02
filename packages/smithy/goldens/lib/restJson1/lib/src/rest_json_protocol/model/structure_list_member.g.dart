// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.structure_list_member;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StructureListMember extends StructureListMember {
  @override
  final String? a;
  @override
  final String? b;

  factory _$StructureListMember(
          [void Function(StructureListMemberBuilder)? updates]) =>
      (new StructureListMemberBuilder()..update(updates))._build();

  _$StructureListMember._({this.a, this.b}) : super._();

  @override
  StructureListMember rebuild(
          void Function(StructureListMemberBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StructureListMemberBuilder toBuilder() =>
      new StructureListMemberBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StructureListMember && a == other.a && b == other.b;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, a.hashCode);
    _$hash = $jc(_$hash, b.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StructureListMemberBuilder
    implements Builder<StructureListMember, StructureListMemberBuilder> {
  _$StructureListMember? _$v;

  String? _a;
  String? get a => _$this._a;
  set a(String? a) => _$this._a = a;

  String? _b;
  String? get b => _$this._b;
  set b(String? b) => _$this._b = b;

  StructureListMemberBuilder() {
    StructureListMember._init(this);
  }

  StructureListMemberBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _a = $v.a;
      _b = $v.b;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StructureListMember other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StructureListMember;
  }

  @override
  void update(void Function(StructureListMemberBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StructureListMember build() => _build();

  _$StructureListMember _build() {
    final _$result = _$v ?? new _$StructureListMember._(a: a, b: b);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
