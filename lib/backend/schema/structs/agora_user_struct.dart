// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgoraUserStruct extends FFFirebaseStruct {
  AgoraUserStruct({
    int? uid,
    String? name,
    bool? isAudioEnabled,
    bool? isVideoEnabled,
    String? view,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _uid = uid,
        _name = name,
        _isAudioEnabled = isAudioEnabled,
        _isVideoEnabled = isVideoEnabled,
        _view = view,
        super(firestoreUtilData);

  // "uid" field.
  int? _uid;
  int get uid => _uid ?? 0;
  set uid(int? val) => _uid = val;
  void incrementUid(int amount) => _uid = uid + amount;
  bool hasUid() => _uid != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "isAudioEnabled" field.
  bool? _isAudioEnabled;
  bool get isAudioEnabled => _isAudioEnabled ?? false;
  set isAudioEnabled(bool? val) => _isAudioEnabled = val;
  bool hasIsAudioEnabled() => _isAudioEnabled != null;

  // "isVideoEnabled" field.
  bool? _isVideoEnabled;
  bool get isVideoEnabled => _isVideoEnabled ?? false;
  set isVideoEnabled(bool? val) => _isVideoEnabled = val;
  bool hasIsVideoEnabled() => _isVideoEnabled != null;

  // "view" field.
  String? _view;
  String get view => _view ?? '';
  set view(String? val) => _view = val;
  bool hasView() => _view != null;

  static AgoraUserStruct fromMap(Map<String, dynamic> data) => AgoraUserStruct(
        uid: castToType<int>(data['uid']),
        name: data['name'] as String?,
        isAudioEnabled: data['isAudioEnabled'] as bool?,
        isVideoEnabled: data['isVideoEnabled'] as bool?,
        view: data['view'] as String?,
      );

  static AgoraUserStruct? maybeFromMap(dynamic data) => data is Map
      ? AgoraUserStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'uid': _uid,
        'name': _name,
        'isAudioEnabled': _isAudioEnabled,
        'isVideoEnabled': _isVideoEnabled,
        'view': _view,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'uid': serializeParam(
          _uid,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'isAudioEnabled': serializeParam(
          _isAudioEnabled,
          ParamType.bool,
        ),
        'isVideoEnabled': serializeParam(
          _isVideoEnabled,
          ParamType.bool,
        ),
        'view': serializeParam(
          _view,
          ParamType.String,
        ),
      }.withoutNulls;

  static AgoraUserStruct fromSerializableMap(Map<String, dynamic> data) =>
      AgoraUserStruct(
        uid: deserializeParam(
          data['uid'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        isAudioEnabled: deserializeParam(
          data['isAudioEnabled'],
          ParamType.bool,
          false,
        ),
        isVideoEnabled: deserializeParam(
          data['isVideoEnabled'],
          ParamType.bool,
          false,
        ),
        view: deserializeParam(
          data['view'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AgoraUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AgoraUserStruct &&
        uid == other.uid &&
        name == other.name &&
        isAudioEnabled == other.isAudioEnabled &&
        isVideoEnabled == other.isVideoEnabled &&
        view == other.view;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([uid, name, isAudioEnabled, isVideoEnabled, view]);
}

AgoraUserStruct createAgoraUserStruct({
  int? uid,
  String? name,
  bool? isAudioEnabled,
  bool? isVideoEnabled,
  String? view,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AgoraUserStruct(
      uid: uid,
      name: name,
      isAudioEnabled: isAudioEnabled,
      isVideoEnabled: isVideoEnabled,
      view: view,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AgoraUserStruct? updateAgoraUserStruct(
  AgoraUserStruct? agoraUser, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    agoraUser
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAgoraUserStructData(
  Map<String, dynamic> firestoreData,
  AgoraUserStruct? agoraUser,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (agoraUser == null) {
    return;
  }
  if (agoraUser.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && agoraUser.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final agoraUserData = getAgoraUserFirestoreData(agoraUser, forFieldValue);
  final nestedData = agoraUserData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = agoraUser.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAgoraUserFirestoreData(
  AgoraUserStruct? agoraUser, [
  bool forFieldValue = false,
]) {
  if (agoraUser == null) {
    return {};
  }
  final firestoreData = mapToFirestore(agoraUser.toMap());

  // Add any Firestore field values
  agoraUser.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAgoraUserListFirestoreData(
  List<AgoraUserStruct>? agoraUsers,
) =>
    agoraUsers?.map((e) => getAgoraUserFirestoreData(e, true)).toList() ?? [];
