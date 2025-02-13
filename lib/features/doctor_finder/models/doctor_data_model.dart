class DoctorDataModel {
  final String name;
  final String speciality;
  final String? phoneNumber;
  final String location;
  final int id;
  final String educationalDegree;
  final String description;

  DoctorDataModel({
    required this.name,
    required this.speciality,
    this.phoneNumber,
    required this.location,
    required this.id,
    required this.educationalDegree,
    required this.description,
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
    );
  }

  static List<DoctorDataModel> getSampleDoctors() {
    return [
      DoctorDataModel(
        name: 'Dr. John Smith',
        speciality: 'Cardiologist',
        phoneNumber: '+1 234 567 8900',
        location: 'New York Medical Center',
        id: 1,
        educationalDegree: 'MD, FACC',
        description:
            'Specialized in cardiovascular diseases with over 15 years of experience.',
      ),
      DoctorDataModel(
        name: 'Dr. Sarah Johnson',
        speciality: 'Pediatrician',
        phoneNumber: '+1 234 567 8901',
        location: 'Children\'s Hospital',
        id: 2,
        educationalDegree: 'MD, FAAP',
        description:
            'Experienced in pediatric care and has been practicing for over 10 years.',
      ),
      DoctorDataModel(
        name: 'Dr. Michael Brown',
        speciality: 'Neurologist',
        phoneNumber: '+1 234 567 8902',
        location: 'Brain & Spine Institute',
        id: 3,
        educationalDegree: 'MD, PhD',
        description:
            'Specialized in neurological disorders and has been practicing for over 12 years.',
      ),
      DoctorDataModel(
        name: 'Dr. Emma Wilson',
        speciality: 'Dermatologist',
        phoneNumber: '+1 234 567 8903',
        location: 'Skin Care Clinic',
        id: 4,
        educationalDegree: 'MD, DDS',
        description: 'Expert in skin care and dermatological treatments.',
      ),
      DoctorDataModel(
        name: 'Dr. James Anderson',
        speciality: 'Orthopedist',
        phoneNumber: '+1 234 567 8904',
        location: 'Sports Medicine Center',
        id: 5,
        educationalDegree: 'MD, DO',
        description: 'Specialized in sports injuries and orthopedic care.',
      ),
      DoctorDataModel(
        name: 'Dr. Lisa Chen',
        speciality: 'Pediatrician',
        phoneNumber: '+1 234 567 8905',
        location: 'Children\'s Wellness Center',
        id: 6,
        educationalDegree: 'MD, FAAP',
        description:
            'Experienced in pediatric care and has been practicing for over 8 years.',
      ),
      DoctorDataModel(
        name: 'Dr. Robert Miller',
        speciality: 'Neurologist',
        phoneNumber: '+1 234 567 8906',
        location: 'Brain & Spine Institute',
        id: 7,
        educationalDegree: 'MD, PhD',
        description:
            'Specialized in neurological disorders and has been practicing for over 10 years.',
      ),
      DoctorDataModel(
        name: 'Dr. Maria Garcia',
        speciality: 'Cardiologist',
        phoneNumber: '+1 234 567 8907',
        location: 'Heart Center',
        id: 8,
        educationalDegree: 'MD, FACC',
        description:
            'Specialized in cardiovascular diseases with over 10 years of experience.',
      ),
      DoctorDataModel(
        name: 'Dr. David Lee',
        speciality: 'Ophthalmologist',
        phoneNumber: '+1 234 567 8930',
        location: 'Vision Care Center',
        id: 9,
        educationalDegree: 'MD, DO',
        description: 'Specialized in eye care and vision treatments.',
      ),
    ];
  }
}
