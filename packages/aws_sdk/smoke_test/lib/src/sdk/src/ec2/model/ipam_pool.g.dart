// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipam_pool.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IpamPool extends IpamPool {
  @override
  final String? ownerId;
  @override
  final String? ipamPoolId;
  @override
  final String? sourceIpamPoolId;
  @override
  final String? ipamPoolArn;
  @override
  final String? ipamScopeArn;
  @override
  final IpamScopeType? ipamScopeType;
  @override
  final String? ipamArn;
  @override
  final String? ipamRegion;
  @override
  final String? locale;
  @override
  final int poolDepth;
  @override
  final IpamPoolState? state;
  @override
  final String? stateMessage;
  @override
  final String? description;
  @override
  final bool autoImport;
  @override
  final bool publiclyAdvertisable;
  @override
  final AddressFamily? addressFamily;
  @override
  final int allocationMinNetmaskLength;
  @override
  final int allocationMaxNetmaskLength;
  @override
  final int allocationDefaultNetmaskLength;
  @override
  final _i2.BuiltList<IpamResourceTag>? allocationResourceTags;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final IpamPoolAwsService? awsService;
  @override
  final IpamPoolPublicIpSource? publicIpSource;

  factory _$IpamPool([void Function(IpamPoolBuilder)? updates]) =>
      (new IpamPoolBuilder()..update(updates))._build();

  _$IpamPool._(
      {this.ownerId,
      this.ipamPoolId,
      this.sourceIpamPoolId,
      this.ipamPoolArn,
      this.ipamScopeArn,
      this.ipamScopeType,
      this.ipamArn,
      this.ipamRegion,
      this.locale,
      required this.poolDepth,
      this.state,
      this.stateMessage,
      this.description,
      required this.autoImport,
      required this.publiclyAdvertisable,
      this.addressFamily,
      required this.allocationMinNetmaskLength,
      required this.allocationMaxNetmaskLength,
      required this.allocationDefaultNetmaskLength,
      this.allocationResourceTags,
      this.tags,
      this.awsService,
      this.publicIpSource})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(poolDepth, r'IpamPool', 'poolDepth');
    BuiltValueNullFieldError.checkNotNull(
        autoImport, r'IpamPool', 'autoImport');
    BuiltValueNullFieldError.checkNotNull(
        publiclyAdvertisable, r'IpamPool', 'publiclyAdvertisable');
    BuiltValueNullFieldError.checkNotNull(
        allocationMinNetmaskLength, r'IpamPool', 'allocationMinNetmaskLength');
    BuiltValueNullFieldError.checkNotNull(
        allocationMaxNetmaskLength, r'IpamPool', 'allocationMaxNetmaskLength');
    BuiltValueNullFieldError.checkNotNull(allocationDefaultNetmaskLength,
        r'IpamPool', 'allocationDefaultNetmaskLength');
  }

  @override
  IpamPool rebuild(void Function(IpamPoolBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpamPoolBuilder toBuilder() => new IpamPoolBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpamPool &&
        ownerId == other.ownerId &&
        ipamPoolId == other.ipamPoolId &&
        sourceIpamPoolId == other.sourceIpamPoolId &&
        ipamPoolArn == other.ipamPoolArn &&
        ipamScopeArn == other.ipamScopeArn &&
        ipamScopeType == other.ipamScopeType &&
        ipamArn == other.ipamArn &&
        ipamRegion == other.ipamRegion &&
        locale == other.locale &&
        poolDepth == other.poolDepth &&
        state == other.state &&
        stateMessage == other.stateMessage &&
        description == other.description &&
        autoImport == other.autoImport &&
        publiclyAdvertisable == other.publiclyAdvertisable &&
        addressFamily == other.addressFamily &&
        allocationMinNetmaskLength == other.allocationMinNetmaskLength &&
        allocationMaxNetmaskLength == other.allocationMaxNetmaskLength &&
        allocationDefaultNetmaskLength ==
            other.allocationDefaultNetmaskLength &&
        allocationResourceTags == other.allocationResourceTags &&
        tags == other.tags &&
        awsService == other.awsService &&
        publicIpSource == other.publicIpSource;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, ipamPoolId.hashCode);
    _$hash = $jc(_$hash, sourceIpamPoolId.hashCode);
    _$hash = $jc(_$hash, ipamPoolArn.hashCode);
    _$hash = $jc(_$hash, ipamScopeArn.hashCode);
    _$hash = $jc(_$hash, ipamScopeType.hashCode);
    _$hash = $jc(_$hash, ipamArn.hashCode);
    _$hash = $jc(_$hash, ipamRegion.hashCode);
    _$hash = $jc(_$hash, locale.hashCode);
    _$hash = $jc(_$hash, poolDepth.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, stateMessage.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, autoImport.hashCode);
    _$hash = $jc(_$hash, publiclyAdvertisable.hashCode);
    _$hash = $jc(_$hash, addressFamily.hashCode);
    _$hash = $jc(_$hash, allocationMinNetmaskLength.hashCode);
    _$hash = $jc(_$hash, allocationMaxNetmaskLength.hashCode);
    _$hash = $jc(_$hash, allocationDefaultNetmaskLength.hashCode);
    _$hash = $jc(_$hash, allocationResourceTags.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, awsService.hashCode);
    _$hash = $jc(_$hash, publicIpSource.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IpamPoolBuilder implements Builder<IpamPool, IpamPoolBuilder> {
  _$IpamPool? _$v;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _ipamPoolId;
  String? get ipamPoolId => _$this._ipamPoolId;
  set ipamPoolId(String? ipamPoolId) => _$this._ipamPoolId = ipamPoolId;

  String? _sourceIpamPoolId;
  String? get sourceIpamPoolId => _$this._sourceIpamPoolId;
  set sourceIpamPoolId(String? sourceIpamPoolId) =>
      _$this._sourceIpamPoolId = sourceIpamPoolId;

  String? _ipamPoolArn;
  String? get ipamPoolArn => _$this._ipamPoolArn;
  set ipamPoolArn(String? ipamPoolArn) => _$this._ipamPoolArn = ipamPoolArn;

  String? _ipamScopeArn;
  String? get ipamScopeArn => _$this._ipamScopeArn;
  set ipamScopeArn(String? ipamScopeArn) => _$this._ipamScopeArn = ipamScopeArn;

  IpamScopeType? _ipamScopeType;
  IpamScopeType? get ipamScopeType => _$this._ipamScopeType;
  set ipamScopeType(IpamScopeType? ipamScopeType) =>
      _$this._ipamScopeType = ipamScopeType;

  String? _ipamArn;
  String? get ipamArn => _$this._ipamArn;
  set ipamArn(String? ipamArn) => _$this._ipamArn = ipamArn;

  String? _ipamRegion;
  String? get ipamRegion => _$this._ipamRegion;
  set ipamRegion(String? ipamRegion) => _$this._ipamRegion = ipamRegion;

  String? _locale;
  String? get locale => _$this._locale;
  set locale(String? locale) => _$this._locale = locale;

  int? _poolDepth;
  int? get poolDepth => _$this._poolDepth;
  set poolDepth(int? poolDepth) => _$this._poolDepth = poolDepth;

  IpamPoolState? _state;
  IpamPoolState? get state => _$this._state;
  set state(IpamPoolState? state) => _$this._state = state;

  String? _stateMessage;
  String? get stateMessage => _$this._stateMessage;
  set stateMessage(String? stateMessage) => _$this._stateMessage = stateMessage;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _autoImport;
  bool? get autoImport => _$this._autoImport;
  set autoImport(bool? autoImport) => _$this._autoImport = autoImport;

  bool? _publiclyAdvertisable;
  bool? get publiclyAdvertisable => _$this._publiclyAdvertisable;
  set publiclyAdvertisable(bool? publiclyAdvertisable) =>
      _$this._publiclyAdvertisable = publiclyAdvertisable;

  AddressFamily? _addressFamily;
  AddressFamily? get addressFamily => _$this._addressFamily;
  set addressFamily(AddressFamily? addressFamily) =>
      _$this._addressFamily = addressFamily;

  int? _allocationMinNetmaskLength;
  int? get allocationMinNetmaskLength => _$this._allocationMinNetmaskLength;
  set allocationMinNetmaskLength(int? allocationMinNetmaskLength) =>
      _$this._allocationMinNetmaskLength = allocationMinNetmaskLength;

  int? _allocationMaxNetmaskLength;
  int? get allocationMaxNetmaskLength => _$this._allocationMaxNetmaskLength;
  set allocationMaxNetmaskLength(int? allocationMaxNetmaskLength) =>
      _$this._allocationMaxNetmaskLength = allocationMaxNetmaskLength;

  int? _allocationDefaultNetmaskLength;
  int? get allocationDefaultNetmaskLength =>
      _$this._allocationDefaultNetmaskLength;
  set allocationDefaultNetmaskLength(int? allocationDefaultNetmaskLength) =>
      _$this._allocationDefaultNetmaskLength = allocationDefaultNetmaskLength;

  _i2.ListBuilder<IpamResourceTag>? _allocationResourceTags;
  _i2.ListBuilder<IpamResourceTag> get allocationResourceTags =>
      _$this._allocationResourceTags ??= new _i2.ListBuilder<IpamResourceTag>();
  set allocationResourceTags(
          _i2.ListBuilder<IpamResourceTag>? allocationResourceTags) =>
      _$this._allocationResourceTags = allocationResourceTags;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  IpamPoolAwsService? _awsService;
  IpamPoolAwsService? get awsService => _$this._awsService;
  set awsService(IpamPoolAwsService? awsService) =>
      _$this._awsService = awsService;

  IpamPoolPublicIpSource? _publicIpSource;
  IpamPoolPublicIpSource? get publicIpSource => _$this._publicIpSource;
  set publicIpSource(IpamPoolPublicIpSource? publicIpSource) =>
      _$this._publicIpSource = publicIpSource;

  IpamPoolBuilder() {
    IpamPool._init(this);
  }

  IpamPoolBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ownerId = $v.ownerId;
      _ipamPoolId = $v.ipamPoolId;
      _sourceIpamPoolId = $v.sourceIpamPoolId;
      _ipamPoolArn = $v.ipamPoolArn;
      _ipamScopeArn = $v.ipamScopeArn;
      _ipamScopeType = $v.ipamScopeType;
      _ipamArn = $v.ipamArn;
      _ipamRegion = $v.ipamRegion;
      _locale = $v.locale;
      _poolDepth = $v.poolDepth;
      _state = $v.state;
      _stateMessage = $v.stateMessage;
      _description = $v.description;
      _autoImport = $v.autoImport;
      _publiclyAdvertisable = $v.publiclyAdvertisable;
      _addressFamily = $v.addressFamily;
      _allocationMinNetmaskLength = $v.allocationMinNetmaskLength;
      _allocationMaxNetmaskLength = $v.allocationMaxNetmaskLength;
      _allocationDefaultNetmaskLength = $v.allocationDefaultNetmaskLength;
      _allocationResourceTags = $v.allocationResourceTags?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _awsService = $v.awsService;
      _publicIpSource = $v.publicIpSource;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpamPool other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpamPool;
  }

  @override
  void update(void Function(IpamPoolBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IpamPool build() => _build();

  _$IpamPool _build() {
    _$IpamPool _$result;
    try {
      _$result = _$v ??
          new _$IpamPool._(
              ownerId: ownerId,
              ipamPoolId: ipamPoolId,
              sourceIpamPoolId: sourceIpamPoolId,
              ipamPoolArn: ipamPoolArn,
              ipamScopeArn: ipamScopeArn,
              ipamScopeType: ipamScopeType,
              ipamArn: ipamArn,
              ipamRegion: ipamRegion,
              locale: locale,
              poolDepth: BuiltValueNullFieldError.checkNotNull(
                  poolDepth, r'IpamPool', 'poolDepth'),
              state: state,
              stateMessage: stateMessage,
              description: description,
              autoImport: BuiltValueNullFieldError.checkNotNull(
                  autoImport, r'IpamPool', 'autoImport'),
              publiclyAdvertisable: BuiltValueNullFieldError.checkNotNull(
                  publiclyAdvertisable, r'IpamPool', 'publiclyAdvertisable'),
              addressFamily: addressFamily,
              allocationMinNetmaskLength: BuiltValueNullFieldError.checkNotNull(
                  allocationMinNetmaskLength,
                  r'IpamPool',
                  'allocationMinNetmaskLength'),
              allocationMaxNetmaskLength: BuiltValueNullFieldError.checkNotNull(
                  allocationMaxNetmaskLength,
                  r'IpamPool',
                  'allocationMaxNetmaskLength'),
              allocationDefaultNetmaskLength:
                  BuiltValueNullFieldError.checkNotNull(
                      allocationDefaultNetmaskLength,
                      r'IpamPool',
                      'allocationDefaultNetmaskLength'),
              allocationResourceTags: _allocationResourceTags?.build(),
              tags: _tags?.build(),
              awsService: awsService,
              publicIpSource: publicIpSource);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allocationResourceTags';
        _allocationResourceTags?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IpamPool', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
