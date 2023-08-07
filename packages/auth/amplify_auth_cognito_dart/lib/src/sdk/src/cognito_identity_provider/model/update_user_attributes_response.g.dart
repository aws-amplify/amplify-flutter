// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_attributes_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateUserAttributesResponse extends UpdateUserAttributesResponse {
  @override
  final _i2.BuiltList<CodeDeliveryDetailsType>? codeDeliveryDetailsList;

  factory _$UpdateUserAttributesResponse(
          [void Function(UpdateUserAttributesResponseBuilder)? updates]) =>
      (new UpdateUserAttributesResponseBuilder()..update(updates))._build();

  _$UpdateUserAttributesResponse._({this.codeDeliveryDetailsList}) : super._();

  @override
  UpdateUserAttributesResponse rebuild(
          void Function(UpdateUserAttributesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUserAttributesResponseBuilder toBuilder() =>
      new UpdateUserAttributesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUserAttributesResponse &&
        codeDeliveryDetailsList == other.codeDeliveryDetailsList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, codeDeliveryDetailsList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateUserAttributesResponseBuilder
    implements
        Builder<UpdateUserAttributesResponse,
            UpdateUserAttributesResponseBuilder> {
  _$UpdateUserAttributesResponse? _$v;

  _i2.ListBuilder<CodeDeliveryDetailsType>? _codeDeliveryDetailsList;
  _i2.ListBuilder<CodeDeliveryDetailsType> get codeDeliveryDetailsList =>
      _$this._codeDeliveryDetailsList ??=
          new _i2.ListBuilder<CodeDeliveryDetailsType>();
  set codeDeliveryDetailsList(
          _i2.ListBuilder<CodeDeliveryDetailsType>? codeDeliveryDetailsList) =>
      _$this._codeDeliveryDetailsList = codeDeliveryDetailsList;

  UpdateUserAttributesResponseBuilder();

  UpdateUserAttributesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _codeDeliveryDetailsList = $v.codeDeliveryDetailsList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUserAttributesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateUserAttributesResponse;
  }

  @override
  void update(void Function(UpdateUserAttributesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateUserAttributesResponse build() => _build();

  _$UpdateUserAttributesResponse _build() {
    _$UpdateUserAttributesResponse _$result;
    try {
      _$result = _$v ??
          new _$UpdateUserAttributesResponse._(
              codeDeliveryDetailsList: _codeDeliveryDetailsList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'codeDeliveryDetailsList';
        _codeDeliveryDetailsList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateUserAttributesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
