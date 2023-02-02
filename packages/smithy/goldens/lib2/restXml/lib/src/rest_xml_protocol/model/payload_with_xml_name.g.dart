// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.payload_with_xml_name;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PayloadWithXmlName extends PayloadWithXmlName {
  @override
  final String? name;

  factory _$PayloadWithXmlName(
          [void Function(PayloadWithXmlNameBuilder)? updates]) =>
      (new PayloadWithXmlNameBuilder()..update(updates))._build();

  _$PayloadWithXmlName._({this.name}) : super._();

  @override
  PayloadWithXmlName rebuild(
          void Function(PayloadWithXmlNameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PayloadWithXmlNameBuilder toBuilder() =>
      new PayloadWithXmlNameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PayloadWithXmlName && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PayloadWithXmlNameBuilder
    implements Builder<PayloadWithXmlName, PayloadWithXmlNameBuilder> {
  _$PayloadWithXmlName? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PayloadWithXmlNameBuilder() {
    PayloadWithXmlName._init(this);
  }

  PayloadWithXmlNameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PayloadWithXmlName other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PayloadWithXmlName;
  }

  @override
  void update(void Function(PayloadWithXmlNameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PayloadWithXmlName build() => _build();

  _$PayloadWithXmlName _build() {
    final _$result = _$v ?? new _$PayloadWithXmlName._(name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
