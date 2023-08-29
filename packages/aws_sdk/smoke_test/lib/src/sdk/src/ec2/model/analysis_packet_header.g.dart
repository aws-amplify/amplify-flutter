// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_packet_header.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalysisPacketHeader extends AnalysisPacketHeader {
  @override
  final _i2.BuiltList<String>? destinationAddresses;
  @override
  final _i2.BuiltList<PortRange>? destinationPortRanges;
  @override
  final String? protocol;
  @override
  final _i2.BuiltList<String>? sourceAddresses;
  @override
  final _i2.BuiltList<PortRange>? sourcePortRanges;

  factory _$AnalysisPacketHeader(
          [void Function(AnalysisPacketHeaderBuilder)? updates]) =>
      (new AnalysisPacketHeaderBuilder()..update(updates))._build();

  _$AnalysisPacketHeader._(
      {this.destinationAddresses,
      this.destinationPortRanges,
      this.protocol,
      this.sourceAddresses,
      this.sourcePortRanges})
      : super._();

  @override
  AnalysisPacketHeader rebuild(
          void Function(AnalysisPacketHeaderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalysisPacketHeaderBuilder toBuilder() =>
      new AnalysisPacketHeaderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalysisPacketHeader &&
        destinationAddresses == other.destinationAddresses &&
        destinationPortRanges == other.destinationPortRanges &&
        protocol == other.protocol &&
        sourceAddresses == other.sourceAddresses &&
        sourcePortRanges == other.sourcePortRanges;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, destinationAddresses.hashCode);
    _$hash = $jc(_$hash, destinationPortRanges.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, sourceAddresses.hashCode);
    _$hash = $jc(_$hash, sourcePortRanges.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AnalysisPacketHeaderBuilder
    implements Builder<AnalysisPacketHeader, AnalysisPacketHeaderBuilder> {
  _$AnalysisPacketHeader? _$v;

  _i2.ListBuilder<String>? _destinationAddresses;
  _i2.ListBuilder<String> get destinationAddresses =>
      _$this._destinationAddresses ??= new _i2.ListBuilder<String>();
  set destinationAddresses(_i2.ListBuilder<String>? destinationAddresses) =>
      _$this._destinationAddresses = destinationAddresses;

  _i2.ListBuilder<PortRange>? _destinationPortRanges;
  _i2.ListBuilder<PortRange> get destinationPortRanges =>
      _$this._destinationPortRanges ??= new _i2.ListBuilder<PortRange>();
  set destinationPortRanges(
          _i2.ListBuilder<PortRange>? destinationPortRanges) =>
      _$this._destinationPortRanges = destinationPortRanges;

  String? _protocol;
  String? get protocol => _$this._protocol;
  set protocol(String? protocol) => _$this._protocol = protocol;

  _i2.ListBuilder<String>? _sourceAddresses;
  _i2.ListBuilder<String> get sourceAddresses =>
      _$this._sourceAddresses ??= new _i2.ListBuilder<String>();
  set sourceAddresses(_i2.ListBuilder<String>? sourceAddresses) =>
      _$this._sourceAddresses = sourceAddresses;

  _i2.ListBuilder<PortRange>? _sourcePortRanges;
  _i2.ListBuilder<PortRange> get sourcePortRanges =>
      _$this._sourcePortRanges ??= new _i2.ListBuilder<PortRange>();
  set sourcePortRanges(_i2.ListBuilder<PortRange>? sourcePortRanges) =>
      _$this._sourcePortRanges = sourcePortRanges;

  AnalysisPacketHeaderBuilder();

  AnalysisPacketHeaderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _destinationAddresses = $v.destinationAddresses?.toBuilder();
      _destinationPortRanges = $v.destinationPortRanges?.toBuilder();
      _protocol = $v.protocol;
      _sourceAddresses = $v.sourceAddresses?.toBuilder();
      _sourcePortRanges = $v.sourcePortRanges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalysisPacketHeader other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnalysisPacketHeader;
  }

  @override
  void update(void Function(AnalysisPacketHeaderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalysisPacketHeader build() => _build();

  _$AnalysisPacketHeader _build() {
    _$AnalysisPacketHeader _$result;
    try {
      _$result = _$v ??
          new _$AnalysisPacketHeader._(
              destinationAddresses: _destinationAddresses?.build(),
              destinationPortRanges: _destinationPortRanges?.build(),
              protocol: protocol,
              sourceAddresses: _sourceAddresses?.build(),
              sourcePortRanges: _sourcePortRanges?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'destinationAddresses';
        _destinationAddresses?.build();
        _$failedField = 'destinationPortRanges';
        _destinationPortRanges?.build();

        _$failedField = 'sourceAddresses';
        _sourceAddresses?.build();
        _$failedField = 'sourcePortRanges';
        _sourcePortRanges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AnalysisPacketHeader', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
