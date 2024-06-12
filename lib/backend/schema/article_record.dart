import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ArticleRecord extends FirestoreRecord {
  ArticleRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "article_tittle" field.
  String? _articleTittle;
  String get articleTittle => _articleTittle ?? '';
  bool hasArticleTittle() => _articleTittle != null;

  // "article_creator" field.
  String? _articleCreator;
  String get articleCreator => _articleCreator ?? '';
  bool hasArticleCreator() => _articleCreator != null;

  // "article_image" field.
  String? _articleImage;
  String get articleImage => _articleImage ?? '';
  bool hasArticleImage() => _articleImage != null;

  // "article_create" field.
  DateTime? _articleCreate;
  DateTime? get articleCreate => _articleCreate;
  bool hasArticleCreate() => _articleCreate != null;

  // "article_content" field.
  String? _articleContent;
  String get articleContent => _articleContent ?? '';
  bool hasArticleContent() => _articleContent != null;

  void _initializeFields() {
    _articleTittle = snapshotData['article_tittle'] as String?;
    _articleCreator = snapshotData['article_creator'] as String?;
    _articleImage = snapshotData['article_image'] as String?;
    _articleCreate = snapshotData['article_create'] as DateTime?;
    _articleContent = snapshotData['article_content'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('article');

  static Stream<ArticleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArticleRecord.fromSnapshot(s));

  static Future<ArticleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArticleRecord.fromSnapshot(s));

  static ArticleRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ArticleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArticleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArticleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArticleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArticleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArticleRecordData({
  String? articleTittle,
  String? articleCreator,
  String? articleImage,
  DateTime? articleCreate,
  String? articleContent,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'article_tittle': articleTittle,
      'article_creator': articleCreator,
      'article_image': articleImage,
      'article_create': articleCreate,
      'article_content': articleContent,
    }.withoutNulls,
  );

  return firestoreData;
}

class ArticleRecordDocumentEquality implements Equality<ArticleRecord> {
  const ArticleRecordDocumentEquality();

  @override
  bool equals(ArticleRecord? e1, ArticleRecord? e2) {
    return e1?.articleTittle == e2?.articleTittle &&
        e1?.articleCreator == e2?.articleCreator &&
        e1?.articleImage == e2?.articleImage &&
        e1?.articleCreate == e2?.articleCreate &&
        e1?.articleContent == e2?.articleContent;
  }

  @override
  int hash(ArticleRecord? e) => const ListEquality().hash([
        e?.articleTittle,
        e?.articleCreator,
        e?.articleImage,
        e?.articleCreate,
        e?.articleContent
      ]);

  @override
  bool isValidKey(Object? o) => o is ArticleRecord;
}
