// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.code_delivery_details_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CodeDeliveryDetailsType extends CodeDeliveryDetailsType {
  @override
  final String? attributeName;
  @override
  final _i2.DeliveryMediumType? deliveryMedium;
  @override
  final String? destination;

  factory _$CodeDeliveryDetailsType(
          [void Function(CodeDeliveryDetailsTypeBuilder)? updates]) =>
      (new CodeDeliveryDetailsTypeBuilder()..update(updates))._build();

  _$CodeDeliveryDetailsType._(
      {this.attributeName, this.deliveryMedium, this.destination})
      : super._();

  @override
  CodeDeliveryDetailsType rebuild(
          void Function(CodeDeliveryDetailsTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CodeDeliveryDetailsTypeBuilder toBuilder() =>
      new CodeDeliveryDetailsTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CodeDeliveryDetailsType &&
        attributeName == other.attributeName &&
        deliveryMedium == other.deliveryMedium &&
        destination == other.destination;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attributeName.hashCode);
    _$hash = $jc(_$hash, deliveryMedium.hashCode);
    _$hash = $jc(_$hash, destination.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CodeDeliveryDetailsTypeBuilder
    implements
        Builder<CodeDeliveryDetailsType, CodeDeliveryDetailsTypeBuilder> {
  _$CodeDeliveryDetailsType? _$v;

  String? _attributeName;
  String? get attributeName => _$this._attributeName;
  set attributeName(String? attributeName) =>
      _$this._attributeName = attributeName;

  _i2.DeliveryMediumType? _deliveryMedium;
  _i2.DeliveryMediumType? get deliveryMedium => _$this._deliveryMedium;
  set deliveryMedium(_i2.DeliveryMediumType? deliveryMedium) =>
      _$this._deliveryMedium = deliveryMedium;

  String? _destination;
  String? get destination => _$this._destination;
  set destination(String? destination) => _$this._destination = destination;

  CodeDeliveryDetailsTypeBuilder() {
    CodeDeliveryDetailsType._init(this);
  }

  CodeDeliveryDetailsTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributeName = $v.attributeName;
      _deliveryMedium = $v.deliveryMedium;
      _destination = $v.destination;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CodeDeliveryDetailsType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CodeDeliveryDetailsType;
  }

  @override
  void update(void Function(CodeDeliveryDetailsTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CodeDeliveryDetailsType build() => _build();

  _$CodeDeliveryDetailsType _build() {
    final _$result = _$v ??
        new _$CodeDeliveryDetailsType._(
            attributeName: attributeName,
            deliveryMedium: deliveryMedium,
            destination: destination);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
