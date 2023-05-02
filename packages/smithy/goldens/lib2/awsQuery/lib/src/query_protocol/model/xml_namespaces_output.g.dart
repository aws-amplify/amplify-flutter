// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_query_v2.query_protocol.model.xml_namespaces_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlNamespacesOutput extends XmlNamespacesOutput {
  @override
  final _i2.XmlNamespaceNested? nested;

  factory _$XmlNamespacesOutput(
          [void Function(XmlNamespacesOutputBuilder)? updates]) =>
      (new XmlNamespacesOutputBuilder()..update(updates))._build();

  _$XmlNamespacesOutput._({this.nested}) : super._();

  @override
  XmlNamespacesOutput rebuild(
          void Function(XmlNamespacesOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlNamespacesOutputBuilder toBuilder() =>
      new XmlNamespacesOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlNamespacesOutput && nested == other.nested;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nested.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class XmlNamespacesOutputBuilder
    implements Builder<XmlNamespacesOutput, XmlNamespacesOutputBuilder> {
  _$XmlNamespacesOutput? _$v;

  _i2.XmlNamespaceNestedBuilder? _nested;
  _i2.XmlNamespaceNestedBuilder get nested =>
      _$this._nested ??= new _i2.XmlNamespaceNestedBuilder();
  set nested(_i2.XmlNamespaceNestedBuilder? nested) => _$this._nested = nested;

  XmlNamespacesOutputBuilder() {
    XmlNamespacesOutput._init(this);
  }

  XmlNamespacesOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nested = $v.nested?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlNamespacesOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlNamespacesOutput;
  }

  @override
  void update(void Function(XmlNamespacesOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XmlNamespacesOutput build() => _build();

  _$XmlNamespacesOutput _build() {
    _$XmlNamespacesOutput _$result;
    try {
      _$result = _$v ?? new _$XmlNamespacesOutput._(nested: _nested?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nested';
        _nested?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'XmlNamespacesOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
