// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_entity.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class CharacterEntity extends _CharacterEntity
    with RealmEntity, RealmObjectBase, RealmObject {
  CharacterEntity(
    int? id, {
    String? name,
    String? status,
    String? species,
    String? image,
    String? originName,
    String? locationName,
    String? createdAt,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'status', status);
    RealmObjectBase.set(this, 'species', species);
    RealmObjectBase.set(this, 'image', image);
    RealmObjectBase.set(this, 'originName', originName);
    RealmObjectBase.set(this, 'locationName', locationName);
    RealmObjectBase.set(this, 'createdAt', createdAt);
  }

  CharacterEntity._();

  @override
  int? get id => RealmObjectBase.get<int>(this, 'id') as int?;

  @override
  set id(int? value) => RealmObjectBase.set(this, 'id', value);

  @override
  String? get name => RealmObjectBase.get<String>(this, 'name') as String?;

  @override
  set name(String? value) => RealmObjectBase.set(this, 'name', value);

  @override
  String? get status => RealmObjectBase.get<String>(this, 'status') as String?;

  @override
  set status(String? value) => RealmObjectBase.set(this, 'status', value);

  @override
  String? get species =>
      RealmObjectBase.get<String>(this, 'species') as String?;

  @override
  set species(String? value) => RealmObjectBase.set(this, 'species', value);

  @override
  String? get image => RealmObjectBase.get<String>(this, 'image') as String?;

  @override
  set image(String? value) => RealmObjectBase.set(this, 'image', value);

  @override
  String? get originName =>
      RealmObjectBase.get<String>(this, 'originName') as String?;

  @override
  set originName(String? value) =>
      RealmObjectBase.set(this, 'originName', value);

  @override
  String? get locationName =>
      RealmObjectBase.get<String>(this, 'locationName') as String?;

  @override
  set locationName(String? value) =>
      RealmObjectBase.set(this, 'locationName', value);

  @override
  String? get createdAt =>
      RealmObjectBase.get<String>(this, 'createdAt') as String?;

  @override
  set createdAt(String? value) => RealmObjectBase.set(this, 'createdAt', value);

  @override
  Stream<RealmObjectChanges<CharacterEntity>> get changes =>
      RealmObjectBase.getChanges<CharacterEntity>(this);

  @override
  Stream<RealmObjectChanges<CharacterEntity>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<CharacterEntity>(this, keyPaths);

  @override
  CharacterEntity freeze() =>
      RealmObjectBase.freezeObject<CharacterEntity>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'name': name.toEJson(),
      'status': status.toEJson(),
      'species': species.toEJson(),
      'image': image.toEJson(),
      'originName': originName.toEJson(),
      'locationName': locationName.toEJson(),
      'createdAt': createdAt.toEJson(),
    };
  }

  static EJsonValue _toEJson(CharacterEntity value) => value.toEJson();

  static CharacterEntity _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
      } =>
        CharacterEntity(
          fromEJson(ejson['id']),
          name: fromEJson(ejson['name']),
          status: fromEJson(ejson['status']),
          species: fromEJson(ejson['species']),
          image: fromEJson(ejson['image']),
          originName: fromEJson(ejson['originName']),
          locationName: fromEJson(ejson['locationName']),
          createdAt: fromEJson(ejson['createdAt']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(CharacterEntity._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, CharacterEntity, 'CharacterEntity', [
      SchemaProperty('id', RealmPropertyType.int,
          optional: true, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string, optional: true),
      SchemaProperty('status', RealmPropertyType.string, optional: true),
      SchemaProperty('species', RealmPropertyType.string, optional: true),
      SchemaProperty('image', RealmPropertyType.string, optional: true),
      SchemaProperty('originName', RealmPropertyType.string, optional: true),
      SchemaProperty('locationName', RealmPropertyType.string, optional: true),
      SchemaProperty('createdAt', RealmPropertyType.string, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
