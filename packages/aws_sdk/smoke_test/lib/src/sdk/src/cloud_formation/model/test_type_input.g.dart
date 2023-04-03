// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.test_type_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestTypeInput extends TestTypeInput {
  @override
  final String? arn;
  @override
  final _i3.ThirdPartyType? type;
  @override
  final String? typeName;
  @override
  final String? versionId;
  @override
  final String? logDeliveryBucket;

  factory _$TestTypeInput([void Function(TestTypeInputBuilder)? updates]) =>
      (new TestTypeInputBuilder()..update(updates))._build();

  _$TestTypeInput._(
      {this.arn,
      this.type,
      this.typeName,
      this.versionId,
      this.logDeliveryBucket})
      : super._();

  @override
  TestTypeInput rebuild(void Function(TestTypeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestTypeInputBuilder toBuilder() => new TestTypeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestTypeInput &&
        arn == other.arn &&
        type == other.type &&
        typeName == other.typeName &&
        versionId == other.versionId &&
        logDeliveryBucket == other.logDeliveryBucket;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, typeName.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jc(_$hash, logDeliveryBucket.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TestTypeInputBuilder
    implements Builder<TestTypeInput, TestTypeInputBuilder> {
  _$TestTypeInput? _$v;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  _i3.ThirdPartyType? _type;
  _i3.ThirdPartyType? get type => _$this._type;
  set type(_i3.ThirdPartyType? type) => _$this._type = type;

  String? _typeName;
  String? get typeName => _$this._typeName;
  set typeName(String? typeName) => _$this._typeName = typeName;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  String? _logDeliveryBucket;
  String? get logDeliveryBucket => _$this._logDeliveryBucket;
  set logDeliveryBucket(String? logDeliveryBucket) =>
      _$this._logDeliveryBucket = logDeliveryBucket;

  TestTypeInputBuilder() {
    TestTypeInput._init(this);
  }

  TestTypeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _arn = $v.arn;
      _type = $v.type;
      _typeName = $v.typeName;
      _versionId = $v.versionId;
      _logDeliveryBucket = $v.logDeliveryBucket;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestTypeInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestTypeInput;
  }

  @override
  void update(void Function(TestTypeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestTypeInput build() => _build();

  _$TestTypeInput _build() {
    final _$result = _$v ??
        new _$TestTypeInput._(
            arn: arn,
            type: type,
            typeName: typeName,
            versionId: versionId,
            logDeliveryBucket: logDeliveryBucket);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
