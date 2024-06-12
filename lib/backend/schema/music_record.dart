import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MusicRecord extends FirestoreRecord {
  MusicRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "musicname" field.
  String? _musicname;
  String get musicname => _musicname ?? '';
  bool hasMusicname() => _musicname != null;

  // "music_creator" field.
  String? _musicCreator;
  String get musicCreator => _musicCreator ?? '';
  bool hasMusicCreator() => _musicCreator != null;

  // "music_url" field.
  String? _musicUrl;
  String get musicUrl => _musicUrl ?? '';
  bool hasMusicUrl() => _musicUrl != null;

  // "music_duration" field.
  int? _musicDuration;
  int get musicDuration => _musicDuration ?? 0;
  bool hasMusicDuration() => _musicDuration != null;

  // "music_timer" field.
  DateTime? _musicTimer;
  DateTime? get musicTimer => _musicTimer;
  bool hasMusicTimer() => _musicTimer != null;

  // "music_description" field.
  String? _musicDescription;
  String get musicDescription => _musicDescription ?? '';
  bool hasMusicDescription() => _musicDescription != null;

  // "like" field.
  int? _like;
  int get like => _like ?? 0;
  bool hasLike() => _like != null;

  void _initializeFields() {
    _musicname = snapshotData['musicname'] as String?;
    _musicCreator = snapshotData['music_creator'] as String?;
    _musicUrl = snapshotData['music_url'] as String?;
    _musicDuration = castToType<int>(snapshotData['music_duration']);
    _musicTimer = snapshotData['music_timer'] as DateTime?;
    _musicDescription = snapshotData['music_description'] as String?;
    _like = castToType<int>(snapshotData['like']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('music');

  static Stream<MusicRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MusicRecord.fromSnapshot(s));

  static Future<MusicRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MusicRecord.fromSnapshot(s));

  static MusicRecord fromSnapshot(DocumentSnapshot snapshot) => MusicRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MusicRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MusicRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MusicRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MusicRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMusicRecordData({
  String? musicname,
  String? musicCreator,
  String? musicUrl,
  int? musicDuration,
  DateTime? musicTimer,
  String? musicDescription,
  int? like,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'musicname': musicname,
      'music_creator': musicCreator,
      'music_url': musicUrl,
      'music_duration': musicDuration,
      'music_timer': musicTimer,
      'music_description': musicDescription,
      'like': like,
    }.withoutNulls,
  );

  return firestoreData;
}

class MusicRecordDocumentEquality implements Equality<MusicRecord> {
  const MusicRecordDocumentEquality();

  @override
  bool equals(MusicRecord? e1, MusicRecord? e2) {
    return e1?.musicname == e2?.musicname &&
        e1?.musicCreator == e2?.musicCreator &&
        e1?.musicUrl == e2?.musicUrl &&
        e1?.musicDuration == e2?.musicDuration &&
        e1?.musicTimer == e2?.musicTimer &&
        e1?.musicDescription == e2?.musicDescription &&
        e1?.like == e2?.like;
  }

  @override
  int hash(MusicRecord? e) => const ListEquality().hash([
        e?.musicname,
        e?.musicCreator,
        e?.musicUrl,
        e?.musicDuration,
        e?.musicTimer,
        e?.musicDescription,
        e?.like
      ]);

  @override
  bool isValidKey(Object? o) => o is MusicRecord;
}
