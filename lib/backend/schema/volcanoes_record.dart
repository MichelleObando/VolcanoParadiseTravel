import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VolcanoesRecord extends FirestoreRecord {
  VolcanoesRecord._(
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

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "difficultyLevel" field.
  String? _difficultyLevel;
  String get difficultyLevel => _difficultyLevel ?? '';
  bool hasDifficultyLevel() => _difficultyLevel != null;

  // "recommendedSeason" field.
  String? _recommendedSeason;
  String get recommendedSeason => _recommendedSeason ?? '';
  bool hasRecommendedSeason() => _recommendedSeason != null;

  // "necessaryEquipment" field.
  List<String>? _necessaryEquipment;
  List<String> get necessaryEquipment => _necessaryEquipment ?? const [];
  bool hasNecessaryEquipment() => _necessaryEquipment != null;

  // "imageGallery" field.
  List<String>? _imageGallery;
  List<String> get imageGallery => _imageGallery ?? const [];
  bool hasImageGallery() => _imageGallery != null;

  // "averageGrade" field.
  double? _averageGrade;
  double get averageGrade => _averageGrade ?? 0.0;
  bool hasAverageGrade() => _averageGrade != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _location = snapshotData['location'] as String?;
    _difficultyLevel = snapshotData['difficultyLevel'] as String?;
    _recommendedSeason = snapshotData['recommendedSeason'] as String?;
    _necessaryEquipment = getDataList(snapshotData['necessaryEquipment']);
    _imageGallery = getDataList(snapshotData['imageGallery']);
    _averageGrade = castToType<double>(snapshotData['averageGrade']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('volcanoes');

  static Stream<VolcanoesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VolcanoesRecord.fromSnapshot(s));

  static Future<VolcanoesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VolcanoesRecord.fromSnapshot(s));

  static VolcanoesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VolcanoesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VolcanoesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VolcanoesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VolcanoesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VolcanoesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVolcanoesRecordData({
  String? name,
  String? description,
  String? location,
  String? difficultyLevel,
  String? recommendedSeason,
  double? averageGrade,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'location': location,
      'difficultyLevel': difficultyLevel,
      'recommendedSeason': recommendedSeason,
      'averageGrade': averageGrade,
    }.withoutNulls,
  );

  return firestoreData;
}

class VolcanoesRecordDocumentEquality implements Equality<VolcanoesRecord> {
  const VolcanoesRecordDocumentEquality();

  @override
  bool equals(VolcanoesRecord? e1, VolcanoesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.location == e2?.location &&
        e1?.difficultyLevel == e2?.difficultyLevel &&
        e1?.recommendedSeason == e2?.recommendedSeason &&
        listEquality.equals(e1?.necessaryEquipment, e2?.necessaryEquipment) &&
        listEquality.equals(e1?.imageGallery, e2?.imageGallery) &&
        e1?.averageGrade == e2?.averageGrade;
  }

  @override
  int hash(VolcanoesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.location,
        e?.difficultyLevel,
        e?.recommendedSeason,
        e?.necessaryEquipment,
        e?.imageGallery,
        e?.averageGrade
      ]);

  @override
  bool isValidKey(Object? o) => o is VolcanoesRecord;
}
