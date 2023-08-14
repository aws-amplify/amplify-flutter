// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_private_dns_name_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplatePrivateDnsNameOptions
    extends LaunchTemplatePrivateDnsNameOptions {
  @override
  final HostnameType? hostnameType;
  @override
  final bool enableResourceNameDnsARecord;
  @override
  final bool enableResourceNameDnsAaaaRecord;

  factory _$LaunchTemplatePrivateDnsNameOptions(
          [void Function(LaunchTemplatePrivateDnsNameOptionsBuilder)?
              updates]) =>
      (new LaunchTemplatePrivateDnsNameOptionsBuilder()..update(updates))
          ._build();

  _$LaunchTemplatePrivateDnsNameOptions._(
      {this.hostnameType,
      required this.enableResourceNameDnsARecord,
      required this.enableResourceNameDnsAaaaRecord})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(enableResourceNameDnsARecord,
        r'LaunchTemplatePrivateDnsNameOptions', 'enableResourceNameDnsARecord');
    BuiltValueNullFieldError.checkNotNull(
        enableResourceNameDnsAaaaRecord,
        r'LaunchTemplatePrivateDnsNameOptions',
        'enableResourceNameDnsAaaaRecord');
  }

  @override
  LaunchTemplatePrivateDnsNameOptions rebuild(
          void Function(LaunchTemplatePrivateDnsNameOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplatePrivateDnsNameOptionsBuilder toBuilder() =>
      new LaunchTemplatePrivateDnsNameOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplatePrivateDnsNameOptions &&
        hostnameType == other.hostnameType &&
        enableResourceNameDnsARecord == other.enableResourceNameDnsARecord &&
        enableResourceNameDnsAaaaRecord ==
            other.enableResourceNameDnsAaaaRecord;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hostnameType.hashCode);
    _$hash = $jc(_$hash, enableResourceNameDnsARecord.hashCode);
    _$hash = $jc(_$hash, enableResourceNameDnsAaaaRecord.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchTemplatePrivateDnsNameOptionsBuilder
    implements
        Builder<LaunchTemplatePrivateDnsNameOptions,
            LaunchTemplatePrivateDnsNameOptionsBuilder> {
  _$LaunchTemplatePrivateDnsNameOptions? _$v;

  HostnameType? _hostnameType;
  HostnameType? get hostnameType => _$this._hostnameType;
  set hostnameType(HostnameType? hostnameType) =>
      _$this._hostnameType = hostnameType;

  bool? _enableResourceNameDnsARecord;
  bool? get enableResourceNameDnsARecord =>
      _$this._enableResourceNameDnsARecord;
  set enableResourceNameDnsARecord(bool? enableResourceNameDnsARecord) =>
      _$this._enableResourceNameDnsARecord = enableResourceNameDnsARecord;

  bool? _enableResourceNameDnsAaaaRecord;
  bool? get enableResourceNameDnsAaaaRecord =>
      _$this._enableResourceNameDnsAaaaRecord;
  set enableResourceNameDnsAaaaRecord(bool? enableResourceNameDnsAaaaRecord) =>
      _$this._enableResourceNameDnsAaaaRecord = enableResourceNameDnsAaaaRecord;

  LaunchTemplatePrivateDnsNameOptionsBuilder() {
    LaunchTemplatePrivateDnsNameOptions._init(this);
  }

  LaunchTemplatePrivateDnsNameOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hostnameType = $v.hostnameType;
      _enableResourceNameDnsARecord = $v.enableResourceNameDnsARecord;
      _enableResourceNameDnsAaaaRecord = $v.enableResourceNameDnsAaaaRecord;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplatePrivateDnsNameOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplatePrivateDnsNameOptions;
  }

  @override
  void update(
      void Function(LaunchTemplatePrivateDnsNameOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplatePrivateDnsNameOptions build() => _build();

  _$LaunchTemplatePrivateDnsNameOptions _build() {
    final _$result = _$v ??
        new _$LaunchTemplatePrivateDnsNameOptions._(
            hostnameType: hostnameType,
            enableResourceNameDnsARecord: BuiltValueNullFieldError.checkNotNull(
                enableResourceNameDnsARecord,
                r'LaunchTemplatePrivateDnsNameOptions',
                'enableResourceNameDnsARecord'),
            enableResourceNameDnsAaaaRecord:
                BuiltValueNullFieldError.checkNotNull(
                    enableResourceNameDnsAaaaRecord,
                    r'LaunchTemplatePrivateDnsNameOptions',
                    'enableResourceNameDnsAaaaRecord'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
