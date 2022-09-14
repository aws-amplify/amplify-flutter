// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml.rest_xml_protocol.model.xml_namespace_nested;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlNamespaceNested extends XmlNamespaceNested {
  @override
  final String? foo;
  @override
  final _i2.BuiltList<String>? values;

  factory _$XmlNamespaceNested(
          [void Function(XmlNamespaceNestedBuilder)? updates]) =>
      (new XmlNamespaceNestedBuilder()..update(updates))._build();

  _$XmlNamespaceNested._({this.foo, this.values}) : super._();

  @override
  XmlNamespaceNested rebuild(
          void Function(XmlNamespaceNestedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlNamespaceNestedBuilder toBuilder() =>
      new XmlNamespaceNestedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlNamespaceNested &&
        foo == other.foo &&
        values == other.values;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, foo.hashCode), values.hashCode));
  }
}

class XmlNamespaceNestedBuilder
    implements Builder<XmlNamespaceNested, XmlNamespaceNestedBuilder> {
  _$XmlNamespaceNested? _$v;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  _i2.ListBuilder<String>? _values;
  _i2.ListBuilder<String> get values =>
      _$this._values ??= new _i2.ListBuilder<String>();
  set values(_i2.ListBuilder<String>? values) => _$this._values = values;

  XmlNamespaceNestedBuilder() {
    XmlNamespaceNested._init(this);
  }

  XmlNamespaceNestedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foo = $v.foo;
      _values = $v.values?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlNamespaceNested other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlNamespaceNested;
  }

  @override
  void update(void Function(XmlNamespaceNestedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XmlNamespaceNested build() => _build();

  _$XmlNamespaceNested _build() {
    _$XmlNamespaceNested _$result;
    try {
      _$result =
          _$v ?? new _$XmlNamespaceNested._(foo: foo, values: _values?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'values';
        _values?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'XmlNamespaceNested', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
