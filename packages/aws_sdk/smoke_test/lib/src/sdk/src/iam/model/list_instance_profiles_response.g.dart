// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_instance_profiles_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListInstanceProfilesResponse extends ListInstanceProfilesResponse {
  @override
  final _i3.BuiltList<_i2.InstanceProfile> instanceProfiles;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListInstanceProfilesResponse(
          [void Function(ListInstanceProfilesResponseBuilder)? updates]) =>
      (new ListInstanceProfilesResponseBuilder()..update(updates))._build();

  _$ListInstanceProfilesResponse._(
      {required this.instanceProfiles, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        instanceProfiles, r'ListInstanceProfilesResponse', 'instanceProfiles');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListInstanceProfilesResponse', 'isTruncated');
  }

  @override
  ListInstanceProfilesResponse rebuild(
          void Function(ListInstanceProfilesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListInstanceProfilesResponseBuilder toBuilder() =>
      new ListInstanceProfilesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListInstanceProfilesResponse &&
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

class ListInstanceProfilesResponseBuilder
    implements
        Builder<ListInstanceProfilesResponse,
            ListInstanceProfilesResponseBuilder> {
  _$ListInstanceProfilesResponse? _$v;

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

  ListInstanceProfilesResponseBuilder() {
    ListInstanceProfilesResponse._init(this);
  }

  ListInstanceProfilesResponseBuilder get _$this {
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
  void replace(ListInstanceProfilesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListInstanceProfilesResponse;
  }

  @override
  void update(void Function(ListInstanceProfilesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListInstanceProfilesResponse build() => _build();

  _$ListInstanceProfilesResponse _build() {
    _$ListInstanceProfilesResponse _$result;
    try {
      _$result = _$v ??
          new _$ListInstanceProfilesResponse._(
              instanceProfiles: instanceProfiles.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated, r'ListInstanceProfilesResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceProfiles';
        instanceProfiles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListInstanceProfilesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
