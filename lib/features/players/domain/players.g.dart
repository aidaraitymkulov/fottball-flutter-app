// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'players.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerTeamImpl _$$PlayerTeamImplFromJson(Map<String, dynamic> json) =>
    _$PlayerTeamImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      shortName: json['shortName'] as String?,
      crest: json['crest'] as String?,
      venue: json['venue'] as String?,
    );

Map<String, dynamic> _$$PlayerTeamImplToJson(_$PlayerTeamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'shortName': instance.shortName,
      'crest': instance.crest,
      'venue': instance.venue,
    };

_$PlayerProfileImpl _$$PlayerProfileImplFromJson(Map<String, dynamic> json) =>
    _$PlayerProfileImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      nationality: json['nationality'] as String?,
      position: json['position'] as String?,
      section: json['section'] as String?,
      shirtNumber: (json['shirtNumber'] as num?)?.toInt(),
      currentTeam: json['currentTeam'] == null
          ? null
          : PlayerTeam.fromJson(json['currentTeam'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlayerProfileImplToJson(_$PlayerProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'dateOfBirth': instance.dateOfBirth,
      'nationality': instance.nationality,
      'position': instance.position,
      'section': instance.section,
      'shirtNumber': instance.shirtNumber,
      'currentTeam': instance.currentTeam,
    };
