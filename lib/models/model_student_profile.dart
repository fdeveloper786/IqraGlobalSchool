class StudentProfile{
  final int addmissionNumber;
  final String studentName;
  final String cls;
  final String section;
  final String addmissionDate;
  final String guardianName;
  final String gender;
  final String dob;
  final String bloodGroup;
  final String nationality;
  final String address;
  final String help;

  StudentProfile({required this.addmissionNumber,required this.studentName,required this.cls, required this.section, required this.addmissionDate,
  required this.guardianName, required this.gender, required this.dob, required this.bloodGroup,required this.nationality,required this.address,required this.help});
  factory StudentProfile.fromJson(Map<String,dynamic> parsedJson){
    return StudentProfile(
        addmissionNumber: parsedJson['add_num'],
        studentName: parsedJson['stud_name'],
        cls: parsedJson['class'],
        section: parsedJson['section'],
        addmissionDate: parsedJson['add_date'],
        guardianName: parsedJson['guardian_name'],
        gender: parsedJson['gender'],
        dob: parsedJson['dob'],
        bloodGroup: parsedJson['blood_group'],
        nationality: parsedJson['nationality'],
        address: parsedJson['address'],
        help: parsedJson["help"]
    );
  }
}
