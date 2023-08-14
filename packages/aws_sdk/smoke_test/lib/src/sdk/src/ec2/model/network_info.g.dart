// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkInfo extends NetworkInfo {
  @override
  final String? networkPerformance;
  @override
  final int? maximumNetworkInterfaces;
  @override
  final int? maximumNetworkCards;
  @override
  final int? defaultNetworkCardIndex;
  @override
  final _i2.BuiltList<NetworkCardInfo>? networkCards;
  @override
  final int? ipv4AddressesPerInterface;
  @override
  final int? ipv6AddressesPerInterface;
  @override
  final bool? ipv6Supported;
  @override
  final EnaSupport? enaSupport;
  @override
  final bool? efaSupported;
  @override
  final EfaInfo? efaInfo;
  @override
  final bool? encryptionInTransitSupported;
  @override
  final bool? enaSrdSupported;

  factory _$NetworkInfo([void Function(NetworkInfoBuilder)? updates]) =>
      (new NetworkInfoBuilder()..update(updates))._build();

  _$NetworkInfo._(
      {this.networkPerformance,
      this.maximumNetworkInterfaces,
      this.maximumNetworkCards,
      this.defaultNetworkCardIndex,
      this.networkCards,
      this.ipv4AddressesPerInterface,
      this.ipv6AddressesPerInterface,
      this.ipv6Supported,
      this.enaSupport,
      this.efaSupported,
      this.efaInfo,
      this.encryptionInTransitSupported,
      this.enaSrdSupported})
      : super._();

  @override
  NetworkInfo rebuild(void Function(NetworkInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkInfoBuilder toBuilder() => new NetworkInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkInfo &&
        networkPerformance == other.networkPerformance &&
        maximumNetworkInterfaces == other.maximumNetworkInterfaces &&
        maximumNetworkCards == other.maximumNetworkCards &&
        defaultNetworkCardIndex == other.defaultNetworkCardIndex &&
        networkCards == other.networkCards &&
        ipv4AddressesPerInterface == other.ipv4AddressesPerInterface &&
        ipv6AddressesPerInterface == other.ipv6AddressesPerInterface &&
        ipv6Supported == other.ipv6Supported &&
        enaSupport == other.enaSupport &&
        efaSupported == other.efaSupported &&
        efaInfo == other.efaInfo &&
        encryptionInTransitSupported == other.encryptionInTransitSupported &&
        enaSrdSupported == other.enaSrdSupported;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkPerformance.hashCode);
    _$hash = $jc(_$hash, maximumNetworkInterfaces.hashCode);
    _$hash = $jc(_$hash, maximumNetworkCards.hashCode);
    _$hash = $jc(_$hash, defaultNetworkCardIndex.hashCode);
    _$hash = $jc(_$hash, networkCards.hashCode);
    _$hash = $jc(_$hash, ipv4AddressesPerInterface.hashCode);
    _$hash = $jc(_$hash, ipv6AddressesPerInterface.hashCode);
    _$hash = $jc(_$hash, ipv6Supported.hashCode);
    _$hash = $jc(_$hash, enaSupport.hashCode);
    _$hash = $jc(_$hash, efaSupported.hashCode);
    _$hash = $jc(_$hash, efaInfo.hashCode);
    _$hash = $jc(_$hash, encryptionInTransitSupported.hashCode);
    _$hash = $jc(_$hash, enaSrdSupported.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NetworkInfoBuilder implements Builder<NetworkInfo, NetworkInfoBuilder> {
  _$NetworkInfo? _$v;

  String? _networkPerformance;
  String? get networkPerformance => _$this._networkPerformance;
  set networkPerformance(String? networkPerformance) =>
      _$this._networkPerformance = networkPerformance;

  int? _maximumNetworkInterfaces;
  int? get maximumNetworkInterfaces => _$this._maximumNetworkInterfaces;
  set maximumNetworkInterfaces(int? maximumNetworkInterfaces) =>
      _$this._maximumNetworkInterfaces = maximumNetworkInterfaces;

  int? _maximumNetworkCards;
  int? get maximumNetworkCards => _$this._maximumNetworkCards;
  set maximumNetworkCards(int? maximumNetworkCards) =>
      _$this._maximumNetworkCards = maximumNetworkCards;

  int? _defaultNetworkCardIndex;
  int? get defaultNetworkCardIndex => _$this._defaultNetworkCardIndex;
  set defaultNetworkCardIndex(int? defaultNetworkCardIndex) =>
      _$this._defaultNetworkCardIndex = defaultNetworkCardIndex;

  _i2.ListBuilder<NetworkCardInfo>? _networkCards;
  _i2.ListBuilder<NetworkCardInfo> get networkCards =>
      _$this._networkCards ??= new _i2.ListBuilder<NetworkCardInfo>();
  set networkCards(_i2.ListBuilder<NetworkCardInfo>? networkCards) =>
      _$this._networkCards = networkCards;

  int? _ipv4AddressesPerInterface;
  int? get ipv4AddressesPerInterface => _$this._ipv4AddressesPerInterface;
  set ipv4AddressesPerInterface(int? ipv4AddressesPerInterface) =>
      _$this._ipv4AddressesPerInterface = ipv4AddressesPerInterface;

  int? _ipv6AddressesPerInterface;
  int? get ipv6AddressesPerInterface => _$this._ipv6AddressesPerInterface;
  set ipv6AddressesPerInterface(int? ipv6AddressesPerInterface) =>
      _$this._ipv6AddressesPerInterface = ipv6AddressesPerInterface;

  bool? _ipv6Supported;
  bool? get ipv6Supported => _$this._ipv6Supported;
  set ipv6Supported(bool? ipv6Supported) =>
      _$this._ipv6Supported = ipv6Supported;

  EnaSupport? _enaSupport;
  EnaSupport? get enaSupport => _$this._enaSupport;
  set enaSupport(EnaSupport? enaSupport) => _$this._enaSupport = enaSupport;

  bool? _efaSupported;
  bool? get efaSupported => _$this._efaSupported;
  set efaSupported(bool? efaSupported) => _$this._efaSupported = efaSupported;

  EfaInfoBuilder? _efaInfo;
  EfaInfoBuilder get efaInfo => _$this._efaInfo ??= new EfaInfoBuilder();
  set efaInfo(EfaInfoBuilder? efaInfo) => _$this._efaInfo = efaInfo;

  bool? _encryptionInTransitSupported;
  bool? get encryptionInTransitSupported =>
      _$this._encryptionInTransitSupported;
  set encryptionInTransitSupported(bool? encryptionInTransitSupported) =>
      _$this._encryptionInTransitSupported = encryptionInTransitSupported;

  bool? _enaSrdSupported;
  bool? get enaSrdSupported => _$this._enaSrdSupported;
  set enaSrdSupported(bool? enaSrdSupported) =>
      _$this._enaSrdSupported = enaSrdSupported;

  NetworkInfoBuilder();

  NetworkInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkPerformance = $v.networkPerformance;
      _maximumNetworkInterfaces = $v.maximumNetworkInterfaces;
      _maximumNetworkCards = $v.maximumNetworkCards;
      _defaultNetworkCardIndex = $v.defaultNetworkCardIndex;
      _networkCards = $v.networkCards?.toBuilder();
      _ipv4AddressesPerInterface = $v.ipv4AddressesPerInterface;
      _ipv6AddressesPerInterface = $v.ipv6AddressesPerInterface;
      _ipv6Supported = $v.ipv6Supported;
      _enaSupport = $v.enaSupport;
      _efaSupported = $v.efaSupported;
      _efaInfo = $v.efaInfo?.toBuilder();
      _encryptionInTransitSupported = $v.encryptionInTransitSupported;
      _enaSrdSupported = $v.enaSrdSupported;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkInfo;
  }

  @override
  void update(void Function(NetworkInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkInfo build() => _build();

  _$NetworkInfo _build() {
    _$NetworkInfo _$result;
    try {
      _$result = _$v ??
          new _$NetworkInfo._(
              networkPerformance: networkPerformance,
              maximumNetworkInterfaces: maximumNetworkInterfaces,
              maximumNetworkCards: maximumNetworkCards,
              defaultNetworkCardIndex: defaultNetworkCardIndex,
              networkCards: _networkCards?.build(),
              ipv4AddressesPerInterface: ipv4AddressesPerInterface,
              ipv6AddressesPerInterface: ipv6AddressesPerInterface,
              ipv6Supported: ipv6Supported,
              enaSupport: enaSupport,
              efaSupported: efaSupported,
              efaInfo: _efaInfo?.build(),
              encryptionInTransitSupported: encryptionInTransitSupported,
              enaSrdSupported: enaSrdSupported);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkCards';
        _networkCards?.build();

        _$failedField = 'efaInfo';
        _efaInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NetworkInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
