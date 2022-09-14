// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_with_namespace.rest_xml_protocol_namespace.model.nested_with_namespace;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NestedWithNamespace extends NestedWithNamespace {
  @override
  final String? attrField;

  factory _$NestedWithNamespace(
          [void Function(NestedWithNamespaceBuilder)? updates]) =>
      (new NestedWithNamespaceBuilder()..update(updates))._build();

  _$NestedWithNamespace._({this.attrField}) : super._();

  @override
  NestedWithNamespace rebuild(
          void Function(NestedWithNamespaceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NestedWithNamespaceBuilder toBuilder() =>
      new NestedWithNamespaceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NestedWithNamespace && attrField == other.attrField;
  }

  @override
  int get hashCode {
    return $jf($jc(0, attrField.hashCode));
  }
}

class NestedWithNamespaceBuilder
    implements Builder<NestedWithNamespace, NestedWithNamespaceBuilder> {
  _$NestedWithNamespace? _$v;

  String? _attrField;
  String? get attrField => _$this._attrField;
  set attrField(String? attrField) => _$this._attrField = attrField;

  NestedWithNamespaceBuilder() {
    NestedWithNamespace._init(this);
  }

  NestedWithNamespaceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attrField = $v.attrField;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NestedWithNamespace other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NestedWithNamespace;
  }

  @override
  void update(void Function(NestedWithNamespaceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NestedWithNamespace build() => _build();

  _$NestedWithNamespace _build() {
    final _$result = _$v ?? new _$NestedWithNamespace._(attrField: attrField);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
