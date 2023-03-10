// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.payload_with_xml_namespace;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PayloadWithXmlNamespace extends PayloadWithXmlNamespace {
  @override
  final String? name;

  factory _$PayloadWithXmlNamespace(
          [void Function(PayloadWithXmlNamespaceBuilder)? updates]) =>
      (new PayloadWithXmlNamespaceBuilder()..update(updates))._build();

  _$PayloadWithXmlNamespace._({this.name}) : super._();

  @override
  PayloadWithXmlNamespace rebuild(
          void Function(PayloadWithXmlNamespaceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PayloadWithXmlNamespaceBuilder toBuilder() =>
      new PayloadWithXmlNamespaceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PayloadWithXmlNamespace && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PayloadWithXmlNamespaceBuilder
    implements
        Builder<PayloadWithXmlNamespace, PayloadWithXmlNamespaceBuilder> {
  _$PayloadWithXmlNamespace? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PayloadWithXmlNamespaceBuilder() {
    PayloadWithXmlNamespace._init(this);
  }

  PayloadWithXmlNamespaceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PayloadWithXmlNamespace other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PayloadWithXmlNamespace;
  }

  @override
  void update(void Function(PayloadWithXmlNamespaceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PayloadWithXmlNamespace build() => _build();

  _$PayloadWithXmlNamespace _build() {
    final _$result = _$v ?? new _$PayloadWithXmlNamespace._(name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
