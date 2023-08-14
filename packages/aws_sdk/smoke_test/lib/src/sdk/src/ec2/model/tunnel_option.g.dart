// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tunnel_option.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TunnelOption extends TunnelOption {
  @override
  final String? outsideIpAddress;
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
  final _i2.BuiltList<Phase1EncryptionAlgorithmsListValue>?
      phase1EncryptionAlgorithms;
  @override
  final _i2.BuiltList<Phase2EncryptionAlgorithmsListValue>?
      phase2EncryptionAlgorithms;
  @override
  final _i2.BuiltList<Phase1IntegrityAlgorithmsListValue>?
      phase1IntegrityAlgorithms;
  @override
  final _i2.BuiltList<Phase2IntegrityAlgorithmsListValue>?
      phase2IntegrityAlgorithms;
  @override
  final _i2.BuiltList<Phase1DhGroupNumbersListValue>? phase1DhGroupNumbers;
  @override
  final _i2.BuiltList<Phase2DhGroupNumbersListValue>? phase2DhGroupNumbers;
  @override
  final _i2.BuiltList<IkeVersionsListValue>? ikeVersions;
  @override
  final String? startupAction;
  @override
  final VpnTunnelLogOptions? logOptions;
  @override
  final bool enableTunnelLifecycleControl;

  factory _$TunnelOption([void Function(TunnelOptionBuilder)? updates]) =>
      (new TunnelOptionBuilder()..update(updates))._build();

  _$TunnelOption._(
      {this.outsideIpAddress,
      this.tunnelInsideCidr,
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
    BuiltValueNullFieldError.checkNotNull(
        phase1LifetimeSeconds, r'TunnelOption', 'phase1LifetimeSeconds');
    BuiltValueNullFieldError.checkNotNull(
        phase2LifetimeSeconds, r'TunnelOption', 'phase2LifetimeSeconds');
    BuiltValueNullFieldError.checkNotNull(
        rekeyMarginTimeSeconds, r'TunnelOption', 'rekeyMarginTimeSeconds');
    BuiltValueNullFieldError.checkNotNull(
        rekeyFuzzPercentage, r'TunnelOption', 'rekeyFuzzPercentage');
    BuiltValueNullFieldError.checkNotNull(
        replayWindowSize, r'TunnelOption', 'replayWindowSize');
    BuiltValueNullFieldError.checkNotNull(
        dpdTimeoutSeconds, r'TunnelOption', 'dpdTimeoutSeconds');
    BuiltValueNullFieldError.checkNotNull(enableTunnelLifecycleControl,
        r'TunnelOption', 'enableTunnelLifecycleControl');
  }

  @override
  TunnelOption rebuild(void Function(TunnelOptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TunnelOptionBuilder toBuilder() => new TunnelOptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TunnelOption &&
        outsideIpAddress == other.outsideIpAddress &&
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
    _$hash = $jc(_$hash, outsideIpAddress.hashCode);
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

class TunnelOptionBuilder
    implements Builder<TunnelOption, TunnelOptionBuilder> {
  _$TunnelOption? _$v;

  String? _outsideIpAddress;
  String? get outsideIpAddress => _$this._outsideIpAddress;
  set outsideIpAddress(String? outsideIpAddress) =>
      _$this._outsideIpAddress = outsideIpAddress;

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

  _i2.ListBuilder<Phase1EncryptionAlgorithmsListValue>?
      _phase1EncryptionAlgorithms;
  _i2.ListBuilder<Phase1EncryptionAlgorithmsListValue>
      get phase1EncryptionAlgorithms => _$this._phase1EncryptionAlgorithms ??=
          new _i2.ListBuilder<Phase1EncryptionAlgorithmsListValue>();
  set phase1EncryptionAlgorithms(
          _i2.ListBuilder<Phase1EncryptionAlgorithmsListValue>?
              phase1EncryptionAlgorithms) =>
      _$this._phase1EncryptionAlgorithms = phase1EncryptionAlgorithms;

  _i2.ListBuilder<Phase2EncryptionAlgorithmsListValue>?
      _phase2EncryptionAlgorithms;
  _i2.ListBuilder<Phase2EncryptionAlgorithmsListValue>
      get phase2EncryptionAlgorithms => _$this._phase2EncryptionAlgorithms ??=
          new _i2.ListBuilder<Phase2EncryptionAlgorithmsListValue>();
  set phase2EncryptionAlgorithms(
          _i2.ListBuilder<Phase2EncryptionAlgorithmsListValue>?
              phase2EncryptionAlgorithms) =>
      _$this._phase2EncryptionAlgorithms = phase2EncryptionAlgorithms;

  _i2.ListBuilder<Phase1IntegrityAlgorithmsListValue>?
      _phase1IntegrityAlgorithms;
  _i2.ListBuilder<Phase1IntegrityAlgorithmsListValue>
      get phase1IntegrityAlgorithms => _$this._phase1IntegrityAlgorithms ??=
          new _i2.ListBuilder<Phase1IntegrityAlgorithmsListValue>();
  set phase1IntegrityAlgorithms(
          _i2.ListBuilder<Phase1IntegrityAlgorithmsListValue>?
              phase1IntegrityAlgorithms) =>
      _$this._phase1IntegrityAlgorithms = phase1IntegrityAlgorithms;

  _i2.ListBuilder<Phase2IntegrityAlgorithmsListValue>?
      _phase2IntegrityAlgorithms;
  _i2.ListBuilder<Phase2IntegrityAlgorithmsListValue>
      get phase2IntegrityAlgorithms => _$this._phase2IntegrityAlgorithms ??=
          new _i2.ListBuilder<Phase2IntegrityAlgorithmsListValue>();
  set phase2IntegrityAlgorithms(
          _i2.ListBuilder<Phase2IntegrityAlgorithmsListValue>?
              phase2IntegrityAlgorithms) =>
      _$this._phase2IntegrityAlgorithms = phase2IntegrityAlgorithms;

  _i2.ListBuilder<Phase1DhGroupNumbersListValue>? _phase1DhGroupNumbers;
  _i2.ListBuilder<Phase1DhGroupNumbersListValue> get phase1DhGroupNumbers =>
      _$this._phase1DhGroupNumbers ??=
          new _i2.ListBuilder<Phase1DhGroupNumbersListValue>();
  set phase1DhGroupNumbers(
          _i2.ListBuilder<Phase1DhGroupNumbersListValue>?
              phase1DhGroupNumbers) =>
      _$this._phase1DhGroupNumbers = phase1DhGroupNumbers;

  _i2.ListBuilder<Phase2DhGroupNumbersListValue>? _phase2DhGroupNumbers;
  _i2.ListBuilder<Phase2DhGroupNumbersListValue> get phase2DhGroupNumbers =>
      _$this._phase2DhGroupNumbers ??=
          new _i2.ListBuilder<Phase2DhGroupNumbersListValue>();
  set phase2DhGroupNumbers(
          _i2.ListBuilder<Phase2DhGroupNumbersListValue>?
              phase2DhGroupNumbers) =>
      _$this._phase2DhGroupNumbers = phase2DhGroupNumbers;

  _i2.ListBuilder<IkeVersionsListValue>? _ikeVersions;
  _i2.ListBuilder<IkeVersionsListValue> get ikeVersions =>
      _$this._ikeVersions ??= new _i2.ListBuilder<IkeVersionsListValue>();
  set ikeVersions(_i2.ListBuilder<IkeVersionsListValue>? ikeVersions) =>
      _$this._ikeVersions = ikeVersions;

  String? _startupAction;
  String? get startupAction => _$this._startupAction;
  set startupAction(String? startupAction) =>
      _$this._startupAction = startupAction;

  VpnTunnelLogOptionsBuilder? _logOptions;
  VpnTunnelLogOptionsBuilder get logOptions =>
      _$this._logOptions ??= new VpnTunnelLogOptionsBuilder();
  set logOptions(VpnTunnelLogOptionsBuilder? logOptions) =>
      _$this._logOptions = logOptions;

  bool? _enableTunnelLifecycleControl;
  bool? get enableTunnelLifecycleControl =>
      _$this._enableTunnelLifecycleControl;
  set enableTunnelLifecycleControl(bool? enableTunnelLifecycleControl) =>
      _$this._enableTunnelLifecycleControl = enableTunnelLifecycleControl;

  TunnelOptionBuilder() {
    TunnelOption._init(this);
  }

  TunnelOptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _outsideIpAddress = $v.outsideIpAddress;
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
  void replace(TunnelOption other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TunnelOption;
  }

  @override
  void update(void Function(TunnelOptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TunnelOption build() => _build();

  _$TunnelOption _build() {
    _$TunnelOption _$result;
    try {
      _$result = _$v ??
          new _$TunnelOption._(
              outsideIpAddress: outsideIpAddress,
              tunnelInsideCidr: tunnelInsideCidr,
              tunnelInsideIpv6Cidr: tunnelInsideIpv6Cidr,
              preSharedKey: preSharedKey,
              phase1LifetimeSeconds: BuiltValueNullFieldError.checkNotNull(
                  phase1LifetimeSeconds, r'TunnelOption', 'phase1LifetimeSeconds'),
              phase2LifetimeSeconds: BuiltValueNullFieldError.checkNotNull(
                  phase2LifetimeSeconds, r'TunnelOption', 'phase2LifetimeSeconds'),
              rekeyMarginTimeSeconds: BuiltValueNullFieldError.checkNotNull(
                  rekeyMarginTimeSeconds, r'TunnelOption', 'rekeyMarginTimeSeconds'),
              rekeyFuzzPercentage: BuiltValueNullFieldError.checkNotNull(
                  rekeyFuzzPercentage, r'TunnelOption', 'rekeyFuzzPercentage'),
              replayWindowSize: BuiltValueNullFieldError.checkNotNull(
                  replayWindowSize, r'TunnelOption', 'replayWindowSize'),
              dpdTimeoutSeconds: BuiltValueNullFieldError.checkNotNull(
                  dpdTimeoutSeconds, r'TunnelOption', 'dpdTimeoutSeconds'),
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
                  enableTunnelLifecycleControl,
                  r'TunnelOption',
                  'enableTunnelLifecycleControl'));
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
            r'TunnelOption', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
