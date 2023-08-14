// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_default_subnet_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateDefaultSubnetRequest extends CreateDefaultSubnetRequest {
  @override
  final String? availabilityZone;
  @override
  final bool dryRun;
  @override
  final bool ipv6Native;

  factory _$CreateDefaultSubnetRequest(
          [void Function(CreateDefaultSubnetRequestBuilder)? updates]) =>
      (new CreateDefaultSubnetRequestBuilder()..update(updates))._build();

  _$CreateDefaultSubnetRequest._(
      {this.availabilityZone, required this.dryRun, required this.ipv6Native})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateDefaultSubnetRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        ipv6Native, r'CreateDefaultSubnetRequest', 'ipv6Native');
  }

  @override
  CreateDefaultSubnetRequest rebuild(
          void Function(CreateDefaultSubnetRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateDefaultSubnetRequestBuilder toBuilder() =>
      new CreateDefaultSubnetRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateDefaultSubnetRequest &&
        availabilityZone == other.availabilityZone &&
        dryRun == other.dryRun &&
        ipv6Native == other.ipv6Native;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipv6Native.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateDefaultSubnetRequestBuilder
    implements
        Builder<CreateDefaultSubnetRequest, CreateDefaultSubnetRequestBuilder> {
  _$CreateDefaultSubnetRequest? _$v;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  bool? _ipv6Native;
  bool? get ipv6Native => _$this._ipv6Native;
  set ipv6Native(bool? ipv6Native) => _$this._ipv6Native = ipv6Native;

  CreateDefaultSubnetRequestBuilder() {
    CreateDefaultSubnetRequest._init(this);
  }

  CreateDefaultSubnetRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZone = $v.availabilityZone;
      _dryRun = $v.dryRun;
      _ipv6Native = $v.ipv6Native;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateDefaultSubnetRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateDefaultSubnetRequest;
  }

  @override
  void update(void Function(CreateDefaultSubnetRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateDefaultSubnetRequest build() => _build();

  _$CreateDefaultSubnetRequest _build() {
    final _$result = _$v ??
        new _$CreateDefaultSubnetRequest._(
            availabilityZone: availabilityZone,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'CreateDefaultSubnetRequest', 'dryRun'),
            ipv6Native: BuiltValueNullFieldError.checkNotNull(
                ipv6Native, r'CreateDefaultSubnetRequest', 'ipv6Native'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
