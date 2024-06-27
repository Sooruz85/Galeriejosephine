import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DropdownmenuRecord extends FirestoreRecord {
  DropdownmenuRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "contact" field.
  String? _contact;
  String get contact => _contact ?? '';
  bool hasContact() => _contact != null;

  // "artists" field.
  String? _artists;
  String get artists => _artists ?? '';
  bool hasArtists() => _artists != null;

  // "news" field.
  String? _news;
  String get news => _news ?? '';
  bool hasNews() => _news != null;

  // "about" field.
  String? _about;
  String get about => _about ?? '';
  bool hasAbout() => _about != null;

  void _initializeFields() {
    _contact = snapshotData['contact'] as String?;
    _artists = snapshotData['artists'] as String?;
    _news = snapshotData['news'] as String?;
    _about = snapshotData['about'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dropdownmenu');

  static Stream<DropdownmenuRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DropdownmenuRecord.fromSnapshot(s));

  static Future<DropdownmenuRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DropdownmenuRecord.fromSnapshot(s));

  static DropdownmenuRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DropdownmenuRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DropdownmenuRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DropdownmenuRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DropdownmenuRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DropdownmenuRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDropdownmenuRecordData({
  String? contact,
  String? artists,
  String? news,
  String? about,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'contact': contact,
      'artists': artists,
      'news': news,
      'about': about,
    }.withoutNulls,
  );

  return firestoreData;
}

class DropdownmenuRecordDocumentEquality
    implements Equality<DropdownmenuRecord> {
  const DropdownmenuRecordDocumentEquality();

  @override
  bool equals(DropdownmenuRecord? e1, DropdownmenuRecord? e2) {
    return e1?.contact == e2?.contact &&
        e1?.artists == e2?.artists &&
        e1?.news == e2?.news &&
        e1?.about == e2?.about;
  }

  @override
  int hash(DropdownmenuRecord? e) =>
      const ListEquality().hash([e?.contact, e?.artists, e?.news, e?.about]);

  @override
  bool isValidKey(Object? o) => o is DropdownmenuRecord;
}
