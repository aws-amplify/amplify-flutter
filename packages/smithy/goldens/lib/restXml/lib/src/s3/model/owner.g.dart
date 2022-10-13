// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v1.s3.model.owner;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Owner extends Owner {
  @override
  final String? displayName;
  @override
  final String? id;

  factory _$Owner([void Function(OwnerBuilder)? updates]) =>
      (new OwnerBuilder()..update(updates))._build();

  _$Owner._({this.displayName, this.id}) : super._();

  @override
  Owner rebuild(void Function(OwnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OwnerBuilder toBuilder() => new OwnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Owner && displayName == other.displayName && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, displayName.hashCode), id.hashCode));
  }
}

class OwnerBuilder implements Builder<Owner, OwnerBuilder> {
  _$Owner? _$v;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  OwnerBuilder() {
    Owner._init(this);
  }

  OwnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayName = $v.displayName;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Owner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Owner;
  }

  @override
  void update(void Function(OwnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Owner build() => _build();

  _$Owner _build() {
    final _$result = _$v ?? new _$Owner._(displayName: displayName, id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
