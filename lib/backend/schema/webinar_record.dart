import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WebinarRecord extends FirestoreRecord {
  WebinarRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "specifications" field.
  String? _specifications;
  String get specifications => _specifications ?? '';
  bool hasSpecifications() => _specifications != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "webinar_Date" field.
  DateTime? _webinarDate;
  DateTime? get webinarDate => _webinarDate;
  bool hasWebinarDate() => _webinarDate != null;

  // "webinar_day" field.
  String? _webinarDay;
  String get webinarDay => _webinarDay ?? '';
  bool hasWebinarDay() => _webinarDay != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _specifications = snapshotData['specifications'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _webinarDate = snapshotData['webinar_Date'] as DateTime?;
    _webinarDay = snapshotData['webinar_day'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Webinar');

  static Stream<WebinarRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WebinarRecord.fromSnapshot(s));

  static Future<WebinarRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WebinarRecord.fromSnapshot(s));

  static WebinarRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WebinarRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WebinarRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WebinarRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WebinarRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WebinarRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWebinarRecordData({
  String? name,
  String? description,
  String? specifications,
  double? price,
  double? salePrice,
  DateTime? webinarDate,
  String? webinarDay,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'specifications': specifications,
      'price': price,
      'sale_price': salePrice,
      'webinar_Date': webinarDate,
      'webinar_day': webinarDay,
    }.withoutNulls,
  );

  return firestoreData;
}

class WebinarRecordDocumentEquality implements Equality<WebinarRecord> {
  const WebinarRecordDocumentEquality();

  @override
  bool equals(WebinarRecord? e1, WebinarRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.specifications == e2?.specifications &&
        e1?.price == e2?.price &&
        e1?.salePrice == e2?.salePrice &&
        e1?.webinarDate == e2?.webinarDate &&
        e1?.webinarDay == e2?.webinarDay;
  }

  @override
  int hash(WebinarRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.specifications,
        e?.price,
        e?.salePrice,
        e?.webinarDate,
        e?.webinarDay
      ]);

  @override
  bool isValidKey(Object? o) => o is WebinarRecord;
}
