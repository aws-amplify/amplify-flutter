// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.xml_namespaces_input_output;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, nested.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
