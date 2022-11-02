// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v1.rest_xml_protocol.model.xml_namespaces_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlNamespacesInputOutput extends XmlNamespacesInputOutput {
  @override
  final _i3.XmlNamespaceNested? nested;

  factory _$XmlNamespacesInputOutput(
          [void Function(XmlNamespacesInputOutputBuilder)? updates]) =>
      (new XmlNamespacesInputOutputBuilder()..update(updates))._build();

  _$XmlNamespacesInputOutput._({this.nested}) : super._();

  @override
  XmlNamespacesInputOutput rebuild(
          void Function(XmlNamespacesInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlNamespacesInputOutputBuilder toBuilder() =>
      new XmlNamespacesInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlNamespacesInputOutput && nested == other.nested;
  }

  @override
  int get hashCode {
    return $jf($jc(0, nested.hashCode));
  }
}

class XmlNamespacesInputOutputBuilder
    implements
        Builder<XmlNamespacesInputOutput, XmlNamespacesInputOutputBuilder> {
  _$XmlNamespacesInputOutput? _$v;

  _i3.XmlNamespaceNestedBuilder? _nested;
  _i3.XmlNamespaceNestedBuilder get nested =>
      _$this._nested ??= new _i3.XmlNamespaceNestedBuilder();
  set nested(_i3.XmlNamespaceNestedBuilder? nested) => _$this._nested = nested;

  XmlNamespacesInputOutputBuilder() {
    XmlNamespacesInputOutput._init(this);
  }

  XmlNamespacesInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nested = $v.nested?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlNamespacesInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlNamespacesInputOutput;
  }

  @override
  void update(void Function(XmlNamespacesInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XmlNamespacesInputOutput build() => _build();

  _$XmlNamespacesInputOutput _build() {
    _$XmlNamespacesInputOutput _$result;
    try {
      _$result =
          _$v ?? new _$XmlNamespacesInputOutput._(nested: _nested?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nested';
        _nested?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'XmlNamespacesInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
