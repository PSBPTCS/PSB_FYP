import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MeditiationProgressRecord extends FirestoreRecord {
  MeditiationProgressRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "meditatioProgressUser" field.
  DocumentReference? _meditatioProgressUser;
  DocumentReference? get meditatioProgressUser => _meditatioProgressUser;
  bool hasMeditatioProgressUser() => _meditatioProgressUser != null;

  // "meditationTIme" field.
  DateTime? _meditationTIme;
  DateTime? get meditationTIme => _meditationTIme;
  bool hasMeditationTIme() => _meditationTIme != null;

  // "meditationDuration" field.
  int? _meditationDuration;
  int get meditationDuration => _meditationDuration ?? 0;
  bool hasMeditationDuration() => _meditationDuration != null;

  // "meditationType" field.
  String? _meditationType;
  String get meditationType => _meditationType ?? '';
  bool hasMeditationType() => _meditationType != null;

  // "meditationTittle" field.
  String? _meditationTittle;
  String get meditationTittle => _meditationTittle ?? '';
  bool hasMeditationTittle() => _meditationTittle != null;

  // "meditationDescription" field.
  String? _meditationDescription;
  String get meditationDescription => _meditationDescription ?? '';
  bool hasMeditationDescription() => _meditationDescription != null;

  void _initializeFields() {
    _meditatioProgressUser =
        snapshotData['meditatioProgressUser'] as DocumentReference?;
    _meditationTIme = snapshotData['meditationTIme'] as DateTime?;
    _meditationDuration = castToType<int>(snapshotData['meditationDuration']);
    _meditationType = snapshotData['meditationType'] as String?;
    _meditationTittle = snapshotData['meditationTittle'] as String?;
    _meditationDescription = snapshotData['meditationDescription'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('meditiationProgress');

  static Stream<MeditiationProgressRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MeditiationProgressRecord.fromSnapshot(s));

  static Future<MeditiationProgressRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => MeditiationProgressRecord.fromSnapshot(s));

  static MeditiationProgressRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MeditiationProgressRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MeditiationProgressRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MeditiationProgressRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MeditiationProgressRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MeditiationProgressRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMeditiationProgressRecordData({
  DocumentReference? meditatioProgressUser,
  DateTime? meditationTIme,
  int? meditationDuration,
  String? meditationType,
  String? meditationTittle,
  String? meditationDescription,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'meditatioProgressUser': meditatioProgressUser,
      'meditationTIme': meditationTIme,
      'meditationDuration': meditationDuration,
      'meditationType': meditationType,
      'meditationTittle': meditationTittle,
      'meditationDescription': meditationDescription,
    }.withoutNulls,
  );

  return firestoreData;
}

class MeditiationProgressRecordDocumentEquality
    implements Equality<MeditiationProgressRecord> {
  const MeditiationProgressRecordDocumentEquality();

  @override
  bool equals(MeditiationProgressRecord? e1, MeditiationProgressRecord? e2) {
    return e1?.meditatioProgressUser == e2?.meditatioProgressUser &&
        e1?.meditationTIme == e2?.meditationTIme &&
        e1?.meditationDuration == e2?.meditationDuration &&
        e1?.meditationType == e2?.meditationType &&
        e1?.meditationTittle == e2?.meditationTittle &&
        e1?.meditationDescription == e2?.meditationDescription;
  }

  @override
  int hash(MeditiationProgressRecord? e) => const ListEquality().hash([
        e?.meditatioProgressUser,
        e?.meditationTIme,
        e?.meditationDuration,
        e?.meditationType,
        e?.meditationTittle,
        e?.meditationDescription
      ]);

  @override
  bool isValidKey(Object? o) => o is MeditiationProgressRecord;
}
