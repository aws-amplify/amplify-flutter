// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v1.rest_xml_protocol.model.payload_with_xml_name;

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
    return $jf($jc(0, name.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
