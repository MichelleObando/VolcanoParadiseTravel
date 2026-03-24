import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OfertasRecord extends FirestoreRecord {
  OfertasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "fechaInicio" field.
  DateTime? _fechaInicio;
  DateTime? get fechaInicio => _fechaInicio;
  bool hasFechaInicio() => _fechaInicio != null;

  // "fechaFinal" field.
  DateTime? _fechaFinal;
  DateTime? get fechaFinal => _fechaFinal;
  bool hasFechaFinal() => _fechaFinal != null;

  // "categorias" field.
  List<String>? _categorias;
  List<String> get categorias => _categorias ?? const [];
  bool hasCategorias() => _categorias != null;

  // "creadoEn" field.
  DateTime? _creadoEn;
  DateTime? get creadoEn => _creadoEn;
  bool hasCreadoEn() => _creadoEn != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _fechaInicio = snapshotData['fechaInicio'] as DateTime?;
    _fechaFinal = snapshotData['fechaFinal'] as DateTime?;
    _categorias = getDataList(snapshotData['categorias']);
    _creadoEn = snapshotData['creadoEn'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ofertas');

  static Stream<OfertasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OfertasRecord.fromSnapshot(s));

  static Future<OfertasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OfertasRecord.fromSnapshot(s));

  static OfertasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OfertasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OfertasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OfertasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OfertasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OfertasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOfertasRecordData({
  String? titulo,
  String? descripcion,
  DateTime? fechaInicio,
  DateTime? fechaFinal,
  DateTime? creadoEn,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'descripcion': descripcion,
      'fechaInicio': fechaInicio,
      'fechaFinal': fechaFinal,
      'creadoEn': creadoEn,
    }.withoutNulls,
  );

  return firestoreData;
}

class OfertasRecordDocumentEquality implements Equality<OfertasRecord> {
  const OfertasRecordDocumentEquality();

  @override
  bool equals(OfertasRecord? e1, OfertasRecord? e2) {
    const listEquality = ListEquality();
    return e1?.titulo == e2?.titulo &&
        e1?.descripcion == e2?.descripcion &&
        e1?.fechaInicio == e2?.fechaInicio &&
        e1?.fechaFinal == e2?.fechaFinal &&
        listEquality.equals(e1?.categorias, e2?.categorias) &&
        e1?.creadoEn == e2?.creadoEn;
  }

  @override
  int hash(OfertasRecord? e) => const ListEquality().hash([
        e?.titulo,
        e?.descripcion,
        e?.fechaInicio,
        e?.fechaFinal,
        e?.categorias,
        e?.creadoEn
      ]);

  @override
  bool isValidKey(Object? o) => o is OfertasRecord;
}
