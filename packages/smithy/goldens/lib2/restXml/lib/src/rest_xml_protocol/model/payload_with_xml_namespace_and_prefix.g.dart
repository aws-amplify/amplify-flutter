// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.payload_with_xml_namespace_and_prefix;

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
    return $jf($jc(0, name.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
