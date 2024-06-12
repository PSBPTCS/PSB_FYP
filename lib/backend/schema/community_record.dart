import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CommunityRecord extends FirestoreRecord {
  CommunityRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "slideBannerUrl" field.
  String? _slideBannerUrl;
  String get slideBannerUrl => _slideBannerUrl ?? '';
  bool hasSlideBannerUrl() => _slideBannerUrl != null;

  void _initializeFields() {
    _slideBannerUrl = snapshotData['slideBannerUrl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('community');

  static Stream<CommunityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommunityRecord.fromSnapshot(s));

  static Future<CommunityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommunityRecord.fromSnapshot(s));

  static CommunityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommunityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommunityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommunityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommunityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommunityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommunityRecordData({
  String? slideBannerUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'slideBannerUrl': slideBannerUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommunityRecordDocumentEquality implements Equality<CommunityRecord> {
  const CommunityRecordDocumentEquality();

  @override
  bool equals(CommunityRecord? e1, CommunityRecord? e2) {
    return e1?.slideBannerUrl == e2?.slideBannerUrl;
  }

  @override
  int hash(CommunityRecord? e) =>
      const ListEquality().hash([e?.slideBannerUrl]);

  @override
  bool isValidKey(Object? o) => o is CommunityRecord;
}
