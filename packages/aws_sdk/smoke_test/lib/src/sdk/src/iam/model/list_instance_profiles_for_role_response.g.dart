// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_instance_profiles_for_role_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListInstanceProfilesForRoleResponse
    extends ListInstanceProfilesForRoleResponse {
  @override
  final _i3.BuiltList<_i2.InstanceProfile> instanceProfiles;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListInstanceProfilesForRoleResponse(
          [void Function(ListInstanceProfilesForRoleResponseBuilder)?
              updates]) =>
      (new ListInstanceProfilesForRoleResponseBuilder()..update(updates))
          ._build();

  _$ListInstanceProfilesForRoleResponse._(
      {required this.instanceProfiles, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(instanceProfiles,
        r'ListInstanceProfilesForRoleResponse', 'instanceProfiles');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListInstanceProfilesForRoleResponse', 'isTruncated');
  }

  @override
  ListInstanceProfilesForRoleResponse rebuild(
          void Function(ListInstanceProfilesForRoleResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListInstanceProfilesForRoleResponseBuilder toBuilder() =>
      new ListInstanceProfilesForRoleResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListInstanceProfilesForRoleResponse &&
        instanceProfiles == other.instanceProfiles &&
        isTruncated == other.isTruncated &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceProfiles.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListInstanceProfilesForRoleResponseBuilder
    implements
        Builder<ListInstanceProfilesForRoleResponse,
            ListInstanceProfilesForRoleResponseBuilder> {
  _$ListInstanceProfilesForRoleResponse? _$v;

  _i3.ListBuilder<_i2.InstanceProfile>? _instanceProfiles;
  _i3.ListBuilder<_i2.InstanceProfile> get instanceProfiles =>
      _$this._instanceProfiles ??= new _i3.ListBuilder<_i2.InstanceProfile>();
  set instanceProfiles(
          _i3.ListBuilder<_i2.InstanceProfile>? instanceProfiles) =>
      _$this._instanceProfiles = instanceProfiles;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  ListInstanceProfilesForRoleResponseBuilder() {
    ListInstanceProfilesForRoleResponse._init(this);
  }

  ListInstanceProfilesForRoleResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceProfiles = $v.instanceProfiles.toBuilder();
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListInstanceProfilesForRoleResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListInstanceProfilesForRoleResponse;
  }

  @override
  void update(
      void Function(ListInstanceProfilesForRoleResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListInstanceProfilesForRoleResponse build() => _build();

  _$ListInstanceProfilesForRoleResponse _build() {
    _$ListInstanceProfilesForRoleResponse _$result;
    try {
      _$result = _$v ??
          new _$ListInstanceProfilesForRoleResponse._(
              instanceProfiles: instanceProfiles.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(isTruncated,
                  r'ListInstanceProfilesForRoleResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceProfiles';
        instanceProfiles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListInstanceProfilesForRoleResponse',
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
