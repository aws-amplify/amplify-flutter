// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_insights_path.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkInsightsPath extends NetworkInsightsPath {
  @override
  final String? networkInsightsPathId;
  @override
  final String? networkInsightsPathArn;
  @override
  final DateTime? createdDate;
  @override
  final String? source;
  @override
  final String? destination;
  @override
  final String? sourceArn;
  @override
  final String? destinationArn;
  @override
  final String? sourceIp;
  @override
  final String? destinationIp;
  @override
  final Protocol? protocol;
  @override
  final int destinationPort;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final PathFilter? filterAtSource;
  @override
  final PathFilter? filterAtDestination;

  factory _$NetworkInsightsPath(
          [void Function(NetworkInsightsPathBuilder)? updates]) =>
      (new NetworkInsightsPathBuilder()..update(updates))._build();

  _$NetworkInsightsPath._(
      {this.networkInsightsPathId,
      this.networkInsightsPathArn,
      this.createdDate,
      this.source,
      this.destination,
      this.sourceArn,
      this.destinationArn,
      this.sourceIp,
      this.destinationIp,
      this.protocol,
      required this.destinationPort,
      this.tags,
      this.filterAtSource,
      this.filterAtDestination})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        destinationPort, r'NetworkInsightsPath', 'destinationPort');
  }

  @override
  NetworkInsightsPath rebuild(
          void Function(NetworkInsightsPathBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkInsightsPathBuilder toBuilder() =>
      new NetworkInsightsPathBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkInsightsPath &&
        networkInsightsPathId == other.networkInsightsPathId &&
        networkInsightsPathArn == other.networkInsightsPathArn &&
        createdDate == other.createdDate &&
        source == other.source &&
        destination == other.destination &&
        sourceArn == other.sourceArn &&
        destinationArn == other.destinationArn &&
        sourceIp == other.sourceIp &&
        destinationIp == other.destinationIp &&
        protocol == other.protocol &&
        destinationPort == other.destinationPort &&
        tags == other.tags &&
        filterAtSource == other.filterAtSource &&
        filterAtDestination == other.filterAtDestination;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsPathId.hashCode);
    _$hash = $jc(_$hash, networkInsightsPathArn.hashCode);
    _$hash = $jc(_$hash, createdDate.hashCode);
    _$hash = $jc(_$hash, source.hashCode);
    _$hash = $jc(_$hash, destination.hashCode);
    _$hash = $jc(_$hash, sourceArn.hashCode);
    _$hash = $jc(_$hash, destinationArn.hashCode);
    _$hash = $jc(_$hash, sourceIp.hashCode);
    _$hash = $jc(_$hash, destinationIp.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, destinationPort.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, filterAtSource.hashCode);
    _$hash = $jc(_$hash, filterAtDestination.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NetworkInsightsPathBuilder
    implements Builder<NetworkInsightsPath, NetworkInsightsPathBuilder> {
  _$NetworkInsightsPath? _$v;

  String? _networkInsightsPathId;
  String? get networkInsightsPathId => _$this._networkInsightsPathId;
  set networkInsightsPathId(String? networkInsightsPathId) =>
      _$this._networkInsightsPathId = networkInsightsPathId;

  String? _networkInsightsPathArn;
  String? get networkInsightsPathArn => _$this._networkInsightsPathArn;
  set networkInsightsPathArn(String? networkInsightsPathArn) =>
      _$this._networkInsightsPathArn = networkInsightsPathArn;

  DateTime? _createdDate;
  DateTime? get createdDate => _$this._createdDate;
  set createdDate(DateTime? createdDate) => _$this._createdDate = createdDate;

  String? _source;
  String? get source => _$this._source;
  set source(String? source) => _$this._source = source;

  String? _destination;
  String? get destination => _$this._destination;
  set destination(String? destination) => _$this._destination = destination;

  String? _sourceArn;
  String? get sourceArn => _$this._sourceArn;
  set sourceArn(String? sourceArn) => _$this._sourceArn = sourceArn;

  String? _destinationArn;
  String? get destinationArn => _$this._destinationArn;
  set destinationArn(String? destinationArn) =>
      _$this._destinationArn = destinationArn;

  String? _sourceIp;
  String? get sourceIp => _$this._sourceIp;
  set sourceIp(String? sourceIp) => _$this._sourceIp = sourceIp;

  String? _destinationIp;
  String? get destinationIp => _$this._destinationIp;
  set destinationIp(String? destinationIp) =>
      _$this._destinationIp = destinationIp;

  Protocol? _protocol;
  Protocol? get protocol => _$this._protocol;
  set protocol(Protocol? protocol) => _$this._protocol = protocol;

  int? _destinationPort;
  int? get destinationPort => _$this._destinationPort;
  set destinationPort(int? destinationPort) =>
      _$this._destinationPort = destinationPort;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  PathFilterBuilder? _filterAtSource;
  PathFilterBuilder get filterAtSource =>
      _$this._filterAtSource ??= new PathFilterBuilder();
  set filterAtSource(PathFilterBuilder? filterAtSource) =>
      _$this._filterAtSource = filterAtSource;

  PathFilterBuilder? _filterAtDestination;
  PathFilterBuilder get filterAtDestination =>
      _$this._filterAtDestination ??= new PathFilterBuilder();
  set filterAtDestination(PathFilterBuilder? filterAtDestination) =>
      _$this._filterAtDestination = filterAtDestination;

  NetworkInsightsPathBuilder() {
    NetworkInsightsPath._init(this);
  }

  NetworkInsightsPathBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsPathId = $v.networkInsightsPathId;
      _networkInsightsPathArn = $v.networkInsightsPathArn;
      _createdDate = $v.createdDate;
      _source = $v.source;
      _destination = $v.destination;
      _sourceArn = $v.sourceArn;
      _destinationArn = $v.destinationArn;
      _sourceIp = $v.sourceIp;
      _destinationIp = $v.destinationIp;
      _protocol = $v.protocol;
      _destinationPort = $v.destinationPort;
      _tags = $v.tags?.toBuilder();
      _filterAtSource = $v.filterAtSource?.toBuilder();
      _filterAtDestination = $v.filterAtDestination?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkInsightsPath other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkInsightsPath;
  }

  @override
  void update(void Function(NetworkInsightsPathBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkInsightsPath build() => _build();

  _$NetworkInsightsPath _build() {
    _$NetworkInsightsPath _$result;
    try {
      _$result = _$v ??
          new _$NetworkInsightsPath._(
              networkInsightsPathId: networkInsightsPathId,
              networkInsightsPathArn: networkInsightsPathArn,
              createdDate: createdDate,
              source: source,
              destination: destination,
              sourceArn: sourceArn,
              destinationArn: destinationArn,
              sourceIp: sourceIp,
              destinationIp: destinationIp,
              protocol: protocol,
              destinationPort: BuiltValueNullFieldError.checkNotNull(
                  destinationPort, r'NetworkInsightsPath', 'destinationPort'),
              tags: _tags?.build(),
              filterAtSource: _filterAtSource?.build(),
              filterAtDestination: _filterAtDestination?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'filterAtSource';
        _filterAtSource?.build();
        _$failedField = 'filterAtDestination';
        _filterAtDestination?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NetworkInsightsPath', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
