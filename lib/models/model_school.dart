class School{
  final String title;
  final String add;
  final String ofc_number;
  final String help_number;
  final String email;
  final String school_code;

  School({required this.title,required this.add,required this.ofc_number,
    required this.help_number,required this.email,required this.school_code});
factory School.fromJson(Map<String,dynamic> parsedJson){
  return School(
    title: parsedJson["school_title"],
    add: parsedJson["address"],
    ofc_number: parsedJson["ofc_number"],
    help_number: parsedJson["help_number"],
    email: parsedJson["email"],
    school_code: parsedJson["school_code"]
  );
}
}
