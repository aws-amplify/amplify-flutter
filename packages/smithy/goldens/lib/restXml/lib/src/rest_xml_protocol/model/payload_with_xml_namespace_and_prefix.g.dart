// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v1.rest_xml_protocol.model.payload_with_xml_namespace_and_prefix;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PayloadWithXmlNamespaceAndPrefix
    extends PayloadWithXmlNamespaceAndPrefix {
  @override
  final String? name;

  factory _$PayloadWithXmlNamespaceAndPrefix(
          [void Function(PayloadWithXmlNamespaceAndPrefixBuilder)? updates]) =>
      (new PayloadWithXmlNamespaceAndPrefixBuilder()..update(updates))._build();

  _$PayloadWithXmlNamespaceAndPrefix._({this.name}) : super._();

  @override
  PayloadWithXmlNamespaceAndPrefix rebuild(
          void Function(PayloadWithXmlNamespaceAndPrefixBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PayloadWithXmlNamespaceAndPrefixBuilder toBuilder() =>
      new PayloadWithXmlNamespaceAndPrefixBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PayloadWithXmlNamespaceAndPrefix && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PayloadWithXmlNamespaceAndPrefixBuilder
    implements
        Builder<PayloadWithXmlNamespaceAndPrefix,
            PayloadWithXmlNamespaceAndPrefixBuilder> {
  _$PayloadWithXmlNamespaceAndPrefix? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PayloadWithXmlNamespaceAndPrefixBuilder() {
    PayloadWithXmlNamespaceAndPrefix._init(this);
  }

  PayloadWithXmlNamespaceAndPrefixBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PayloadWithXmlNamespaceAndPrefix other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PayloadWithXmlNamespaceAndPrefix;
  }

  @override
  void update(void Function(PayloadWithXmlNamespaceAndPrefixBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PayloadWithXmlNamespaceAndPrefix build() => _build();

  _$PayloadWithXmlNamespaceAndPrefix _build() {
    final _$result =
        _$v ?? new _$PayloadWithXmlNamespaceAndPrefix._(name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
