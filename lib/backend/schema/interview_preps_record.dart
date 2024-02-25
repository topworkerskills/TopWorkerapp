import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class InterviewPrepsRecord extends FirestoreRecord {
  InterviewPrepsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "post_photo" field.
  String? _postPhoto;
  String get postPhoto => _postPhoto ?? '';
  bool hasPostPhoto() => _postPhoto != null;

  // "post_title" field.
  String? _postTitle;
  String get postTitle => _postTitle ?? '';
  bool hasPostTitle() => _postTitle != null;

  // "post_description" field.
  String? _postDescription;
  String get postDescription => _postDescription ?? '';
  bool hasPostDescription() => _postDescription != null;

  // "post_Doc" field.
  DocumentReference? _postDoc;
  DocumentReference? get postDoc => _postDoc;
  bool hasPostDoc() => _postDoc != null;

  void _initializeFields() {
    _postPhoto = snapshotData['post_photo'] as String?;
    _postTitle = snapshotData['post_title'] as String?;
    _postDescription = snapshotData['post_description'] as String?;
    _postDoc = snapshotData['post_Doc'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('InterviewPreps');

  static Stream<InterviewPrepsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InterviewPrepsRecord.fromSnapshot(s));

  static Future<InterviewPrepsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InterviewPrepsRecord.fromSnapshot(s));

  static InterviewPrepsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InterviewPrepsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InterviewPrepsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InterviewPrepsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InterviewPrepsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InterviewPrepsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInterviewPrepsRecordData({
  String? postPhoto,
  String? postTitle,
  String? postDescription,
  DocumentReference? postDoc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'post_photo': postPhoto,
      'post_title': postTitle,
      'post_description': postDescription,
      'post_Doc': postDoc,
    }.withoutNulls,
  );

  return firestoreData;
}

class InterviewPrepsRecordDocumentEquality
    implements Equality<InterviewPrepsRecord> {
  const InterviewPrepsRecordDocumentEquality();

  @override
  bool equals(InterviewPrepsRecord? e1, InterviewPrepsRecord? e2) {
    return e1?.postPhoto == e2?.postPhoto &&
        e1?.postTitle == e2?.postTitle &&
        e1?.postDescription == e2?.postDescription &&
        e1?.postDoc == e2?.postDoc;
  }

  @override
  int hash(InterviewPrepsRecord? e) => const ListEquality()
      .hash([e?.postPhoto, e?.postTitle, e?.postDescription, e?.postDoc]);

  @override
  bool isValidKey(Object? o) => o is InterviewPrepsRecord;
}
