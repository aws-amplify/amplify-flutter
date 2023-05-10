// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.access_key_last_used;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccessKeyLastUsed extends AccessKeyLastUsed {
  @override
  final DateTime lastUsedDate;
  @override
  final String serviceName;
  @override
  final String region;

  factory _$AccessKeyLastUsed(
          [void Function(AccessKeyLastUsedBuilder)? updates]) =>
      (new AccessKeyLastUsedBuilder()..update(updates))._build();

  _$AccessKeyLastUsed._(
      {required this.lastUsedDate,
      required this.serviceName,
      required this.region})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        lastUsedDate, r'AccessKeyLastUsed', 'lastUsedDate');
    BuiltValueNullFieldError.checkNotNull(
        serviceName, r'AccessKeyLastUsed', 'serviceName');
    BuiltValueNullFieldError.checkNotNull(
        region, r'AccessKeyLastUsed', 'region');
  }

  @override
  AccessKeyLastUsed rebuild(void Function(AccessKeyLastUsedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessKeyLastUsedBuilder toBuilder() =>
      new AccessKeyLastUsedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessKeyLastUsed &&
        lastUsedDate == other.lastUsedDate &&
        serviceName == other.serviceName &&
        region == other.region;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lastUsedDate.hashCode);
    _$hash = $jc(_$hash, serviceName.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AccessKeyLastUsedBuilder
    implements Builder<AccessKeyLastUsed, AccessKeyLastUsedBuilder> {
  _$AccessKeyLastUsed? _$v;

  DateTime? _lastUsedDate;
  DateTime? get lastUsedDate => _$this._lastUsedDate;
  set lastUsedDate(DateTime? lastUsedDate) =>
      _$this._lastUsedDate = lastUsedDate;

  String? _serviceName;
  String? get serviceName => _$this._serviceName;
  set serviceName(String? serviceName) => _$this._serviceName = serviceName;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  AccessKeyLastUsedBuilder() {
    AccessKeyLastUsed._init(this);
  }

  AccessKeyLastUsedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lastUsedDate = $v.lastUsedDate;
      _serviceName = $v.serviceName;
      _region = $v.region;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessKeyLastUsed other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccessKeyLastUsed;
  }

  @override
  void update(void Function(AccessKeyLastUsedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccessKeyLastUsed build() => _build();

  _$AccessKeyLastUsed _build() {
    final _$result = _$v ??
        new _$AccessKeyLastUsed._(
            lastUsedDate: BuiltValueNullFieldError.checkNotNull(
                lastUsedDate, r'AccessKeyLastUsed', 'lastUsedDate'),
            serviceName: BuiltValueNullFieldError.checkNotNull(
                serviceName, r'AccessKeyLastUsed', 'serviceName'),
            region: BuiltValueNullFieldError.checkNotNull(
                region, r'AccessKeyLastUsed', 'region'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
