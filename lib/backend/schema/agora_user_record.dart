import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgoraUserRecord extends FirestoreRecord {
  AgoraUserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  int? _uid;
  int get uid => _uid ?? 0;
  bool hasUid() => _uid != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "isAudioEnabled" field.
  bool? _isAudioEnabled;
  bool get isAudioEnabled => _isAudioEnabled ?? false;
  bool hasIsAudioEnabled() => _isAudioEnabled != null;

  // "isVideoEnabled" field.
  bool? _isVideoEnabled;
  bool get isVideoEnabled => _isVideoEnabled ?? false;
  bool hasIsVideoEnabled() => _isVideoEnabled != null;

  // "view" field.
  String? _view;
  String get view => _view ?? '';
  bool hasView() => _view != null;

  void _initializeFields() {
    _uid = castToType<int>(snapshotData['uid']);
    _name = snapshotData['name'] as String?;
    _isAudioEnabled = snapshotData['isAudioEnabled'] as bool?;
    _isVideoEnabled = snapshotData['isVideoEnabled'] as bool?;
    _view = snapshotData['view'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('agora_user');

  static Stream<AgoraUserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AgoraUserRecord.fromSnapshot(s));

  static Future<AgoraUserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AgoraUserRecord.fromSnapshot(s));

  static AgoraUserRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AgoraUserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AgoraUserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AgoraUserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AgoraUserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AgoraUserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAgoraUserRecordData({
  int? uid,
  String? name,
  bool? isAudioEnabled,
  bool? isVideoEnabled,
  String? view,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'name': name,
      'isAudioEnabled': isAudioEnabled,
      'isVideoEnabled': isVideoEnabled,
      'view': view,
    }.withoutNulls,
  );

  return firestoreData;
}

class AgoraUserRecordDocumentEquality implements Equality<AgoraUserRecord> {
  const AgoraUserRecordDocumentEquality();

  @override
  bool equals(AgoraUserRecord? e1, AgoraUserRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.name == e2?.name &&
        e1?.isAudioEnabled == e2?.isAudioEnabled &&
        e1?.isVideoEnabled == e2?.isVideoEnabled &&
        e1?.view == e2?.view;
  }

  @override
  int hash(AgoraUserRecord? e) => const ListEquality()
      .hash([e?.uid, e?.name, e?.isAudioEnabled, e?.isVideoEnabled, e?.view]);

  @override
  bool isValidKey(Object? o) => o is AgoraUserRecord;
}
