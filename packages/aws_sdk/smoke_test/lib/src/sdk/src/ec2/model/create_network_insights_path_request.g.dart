// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_network_insights_path_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateNetworkInsightsPathRequest
    extends CreateNetworkInsightsPathRequest {
  @override
  final String? sourceIp;
  @override
  final String? destinationIp;
  @override
  final String? source;
  @override
  final String? destination;
  @override
  final Protocol? protocol;
  @override
  final int destinationPort;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;
  @override
  final String? clientToken;
  @override
  final PathRequestFilter? filterAtSource;
  @override
  final PathRequestFilter? filterAtDestination;

  factory _$CreateNetworkInsightsPathRequest(
          [void Function(CreateNetworkInsightsPathRequestBuilder)? updates]) =>
      (new CreateNetworkInsightsPathRequestBuilder()..update(updates))._build();

  _$CreateNetworkInsightsPathRequest._(
      {this.sourceIp,
      this.destinationIp,
      this.source,
      this.destination,
      this.protocol,
      required this.destinationPort,
      this.tagSpecifications,
      required this.dryRun,
      this.clientToken,
      this.filterAtSource,
      this.filterAtDestination})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(destinationPort,
        r'CreateNetworkInsightsPathRequest', 'destinationPort');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateNetworkInsightsPathRequest', 'dryRun');
  }

  @override
  CreateNetworkInsightsPathRequest rebuild(
          void Function(CreateNetworkInsightsPathRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateNetworkInsightsPathRequestBuilder toBuilder() =>
      new CreateNetworkInsightsPathRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateNetworkInsightsPathRequest &&
        sourceIp == other.sourceIp &&
        destinationIp == other.destinationIp &&
        source == other.source &&
        destination == other.destination &&
        protocol == other.protocol &&
        destinationPort == other.destinationPort &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun &&
        clientToken == other.clientToken &&
        filterAtSource == other.filterAtSource &&
        filterAtDestination == other.filterAtDestination;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceIp.hashCode);
    _$hash = $jc(_$hash, destinationIp.hashCode);
    _$hash = $jc(_$hash, source.hashCode);
    _$hash = $jc(_$hash, destination.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, destinationPort.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, filterAtSource.hashCode);
    _$hash = $jc(_$hash, filterAtDestination.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateNetworkInsightsPathRequestBuilder
    implements
        Builder<CreateNetworkInsightsPathRequest,
            CreateNetworkInsightsPathRequestBuilder> {
  _$CreateNetworkInsightsPathRequest? _$v;

  String? _sourceIp;
  String? get sourceIp => _$this._sourceIp;
  set sourceIp(String? sourceIp) => _$this._sourceIp = sourceIp;

  String? _destinationIp;
  String? get destinationIp => _$this._destinationIp;
  set destinationIp(String? destinationIp) =>
      _$this._destinationIp = destinationIp;

  String? _source;
  String? get source => _$this._source;
  set source(String? source) => _$this._source = source;

  String? _destination;
  String? get destination => _$this._destination;
  set destination(String? destination) => _$this._destination = destination;

  Protocol? _protocol;
  Protocol? get protocol => _$this._protocol;
  set protocol(Protocol? protocol) => _$this._protocol = protocol;

  int? _destinationPort;
  int? get destinationPort => _$this._destinationPort;
  set destinationPort(int? destinationPort) =>
      _$this._destinationPort = destinationPort;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  PathRequestFilterBuilder? _filterAtSource;
  PathRequestFilterBuilder get filterAtSource =>
      _$this._filterAtSource ??= new PathRequestFilterBuilder();
  set filterAtSource(PathRequestFilterBuilder? filterAtSource) =>
      _$this._filterAtSource = filterAtSource;

  PathRequestFilterBuilder? _filterAtDestination;
  PathRequestFilterBuilder get filterAtDestination =>
      _$this._filterAtDestination ??= new PathRequestFilterBuilder();
  set filterAtDestination(PathRequestFilterBuilder? filterAtDestination) =>
      _$this._filterAtDestination = filterAtDestination;

  CreateNetworkInsightsPathRequestBuilder() {
    CreateNetworkInsightsPathRequest._init(this);
  }

  CreateNetworkInsightsPathRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceIp = $v.sourceIp;
      _destinationIp = $v.destinationIp;
      _source = $v.source;
      _destination = $v.destination;
      _protocol = $v.protocol;
      _destinationPort = $v.destinationPort;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _clientToken = $v.clientToken;
      _filterAtSource = $v.filterAtSource?.toBuilder();
      _filterAtDestination = $v.filterAtDestination?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateNetworkInsightsPathRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateNetworkInsightsPathRequest;
  }

  @override
  void update(void Function(CreateNetworkInsightsPathRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateNetworkInsightsPathRequest build() => _build();

  _$CreateNetworkInsightsPathRequest _build() {
    _$CreateNetworkInsightsPathRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateNetworkInsightsPathRequest._(
              sourceIp: sourceIp,
              destinationIp: destinationIp,
              source: source,
              destination: destination,
              protocol: protocol,
              destinationPort: BuiltValueNullFieldError.checkNotNull(
                  destinationPort,
                  r'CreateNetworkInsightsPathRequest',
                  'destinationPort'),
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateNetworkInsightsPathRequest', 'dryRun'),
              clientToken: clientToken,
              filterAtSource: _filterAtSource?.build(),
              filterAtDestination: _filterAtDestination?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();

        _$failedField = 'filterAtSource';
        _filterAtSource?.build();
        _$failedField = 'filterAtDestination';
        _filterAtDestination?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateNetworkInsightsPathRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
