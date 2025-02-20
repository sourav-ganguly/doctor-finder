class DoctorDataModel {
  final String name;
  final String speciality;
  final String? phoneNumber;
  final String location;
  final int id;
  final String educationalDegree;
  final String description;
  final List<String> clinics;
  final List<String> chambers;

  DoctorDataModel({
    required this.name,
    required this.speciality,
    this.phoneNumber,
    required this.location,
    required this.id,
    required this.educationalDegree,
    required this.description,
    required this.clinics,
    required this.chambers,
  });

  factory DoctorDataModel.fromJson(Map<String, dynamic> json) {
    return DoctorDataModel(
      name: json['name'] as String,
      speciality: json['speciality'] as String,
      phoneNumber: json['phone_number'] as String?,
      location: json['location'] as String,
      id: json['id'] as int,
      educationalDegree: json['educational_degree'] as String,
      description: json['description'] as String,
      clinics: List<String>.from(json['clinics'] ?? []),
      chambers: List<String>.from(json['chambers'] ?? []),
    );
  }
}
