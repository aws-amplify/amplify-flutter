// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_vpn_tunnel_options_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpnTunnelOptionsSpecification
    extends ModifyVpnTunnelOptionsSpecification {
  @override
  final String? tunnelInsideCidr;
  @override
  final String? tunnelInsideIpv6Cidr;
  @override
  final String? preSharedKey;
  @override
  final int phase1LifetimeSeconds;
  @override
  final int phase2LifetimeSeconds;
  @override
  final int rekeyMarginTimeSeconds;
  @override
  final int rekeyFuzzPercentage;
  @override
  final int replayWindowSize;
  @override
  final int dpdTimeoutSeconds;
  @override
  final String? dpdTimeoutAction;
  @override
  final _i2.BuiltList<Phase1EncryptionAlgorithmsRequestListValue>?
      phase1EncryptionAlgorithms;
  @override
  final _i2.BuiltList<Phase2EncryptionAlgorithmsRequestListValue>?
      phase2EncryptionAlgorithms;
  @override
  final _i2.BuiltList<Phase1IntegrityAlgorithmsRequestListValue>?
      phase1IntegrityAlgorithms;
  @override
  final _i2.BuiltList<Phase2IntegrityAlgorithmsRequestListValue>?
      phase2IntegrityAlgorithms;
  @override
  final _i2.BuiltList<Phase1DhGroupNumbersRequestListValue>?
      phase1DhGroupNumbers;
  @override
  final _i2.BuiltList<Phase2DhGroupNumbersRequestListValue>?
      phase2DhGroupNumbers;
  @override
  final _i2.BuiltList<IkeVersionsRequestListValue>? ikeVersions;
  @override
  final String? startupAction;
  @override
  final VpnTunnelLogOptionsSpecification? logOptions;
  @override
  final bool enableTunnelLifecycleControl;

  factory _$ModifyVpnTunnelOptionsSpecification(
          [void Function(ModifyVpnTunnelOptionsSpecificationBuilder)?
              updates]) =>
      (new ModifyVpnTunnelOptionsSpecificationBuilder()..update(updates))
          ._build();

  _$ModifyVpnTunnelOptionsSpecification._(
      {this.tunnelInsideCidr,
      this.tunnelInsideIpv6Cidr,
      this.preSharedKey,
      required this.phase1LifetimeSeconds,
      required this.phase2LifetimeSeconds,
      required this.rekeyMarginTimeSeconds,
      required this.rekeyFuzzPercentage,
      required this.replayWindowSize,
      required this.dpdTimeoutSeconds,
      this.dpdTimeoutAction,
      this.phase1EncryptionAlgorithms,
      this.phase2EncryptionAlgorithms,
      this.phase1IntegrityAlgorithms,
      this.phase2IntegrityAlgorithms,
      this.phase1DhGroupNumbers,
      this.phase2DhGroupNumbers,
      this.ikeVersions,
      this.startupAction,
      this.logOptions,
      required this.enableTunnelLifecycleControl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(phase1LifetimeSeconds,
        r'ModifyVpnTunnelOptionsSpecification', 'phase1LifetimeSeconds');
    BuiltValueNullFieldError.checkNotNull(phase2LifetimeSeconds,
        r'ModifyVpnTunnelOptionsSpecification', 'phase2LifetimeSeconds');
    BuiltValueNullFieldError.checkNotNull(rekeyMarginTimeSeconds,
        r'ModifyVpnTunnelOptionsSpecification', 'rekeyMarginTimeSeconds');
    BuiltValueNullFieldError.checkNotNull(rekeyFuzzPercentage,
        r'ModifyVpnTunnelOptionsSpecification', 'rekeyFuzzPercentage');
    BuiltValueNullFieldError.checkNotNull(replayWindowSize,
        r'ModifyVpnTunnelOptionsSpecification', 'replayWindowSize');
    BuiltValueNullFieldError.checkNotNull(dpdTimeoutSeconds,
        r'ModifyVpnTunnelOptionsSpecification', 'dpdTimeoutSeconds');
    BuiltValueNullFieldError.checkNotNull(enableTunnelLifecycleControl,
        r'ModifyVpnTunnelOptionsSpecification', 'enableTunnelLifecycleControl');
  }

  @override
  ModifyVpnTunnelOptionsSpecification rebuild(
          void Function(ModifyVpnTunnelOptionsSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpnTunnelOptionsSpecificationBuilder toBuilder() =>
      new ModifyVpnTunnelOptionsSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpnTunnelOptionsSpecification &&
        tunnelInsideCidr == other.tunnelInsideCidr &&
        tunnelInsideIpv6Cidr == other.tunnelInsideIpv6Cidr &&
        preSharedKey == other.preSharedKey &&
        phase1LifetimeSeconds == other.phase1LifetimeSeconds &&
        phase2LifetimeSeconds == other.phase2LifetimeSeconds &&
        rekeyMarginTimeSeconds == other.rekeyMarginTimeSeconds &&
        rekeyFuzzPercentage == other.rekeyFuzzPercentage &&
        replayWindowSize == other.replayWindowSize &&
        dpdTimeoutSeconds == other.dpdTimeoutSeconds &&
        dpdTimeoutAction == other.dpdTimeoutAction &&
        phase1EncryptionAlgorithms == other.phase1EncryptionAlgorithms &&
        phase2EncryptionAlgorithms == other.phase2EncryptionAlgorithms &&
        phase1IntegrityAlgorithms == other.phase1IntegrityAlgorithms &&
        phase2IntegrityAlgorithms == other.phase2IntegrityAlgorithms &&
        phase1DhGroupNumbers == other.phase1DhGroupNumbers &&
        phase2DhGroupNumbers == other.phase2DhGroupNumbers &&
        ikeVersions == other.ikeVersions &&
        startupAction == other.startupAction &&
        logOptions == other.logOptions &&
        enableTunnelLifecycleControl == other.enableTunnelLifecycleControl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tunnelInsideCidr.hashCode);
    _$hash = $jc(_$hash, tunnelInsideIpv6Cidr.hashCode);
    _$hash = $jc(_$hash, preSharedKey.hashCode);
    _$hash = $jc(_$hash, phase1LifetimeSeconds.hashCode);
    _$hash = $jc(_$hash, phase2LifetimeSeconds.hashCode);
    _$hash = $jc(_$hash, rekeyMarginTimeSeconds.hashCode);
    _$hash = $jc(_$hash, rekeyFuzzPercentage.hashCode);
    _$hash = $jc(_$hash, replayWindowSize.hashCode);
    _$hash = $jc(_$hash, dpdTimeoutSeconds.hashCode);
    _$hash = $jc(_$hash, dpdTimeoutAction.hashCode);
    _$hash = $jc(_$hash, phase1EncryptionAlgorithms.hashCode);
    _$hash = $jc(_$hash, phase2EncryptionAlgorithms.hashCode);
    _$hash = $jc(_$hash, phase1IntegrityAlgorithms.hashCode);
    _$hash = $jc(_$hash, phase2IntegrityAlgorithms.hashCode);
    _$hash = $jc(_$hash, phase1DhGroupNumbers.hashCode);
    _$hash = $jc(_$hash, phase2DhGroupNumbers.hashCode);
    _$hash = $jc(_$hash, ikeVersions.hashCode);
    _$hash = $jc(_$hash, startupAction.hashCode);
    _$hash = $jc(_$hash, logOptions.hashCode);
    _$hash = $jc(_$hash, enableTunnelLifecycleControl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVpnTunnelOptionsSpecificationBuilder
    implements
        Builder<ModifyVpnTunnelOptionsSpecification,
            ModifyVpnTunnelOptionsSpecificationBuilder> {
  _$ModifyVpnTunnelOptionsSpecification? _$v;

  String? _tunnelInsideCidr;
  String? get tunnelInsideCidr => _$this._tunnelInsideCidr;
  set tunnelInsideCidr(String? tunnelInsideCidr) =>
      _$this._tunnelInsideCidr = tunnelInsideCidr;

  String? _tunnelInsideIpv6Cidr;
  String? get tunnelInsideIpv6Cidr => _$this._tunnelInsideIpv6Cidr;
  set tunnelInsideIpv6Cidr(String? tunnelInsideIpv6Cidr) =>
      _$this._tunnelInsideIpv6Cidr = tunnelInsideIpv6Cidr;

  String? _preSharedKey;
  String? get preSharedKey => _$this._preSharedKey;
  set preSharedKey(String? preSharedKey) => _$this._preSharedKey = preSharedKey;

  int? _phase1LifetimeSeconds;
  int? get phase1LifetimeSeconds => _$this._phase1LifetimeSeconds;
  set phase1LifetimeSeconds(int? phase1LifetimeSeconds) =>
      _$this._phase1LifetimeSeconds = phase1LifetimeSeconds;

  int? _phase2LifetimeSeconds;
  int? get phase2LifetimeSeconds => _$this._phase2LifetimeSeconds;
  set phase2LifetimeSeconds(int? phase2LifetimeSeconds) =>
      _$this._phase2LifetimeSeconds = phase2LifetimeSeconds;

  int? _rekeyMarginTimeSeconds;
  int? get rekeyMarginTimeSeconds => _$this._rekeyMarginTimeSeconds;
  set rekeyMarginTimeSeconds(int? rekeyMarginTimeSeconds) =>
      _$this._rekeyMarginTimeSeconds = rekeyMarginTimeSeconds;

  int? _rekeyFuzzPercentage;
  int? get rekeyFuzzPercentage => _$this._rekeyFuzzPercentage;
  set rekeyFuzzPercentage(int? rekeyFuzzPercentage) =>
      _$this._rekeyFuzzPercentage = rekeyFuzzPercentage;

  int? _replayWindowSize;
  int? get replayWindowSize => _$this._replayWindowSize;
  set replayWindowSize(int? replayWindowSize) =>
      _$this._replayWindowSize = replayWindowSize;

  int? _dpdTimeoutSeconds;
  int? get dpdTimeoutSeconds => _$this._dpdTimeoutSeconds;
  set dpdTimeoutSeconds(int? dpdTimeoutSeconds) =>
      _$this._dpdTimeoutSeconds = dpdTimeoutSeconds;

  String? _dpdTimeoutAction;
  String? get dpdTimeoutAction => _$this._dpdTimeoutAction;
  set dpdTimeoutAction(String? dpdTimeoutAction) =>
      _$this._dpdTimeoutAction = dpdTimeoutAction;

  _i2.ListBuilder<Phase1EncryptionAlgorithmsRequestListValue>?
      _phase1EncryptionAlgorithms;
  _i2.ListBuilder<Phase1EncryptionAlgorithmsRequestListValue>
      get phase1EncryptionAlgorithms => _$this._phase1EncryptionAlgorithms ??=
          new _i2.ListBuilder<Phase1EncryptionAlgorithmsRequestListValue>();
  set phase1EncryptionAlgorithms(
          _i2.ListBuilder<Phase1EncryptionAlgorithmsRequestListValue>?
              phase1EncryptionAlgorithms) =>
      _$this._phase1EncryptionAlgorithms = phase1EncryptionAlgorithms;

  _i2.ListBuilder<Phase2EncryptionAlgorithmsRequestListValue>?
      _phase2EncryptionAlgorithms;
  _i2.ListBuilder<Phase2EncryptionAlgorithmsRequestListValue>
      get phase2EncryptionAlgorithms => _$this._phase2EncryptionAlgorithms ??=
          new _i2.ListBuilder<Phase2EncryptionAlgorithmsRequestListValue>();
  set phase2EncryptionAlgorithms(
          _i2.ListBuilder<Phase2EncryptionAlgorithmsRequestListValue>?
              phase2EncryptionAlgorithms) =>
      _$this._phase2EncryptionAlgorithms = phase2EncryptionAlgorithms;

  _i2.ListBuilder<Phase1IntegrityAlgorithmsRequestListValue>?
      _phase1IntegrityAlgorithms;
  _i2.ListBuilder<Phase1IntegrityAlgorithmsRequestListValue>
      get phase1IntegrityAlgorithms => _$this._phase1IntegrityAlgorithms ??=
          new _i2.ListBuilder<Phase1IntegrityAlgorithmsRequestListValue>();
  set phase1IntegrityAlgorithms(
          _i2.ListBuilder<Phase1IntegrityAlgorithmsRequestListValue>?
              phase1IntegrityAlgorithms) =>
      _$this._phase1IntegrityAlgorithms = phase1IntegrityAlgorithms;

  _i2.ListBuilder<Phase2IntegrityAlgorithmsRequestListValue>?
      _phase2IntegrityAlgorithms;
  _i2.ListBuilder<Phase2IntegrityAlgorithmsRequestListValue>
      get phase2IntegrityAlgorithms => _$this._phase2IntegrityAlgorithms ??=
          new _i2.ListBuilder<Phase2IntegrityAlgorithmsRequestListValue>();
  set phase2IntegrityAlgorithms(
          _i2.ListBuilder<Phase2IntegrityAlgorithmsRequestListValue>?
              phase2IntegrityAlgorithms) =>
      _$this._phase2IntegrityAlgorithms = phase2IntegrityAlgorithms;

  _i2.ListBuilder<Phase1DhGroupNumbersRequestListValue>? _phase1DhGroupNumbers;
  _i2.ListBuilder<Phase1DhGroupNumbersRequestListValue>
      get phase1DhGroupNumbers => _$this._phase1DhGroupNumbers ??=
          new _i2.ListBuilder<Phase1DhGroupNumbersRequestListValue>();
  set phase1DhGroupNumbers(
          _i2.ListBuilder<Phase1DhGroupNumbersRequestListValue>?
              phase1DhGroupNumbers) =>
      _$this._phase1DhGroupNumbers = phase1DhGroupNumbers;

  _i2.ListBuilder<Phase2DhGroupNumbersRequestListValue>? _phase2DhGroupNumbers;
  _i2.ListBuilder<Phase2DhGroupNumbersRequestListValue>
      get phase2DhGroupNumbers => _$this._phase2DhGroupNumbers ??=
          new _i2.ListBuilder<Phase2DhGroupNumbersRequestListValue>();
  set phase2DhGroupNumbers(
          _i2.ListBuilder<Phase2DhGroupNumbersRequestListValue>?
              phase2DhGroupNumbers) =>
      _$this._phase2DhGroupNumbers = phase2DhGroupNumbers;

  _i2.ListBuilder<IkeVersionsRequestListValue>? _ikeVersions;
  _i2.ListBuilder<IkeVersionsRequestListValue> get ikeVersions =>
      _$this._ikeVersions ??=
          new _i2.ListBuilder<IkeVersionsRequestListValue>();
  set ikeVersions(_i2.ListBuilder<IkeVersionsRequestListValue>? ikeVersions) =>
      _$this._ikeVersions = ikeVersions;

  String? _startupAction;
  String? get startupAction => _$this._startupAction;
  set startupAction(String? startupAction) =>
      _$this._startupAction = startupAction;

  VpnTunnelLogOptionsSpecificationBuilder? _logOptions;
  VpnTunnelLogOptionsSpecificationBuilder get logOptions =>
      _$this._logOptions ??= new VpnTunnelLogOptionsSpecificationBuilder();
  set logOptions(VpnTunnelLogOptionsSpecificationBuilder? logOptions) =>
      _$this._logOptions = logOptions;

  bool? _enableTunnelLifecycleControl;
  bool? get enableTunnelLifecycleControl =>
      _$this._enableTunnelLifecycleControl;
  set enableTunnelLifecycleControl(bool? enableTunnelLifecycleControl) =>
      _$this._enableTunnelLifecycleControl = enableTunnelLifecycleControl;

  ModifyVpnTunnelOptionsSpecificationBuilder() {
    ModifyVpnTunnelOptionsSpecification._init(this);
  }

  ModifyVpnTunnelOptionsSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tunnelInsideCidr = $v.tunnelInsideCidr;
      _tunnelInsideIpv6Cidr = $v.tunnelInsideIpv6Cidr;
      _preSharedKey = $v.preSharedKey;
      _phase1LifetimeSeconds = $v.phase1LifetimeSeconds;
      _phase2LifetimeSeconds = $v.phase2LifetimeSeconds;
      _rekeyMarginTimeSeconds = $v.rekeyMarginTimeSeconds;
      _rekeyFuzzPercentage = $v.rekeyFuzzPercentage;
      _replayWindowSize = $v.replayWindowSize;
      _dpdTimeoutSeconds = $v.dpdTimeoutSeconds;
      _dpdTimeoutAction = $v.dpdTimeoutAction;
      _phase1EncryptionAlgorithms = $v.phase1EncryptionAlgorithms?.toBuilder();
      _phase2EncryptionAlgorithms = $v.phase2EncryptionAlgorithms?.toBuilder();
      _phase1IntegrityAlgorithms = $v.phase1IntegrityAlgorithms?.toBuilder();
      _phase2IntegrityAlgorithms = $v.phase2IntegrityAlgorithms?.toBuilder();
      _phase1DhGroupNumbers = $v.phase1DhGroupNumbers?.toBuilder();
      _phase2DhGroupNumbers = $v.phase2DhGroupNumbers?.toBuilder();
      _ikeVersions = $v.ikeVersions?.toBuilder();
      _startupAction = $v.startupAction;
      _logOptions = $v.logOptions?.toBuilder();
      _enableTunnelLifecycleControl = $v.enableTunnelLifecycleControl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpnTunnelOptionsSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpnTunnelOptionsSpecification;
  }

  @override
  void update(
      void Function(ModifyVpnTunnelOptionsSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpnTunnelOptionsSpecification build() => _build();

  _$ModifyVpnTunnelOptionsSpecification _build() {
    _$ModifyVpnTunnelOptionsSpecification _$result;
    try {
      _$result = _$v ??
          new _$ModifyVpnTunnelOptionsSpecification._(
              tunnelInsideCidr: tunnelInsideCidr,
              tunnelInsideIpv6Cidr: tunnelInsideIpv6Cidr,
              preSharedKey: preSharedKey,
              phase1LifetimeSeconds: BuiltValueNullFieldError.checkNotNull(
                  phase1LifetimeSeconds, r'ModifyVpnTunnelOptionsSpecification', 'phase1LifetimeSeconds'),
              phase2LifetimeSeconds: BuiltValueNullFieldError.checkNotNull(
                  phase2LifetimeSeconds, r'ModifyVpnTunnelOptionsSpecification', 'phase2LifetimeSeconds'),
              rekeyMarginTimeSeconds: BuiltValueNullFieldError.checkNotNull(
                  rekeyMarginTimeSeconds, r'ModifyVpnTunnelOptionsSpecification', 'rekeyMarginTimeSeconds'),
              rekeyFuzzPercentage: BuiltValueNullFieldError.checkNotNull(
                  rekeyFuzzPercentage, r'ModifyVpnTunnelOptionsSpecification', 'rekeyFuzzPercentage'),
              replayWindowSize: BuiltValueNullFieldError.checkNotNull(
                  replayWindowSize, r'ModifyVpnTunnelOptionsSpecification', 'replayWindowSize'),
              dpdTimeoutSeconds: BuiltValueNullFieldError.checkNotNull(
                  dpdTimeoutSeconds, r'ModifyVpnTunnelOptionsSpecification', 'dpdTimeoutSeconds'),
              dpdTimeoutAction: dpdTimeoutAction,
              phase1EncryptionAlgorithms: _phase1EncryptionAlgorithms?.build(),
              phase2EncryptionAlgorithms: _phase2EncryptionAlgorithms?.build(),
              phase1IntegrityAlgorithms: _phase1IntegrityAlgorithms?.build(),
              phase2IntegrityAlgorithms: _phase2IntegrityAlgorithms?.build(),
              phase1DhGroupNumbers: _phase1DhGroupNumbers?.build(),
              phase2DhGroupNumbers: _phase2DhGroupNumbers?.build(),
              ikeVersions: _ikeVersions?.build(),
              startupAction: startupAction,
              logOptions: _logOptions?.build(),
              enableTunnelLifecycleControl: BuiltValueNullFieldError.checkNotNull(
                  enableTunnelLifecycleControl, r'ModifyVpnTunnelOptionsSpecification', 'enableTunnelLifecycleControl'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'phase1EncryptionAlgorithms';
        _phase1EncryptionAlgorithms?.build();
        _$failedField = 'phase2EncryptionAlgorithms';
        _phase2EncryptionAlgorithms?.build();
        _$failedField = 'phase1IntegrityAlgorithms';
        _phase1IntegrityAlgorithms?.build();
        _$failedField = 'phase2IntegrityAlgorithms';
        _phase2IntegrityAlgorithms?.build();
        _$failedField = 'phase1DhGroupNumbers';
        _phase1DhGroupNumbers?.build();
        _$failedField = 'phase2DhGroupNumbers';
        _phase2DhGroupNumbers?.build();
        _$failedField = 'ikeVersions';
        _ikeVersions?.build();

        _$failedField = 'logOptions';
        _logOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVpnTunnelOptionsSpecification',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
