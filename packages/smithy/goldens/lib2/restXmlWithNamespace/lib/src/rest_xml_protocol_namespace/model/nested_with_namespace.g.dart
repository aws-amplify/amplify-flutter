// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_with_namespace_v2.rest_xml_protocol_namespace.model.nested_with_namespace;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, attrField.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
