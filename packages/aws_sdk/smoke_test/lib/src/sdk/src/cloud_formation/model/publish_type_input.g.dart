// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.publish_type_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PublishTypeInput extends PublishTypeInput {
  @override
  final _i3.ThirdPartyType? type;
  @override
  final String? arn;
  @override
  final String? typeName;
  @override
  final String? publicVersionNumber;

  factory _$PublishTypeInput(
          [void Function(PublishTypeInputBuilder)? updates]) =>
      (new PublishTypeInputBuilder()..update(updates))._build();

  _$PublishTypeInput._(
      {this.type, this.arn, this.typeName, this.publicVersionNumber})
      : super._();

  @override
  PublishTypeInput rebuild(void Function(PublishTypeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PublishTypeInputBuilder toBuilder() =>
      new PublishTypeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PublishTypeInput &&
        type == other.type &&
        arn == other.arn &&
        typeName == other.typeName &&
        publicVersionNumber == other.publicVersionNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, typeName.hashCode);
    _$hash = $jc(_$hash, publicVersionNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PublishTypeInputBuilder
    implements Builder<PublishTypeInput, PublishTypeInputBuilder> {
  _$PublishTypeInput? _$v;

  _i3.ThirdPartyType? _type;
  _i3.ThirdPartyType? get type => _$this._type;
  set type(_i3.ThirdPartyType? type) => _$this._type = type;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  String? _typeName;
  String? get typeName => _$this._typeName;
  set typeName(String? typeName) => _$this._typeName = typeName;

  String? _publicVersionNumber;
  String? get publicVersionNumber => _$this._publicVersionNumber;
  set publicVersionNumber(String? publicVersionNumber) =>
      _$this._publicVersionNumber = publicVersionNumber;

  PublishTypeInputBuilder() {
    PublishTypeInput._init(this);
  }

  PublishTypeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _arn = $v.arn;
      _typeName = $v.typeName;
      _publicVersionNumber = $v.publicVersionNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PublishTypeInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PublishTypeInput;
  }

  @override
  void update(void Function(PublishTypeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PublishTypeInput build() => _build();

  _$PublishTypeInput _build() {
    final _$result = _$v ??
        new _$PublishTypeInput._(
            type: type,
            arn: arn,
            typeName: typeName,
            publicVersionNumber: publicVersionNumber);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
