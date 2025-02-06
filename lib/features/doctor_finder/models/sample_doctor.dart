class SampleDoctor {
  final String name;
  final String speciality;
  final String phoneNumber;
  final String location;
  final int id;

  SampleDoctor({
    required this.name,
    required this.speciality,
    required this.phoneNumber,
    required this.location,
    required this.id,
  });

  factory SampleDoctor.fromJson(Map<String, dynamic> json) {
    return SampleDoctor(
      name: json['name'] as String,
      speciality: json['speciality'] as String,
      phoneNumber: json['phone_number'] as String,
      location: json['location'] as String,
      id: json['id'] as int,
    );
  }

  static List<SampleDoctor> getSampleDoctors() {
    return [
      SampleDoctor(
        name: 'Dr. John Smith',
        speciality: 'Cardiologist',
        phoneNumber: '+1 234 567 8900',
        location: 'New York Medical Center',
        id: 1,
      ),
      SampleDoctor(
        name: 'Dr. Sarah Johnson',
        speciality: 'Pediatrician',
        phoneNumber: '+1 234 567 8901',
        location: 'Children\'s Hospital',
        id: 2,
      ),
      SampleDoctor(
        name: 'Dr. Michael Brown',
        speciality: 'Neurologist',
        phoneNumber: '+1 234 567 8902',
        location: 'Brain & Spine Institute',
        id: 3,
      ),
      SampleDoctor(
        name: 'Dr. Emma Wilson',
        speciality: 'Dermatologist',
        phoneNumber: '+1 234 567 8903',
        location: 'Skin Care Clinic',
        id: 4,
      ),
      SampleDoctor(
        name: 'Dr. James Anderson',
        speciality: 'Orthopedist',
        phoneNumber: '+1 234 567 8904',
        location: 'Sports Medicine Center',
        id: 5,
      ),
      SampleDoctor(
        name: 'Dr. Lisa Chen',
        speciality: 'Pediatrician',
        phoneNumber: '+1 234 567 8905',
        location: 'Children\'s Wellness Center',
        id: 6,
      ),
      SampleDoctor(
        name: 'Dr. Robert Miller',
        speciality: 'Neurologist',
        phoneNumber: '+1 234 567 8906',
        location: 'Brain & Spine Institute',
        id: 7,
      ),
      SampleDoctor(
        name: 'Dr. Maria Garcia',
        speciality: 'Cardiologist',
        phoneNumber: '+1 234 567 8907',
        location: 'Heart Center',
        id: 8,
      ),
      SampleDoctor(
        name: 'Dr. David Lee',
        speciality: 'Ophthalmologist',
        phoneNumber: '+1 234 567 8930',
        location: 'Vision Care Center',
        id: 9,
      ),
    ];
  }
}
