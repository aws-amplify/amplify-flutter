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
    return $jf($jc($jc(0, a.hashCode), b.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
