// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packet_header_statement.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PacketHeaderStatement extends PacketHeaderStatement {
  @override
  final _i2.BuiltList<String>? sourceAddresses;
  @override
  final _i2.BuiltList<String>? destinationAddresses;
  @override
  final _i2.BuiltList<String>? sourcePorts;
  @override
  final _i2.BuiltList<String>? destinationPorts;
  @override
  final _i2.BuiltList<String>? sourcePrefixLists;
  @override
  final _i2.BuiltList<String>? destinationPrefixLists;
  @override
  final _i2.BuiltList<Protocol>? protocols;

  factory _$PacketHeaderStatement(
          [void Function(PacketHeaderStatementBuilder)? updates]) =>
      (new PacketHeaderStatementBuilder()..update(updates))._build();

  _$PacketHeaderStatement._(
      {this.sourceAddresses,
      this.destinationAddresses,
      this.sourcePorts,
      this.destinationPorts,
      this.sourcePrefixLists,
      this.destinationPrefixLists,
      this.protocols})
      : super._();

  @override
  PacketHeaderStatement rebuild(
          void Function(PacketHeaderStatementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PacketHeaderStatementBuilder toBuilder() =>
      new PacketHeaderStatementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PacketHeaderStatement &&
        sourceAddresses == other.sourceAddresses &&
        destinationAddresses == other.destinationAddresses &&
        sourcePorts == other.sourcePorts &&
        destinationPorts == other.destinationPorts &&
        sourcePrefixLists == other.sourcePrefixLists &&
        destinationPrefixLists == other.destinationPrefixLists &&
        protocols == other.protocols;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceAddresses.hashCode);
    _$hash = $jc(_$hash, destinationAddresses.hashCode);
    _$hash = $jc(_$hash, sourcePorts.hashCode);
    _$hash = $jc(_$hash, destinationPorts.hashCode);
    _$hash = $jc(_$hash, sourcePrefixLists.hashCode);
    _$hash = $jc(_$hash, destinationPrefixLists.hashCode);
    _$hash = $jc(_$hash, protocols.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PacketHeaderStatementBuilder
    implements Builder<PacketHeaderStatement, PacketHeaderStatementBuilder> {
  _$PacketHeaderStatement? _$v;

  _i2.ListBuilder<String>? _sourceAddresses;
  _i2.ListBuilder<String> get sourceAddresses =>
      _$this._sourceAddresses ??= new _i2.ListBuilder<String>();
  set sourceAddresses(_i2.ListBuilder<String>? sourceAddresses) =>
      _$this._sourceAddresses = sourceAddresses;

  _i2.ListBuilder<String>? _destinationAddresses;
  _i2.ListBuilder<String> get destinationAddresses =>
      _$this._destinationAddresses ??= new _i2.ListBuilder<String>();
  set destinationAddresses(_i2.ListBuilder<String>? destinationAddresses) =>
      _$this._destinationAddresses = destinationAddresses;

  _i2.ListBuilder<String>? _sourcePorts;
  _i2.ListBuilder<String> get sourcePorts =>
      _$this._sourcePorts ??= new _i2.ListBuilder<String>();
  set sourcePorts(_i2.ListBuilder<String>? sourcePorts) =>
      _$this._sourcePorts = sourcePorts;

  _i2.ListBuilder<String>? _destinationPorts;
  _i2.ListBuilder<String> get destinationPorts =>
      _$this._destinationPorts ??= new _i2.ListBuilder<String>();
  set destinationPorts(_i2.ListBuilder<String>? destinationPorts) =>
      _$this._destinationPorts = destinationPorts;

  _i2.ListBuilder<String>? _sourcePrefixLists;
  _i2.ListBuilder<String> get sourcePrefixLists =>
      _$this._sourcePrefixLists ??= new _i2.ListBuilder<String>();
  set sourcePrefixLists(_i2.ListBuilder<String>? sourcePrefixLists) =>
      _$this._sourcePrefixLists = sourcePrefixLists;

  _i2.ListBuilder<String>? _destinationPrefixLists;
  _i2.ListBuilder<String> get destinationPrefixLists =>
      _$this._destinationPrefixLists ??= new _i2.ListBuilder<String>();
  set destinationPrefixLists(_i2.ListBuilder<String>? destinationPrefixLists) =>
      _$this._destinationPrefixLists = destinationPrefixLists;

  _i2.ListBuilder<Protocol>? _protocols;
  _i2.ListBuilder<Protocol> get protocols =>
      _$this._protocols ??= new _i2.ListBuilder<Protocol>();
  set protocols(_i2.ListBuilder<Protocol>? protocols) =>
      _$this._protocols = protocols;

  PacketHeaderStatementBuilder();

  PacketHeaderStatementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceAddresses = $v.sourceAddresses?.toBuilder();
      _destinationAddresses = $v.destinationAddresses?.toBuilder();
      _sourcePorts = $v.sourcePorts?.toBuilder();
      _destinationPorts = $v.destinationPorts?.toBuilder();
      _sourcePrefixLists = $v.sourcePrefixLists?.toBuilder();
      _destinationPrefixLists = $v.destinationPrefixLists?.toBuilder();
      _protocols = $v.protocols?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PacketHeaderStatement other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PacketHeaderStatement;
  }

  @override
  void update(void Function(PacketHeaderStatementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PacketHeaderStatement build() => _build();

  _$PacketHeaderStatement _build() {
    _$PacketHeaderStatement _$result;
    try {
      _$result = _$v ??
          new _$PacketHeaderStatement._(
              sourceAddresses: _sourceAddresses?.build(),
              destinationAddresses: _destinationAddresses?.build(),
              sourcePorts: _sourcePorts?.build(),
              destinationPorts: _destinationPorts?.build(),
              sourcePrefixLists: _sourcePrefixLists?.build(),
              destinationPrefixLists: _destinationPrefixLists?.build(),
              protocols: _protocols?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sourceAddresses';
        _sourceAddresses?.build();
        _$failedField = 'destinationAddresses';
        _destinationAddresses?.build();
        _$failedField = 'sourcePorts';
        _sourcePorts?.build();
        _$failedField = 'destinationPorts';
        _destinationPorts?.build();
        _$failedField = 'sourcePrefixLists';
        _sourcePrefixLists?.build();
        _$failedField = 'destinationPrefixLists';
        _destinationPrefixLists?.build();
        _$failedField = 'protocols';
        _protocols?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PacketHeaderStatement', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
