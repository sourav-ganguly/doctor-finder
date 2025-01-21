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
      SampleDoctor(
        name: 'Dr. Emma Wilson',
        speciality: 'Dermatologist',
        phoneNumber: '+1 234 567 8903',
        location: 'Skin Care Clinic',
      ),
      SampleDoctor(
        name: 'Dr. James Anderson',
        speciality: 'Orthopedist',
        phoneNumber: '+1 234 567 8904',
        location: 'Sports Medicine Center',
      ),
      SampleDoctor(
        name: 'Dr. Lisa Chen',
        speciality: 'Pediatrician',
        phoneNumber: '+1 234 567 8905',
        location: 'Children\'s Wellness Center',
      ),
      SampleDoctor(
        name: 'Dr. Robert Miller',
        speciality: 'Neurologist',
        phoneNumber: '+1 234 567 8906',
        location: 'Brain & Spine Institute',
      ),
      SampleDoctor(
        name: 'Dr. Maria Garcia',
        speciality: 'Cardiologist',
        phoneNumber: '+1 234 567 8907',
        location: 'Heart Center',
      ),
      SampleDoctor(
        name: 'Dr. David Lee',
        speciality: 'Ophthalmologist',
        phoneNumber: '+1 234 567 8930',
        location: 'Vision Care Center',
      ),
    ];
  }
}
