// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coip_address_usage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CoipAddressUsage extends CoipAddressUsage {
  @override
  final String? allocationId;
  @override
  final String? awsAccountId;
  @override
  final String? awsService;
  @override
  final String? coIp;

  factory _$CoipAddressUsage(
          [void Function(CoipAddressUsageBuilder)? updates]) =>
      (new CoipAddressUsageBuilder()..update(updates))._build();

  _$CoipAddressUsage._(
      {this.allocationId, this.awsAccountId, this.awsService, this.coIp})
      : super._();

  @override
  CoipAddressUsage rebuild(void Function(CoipAddressUsageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoipAddressUsageBuilder toBuilder() =>
      new CoipAddressUsageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoipAddressUsage &&
        allocationId == other.allocationId &&
        awsAccountId == other.awsAccountId &&
        awsService == other.awsService &&
        coIp == other.coIp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allocationId.hashCode);
    _$hash = $jc(_$hash, awsAccountId.hashCode);
    _$hash = $jc(_$hash, awsService.hashCode);
    _$hash = $jc(_$hash, coIp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CoipAddressUsageBuilder
    implements Builder<CoipAddressUsage, CoipAddressUsageBuilder> {
  _$CoipAddressUsage? _$v;

  String? _allocationId;
  String? get allocationId => _$this._allocationId;
  set allocationId(String? allocationId) => _$this._allocationId = allocationId;

  String? _awsAccountId;
  String? get awsAccountId => _$this._awsAccountId;
  set awsAccountId(String? awsAccountId) => _$this._awsAccountId = awsAccountId;

  String? _awsService;
  String? get awsService => _$this._awsService;
  set awsService(String? awsService) => _$this._awsService = awsService;

  String? _coIp;
  String? get coIp => _$this._coIp;
  set coIp(String? coIp) => _$this._coIp = coIp;

  CoipAddressUsageBuilder();

  CoipAddressUsageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allocationId = $v.allocationId;
      _awsAccountId = $v.awsAccountId;
      _awsService = $v.awsService;
      _coIp = $v.coIp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoipAddressUsage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CoipAddressUsage;
  }

  @override
  void update(void Function(CoipAddressUsageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CoipAddressUsage build() => _build();

  _$CoipAddressUsage _build() {
    final _$result = _$v ??
        new _$CoipAddressUsage._(
            allocationId: allocationId,
            awsAccountId: awsAccountId,
            awsService: awsService,
            coIp: coIp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
