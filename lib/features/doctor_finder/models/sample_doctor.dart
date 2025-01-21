class SampleDoctor {
  final String name;
  final String speciality;
  final String phoneNumber;
  final String location;

  SampleDoctor({
    required this.name,
    required this.speciality,
    required this.phoneNumber,
    required this.location,
  });

  static List<SampleDoctor> getSampleDoctors() {
    return [
      SampleDoctor(
        name: 'Dr. John Smith',
        speciality: 'Cardiologist',
        phoneNumber: '+1 234 567 8900',
        location: 'New York Medical Center',
      ),
      SampleDoctor(
        name: 'Dr. Sarah Johnson',
        speciality: 'Pediatrician',
        phoneNumber: '+1 234 567 8901',
        location: 'Children\'s Hospital',
      ),
      SampleDoctor(
        name: 'Dr. Michael Brown',
        speciality: 'Neurologist',
        phoneNumber: '+1 234 567 8902',
        location: 'Brain & Spine Institute',
      ),
    ];
  }
}
