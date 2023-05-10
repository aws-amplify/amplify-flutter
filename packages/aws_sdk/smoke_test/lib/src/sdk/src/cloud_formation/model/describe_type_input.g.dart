// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_type_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTypeInput extends DescribeTypeInput {
  @override
  final _i3.RegistryType? type;
  @override
  final String? typeName;
  @override
  final String? arn;
  @override
  final String? versionId;
  @override
  final String? publisherId;
  @override
  final String? publicVersionNumber;

  factory _$DescribeTypeInput(
          [void Function(DescribeTypeInputBuilder)? updates]) =>
      (new DescribeTypeInputBuilder()..update(updates))._build();

  _$DescribeTypeInput._(
      {this.type,
      this.typeName,
      this.arn,
      this.versionId,
      this.publisherId,
      this.publicVersionNumber})
      : super._();

  @override
  DescribeTypeInput rebuild(void Function(DescribeTypeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTypeInputBuilder toBuilder() =>
      new DescribeTypeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTypeInput &&
        type == other.type &&
        typeName == other.typeName &&
        arn == other.arn &&
        versionId == other.versionId &&
        publisherId == other.publisherId &&
        publicVersionNumber == other.publicVersionNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, typeName.hashCode);
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jc(_$hash, publisherId.hashCode);
    _$hash = $jc(_$hash, publicVersionNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTypeInputBuilder
    implements Builder<DescribeTypeInput, DescribeTypeInputBuilder> {
  _$DescribeTypeInput? _$v;

  _i3.RegistryType? _type;
  _i3.RegistryType? get type => _$this._type;
  set type(_i3.RegistryType? type) => _$this._type = type;

  String? _typeName;
  String? get typeName => _$this._typeName;
  set typeName(String? typeName) => _$this._typeName = typeName;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  String? _publisherId;
  String? get publisherId => _$this._publisherId;
  set publisherId(String? publisherId) => _$this._publisherId = publisherId;

  String? _publicVersionNumber;
  String? get publicVersionNumber => _$this._publicVersionNumber;
  set publicVersionNumber(String? publicVersionNumber) =>
      _$this._publicVersionNumber = publicVersionNumber;

  DescribeTypeInputBuilder() {
    DescribeTypeInput._init(this);
  }

  DescribeTypeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _typeName = $v.typeName;
      _arn = $v.arn;
      _versionId = $v.versionId;
      _publisherId = $v.publisherId;
      _publicVersionNumber = $v.publicVersionNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTypeInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTypeInput;
  }

  @override
  void update(void Function(DescribeTypeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTypeInput build() => _build();

  _$DescribeTypeInput _build() {
    final _$result = _$v ??
        new _$DescribeTypeInput._(
            type: type,
            typeName: typeName,
            arn: arn,
            versionId: versionId,
            publisherId: publisherId,
            publicVersionNumber: publicVersionNumber);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
