// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replace_iam_instance_profile_association_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplaceIamInstanceProfileAssociationRequest
    extends ReplaceIamInstanceProfileAssociationRequest {
  @override
  final IamInstanceProfileSpecification? iamInstanceProfile;
  @override
  final String? associationId;

  factory _$ReplaceIamInstanceProfileAssociationRequest(
          [void Function(ReplaceIamInstanceProfileAssociationRequestBuilder)?
              updates]) =>
      (new ReplaceIamInstanceProfileAssociationRequestBuilder()
            ..update(updates))
          ._build();

  _$ReplaceIamInstanceProfileAssociationRequest._(
      {this.iamInstanceProfile, this.associationId})
      : super._();

  @override
  ReplaceIamInstanceProfileAssociationRequest rebuild(
          void Function(ReplaceIamInstanceProfileAssociationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplaceIamInstanceProfileAssociationRequestBuilder toBuilder() =>
      new ReplaceIamInstanceProfileAssociationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplaceIamInstanceProfileAssociationRequest &&
        iamInstanceProfile == other.iamInstanceProfile &&
        associationId == other.associationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, iamInstanceProfile.hashCode);
    _$hash = $jc(_$hash, associationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplaceIamInstanceProfileAssociationRequestBuilder
    implements
        Builder<ReplaceIamInstanceProfileAssociationRequest,
            ReplaceIamInstanceProfileAssociationRequestBuilder> {
  _$ReplaceIamInstanceProfileAssociationRequest? _$v;

  IamInstanceProfileSpecificationBuilder? _iamInstanceProfile;
  IamInstanceProfileSpecificationBuilder get iamInstanceProfile =>
      _$this._iamInstanceProfile ??=
          new IamInstanceProfileSpecificationBuilder();
  set iamInstanceProfile(
          IamInstanceProfileSpecificationBuilder? iamInstanceProfile) =>
      _$this._iamInstanceProfile = iamInstanceProfile;

  String? _associationId;
  String? get associationId => _$this._associationId;
  set associationId(String? associationId) =>
      _$this._associationId = associationId;

  ReplaceIamInstanceProfileAssociationRequestBuilder();

  ReplaceIamInstanceProfileAssociationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _iamInstanceProfile = $v.iamInstanceProfile?.toBuilder();
      _associationId = $v.associationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplaceIamInstanceProfileAssociationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplaceIamInstanceProfileAssociationRequest;
  }

  @override
  void update(
      void Function(ReplaceIamInstanceProfileAssociationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplaceIamInstanceProfileAssociationRequest build() => _build();

  _$ReplaceIamInstanceProfileAssociationRequest _build() {
    _$ReplaceIamInstanceProfileAssociationRequest _$result;
    try {
      _$result = _$v ??
          new _$ReplaceIamInstanceProfileAssociationRequest._(
              iamInstanceProfile: _iamInstanceProfile?.build(),
              associationId: associationId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'iamInstanceProfile';
        _iamInstanceProfile?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReplaceIamInstanceProfileAssociationRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
