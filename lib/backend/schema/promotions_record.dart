import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromotionsRecord extends FirestoreRecord {
  PromotionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "descuento" field.
  int? _descuento;
  int get descuento => _descuento ?? 0;
  bool hasDescuento() => _descuento != null;

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

  // "Imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _descuento = castToType<int>(snapshotData['descuento']);
    _fechaInicio = snapshotData['fechaInicio'] as DateTime?;
    _fechaFinal = snapshotData['fechaFinal'] as DateTime?;
    _categorias = getDataList(snapshotData['categorias']);
    _imagen = snapshotData['Imagen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Promotions');

  static Stream<PromotionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PromotionsRecord.fromSnapshot(s));

  static Future<PromotionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PromotionsRecord.fromSnapshot(s));

  static PromotionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PromotionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PromotionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PromotionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PromotionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PromotionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPromotionsRecordData({
  String? titulo,
  int? descuento,
  DateTime? fechaInicio,
  DateTime? fechaFinal,
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'descuento': descuento,
      'fechaInicio': fechaInicio,
      'fechaFinal': fechaFinal,
      'Imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class PromotionsRecordDocumentEquality implements Equality<PromotionsRecord> {
  const PromotionsRecordDocumentEquality();

  @override
  bool equals(PromotionsRecord? e1, PromotionsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.titulo == e2?.titulo &&
        e1?.descuento == e2?.descuento &&
        e1?.fechaInicio == e2?.fechaInicio &&
        e1?.fechaFinal == e2?.fechaFinal &&
        listEquality.equals(e1?.categorias, e2?.categorias) &&
        e1?.imagen == e2?.imagen;
  }

  @override
  int hash(PromotionsRecord? e) => const ListEquality().hash([
        e?.titulo,
        e?.descuento,
        e?.fechaInicio,
        e?.fechaFinal,
        e?.categorias,
        e?.imagen
      ]);

  @override
  bool isValidKey(Object? o) => o is PromotionsRecord;
}
