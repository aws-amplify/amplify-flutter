// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dns_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DnsEntry extends DnsEntry {
  @override
  final String? dnsName;
  @override
  final String? hostedZoneId;

  factory _$DnsEntry([void Function(DnsEntryBuilder)? updates]) =>
      (new DnsEntryBuilder()..update(updates))._build();

  _$DnsEntry._({this.dnsName, this.hostedZoneId}) : super._();

  @override
  DnsEntry rebuild(void Function(DnsEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DnsEntryBuilder toBuilder() => new DnsEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DnsEntry &&
        dnsName == other.dnsName &&
        hostedZoneId == other.hostedZoneId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dnsName.hashCode);
    _$hash = $jc(_$hash, hostedZoneId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DnsEntryBuilder implements Builder<DnsEntry, DnsEntryBuilder> {
  _$DnsEntry? _$v;

  String? _dnsName;
  String? get dnsName => _$this._dnsName;
  set dnsName(String? dnsName) => _$this._dnsName = dnsName;

  String? _hostedZoneId;
  String? get hostedZoneId => _$this._hostedZoneId;
  set hostedZoneId(String? hostedZoneId) => _$this._hostedZoneId = hostedZoneId;

  DnsEntryBuilder();

  DnsEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dnsName = $v.dnsName;
      _hostedZoneId = $v.hostedZoneId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DnsEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DnsEntry;
  }

  @override
  void update(void Function(DnsEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DnsEntry build() => _build();

  _$DnsEntry _build() {
    final _$result =
        _$v ?? new _$DnsEntry._(dnsName: dnsName, hostedZoneId: hostedZoneId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
