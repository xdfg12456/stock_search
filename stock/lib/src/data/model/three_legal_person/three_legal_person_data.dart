import 'three_legal_person_info.dart';

class ThreeLegalPersonData {
  final List<ThreeLegalPersonInfo> threeLegalPersonData;

  ThreeLegalPersonData({
    required this.threeLegalPersonData,
  });

  factory ThreeLegalPersonData.from(ThreeLegalPerson ThreeLegalPerson){
    return ThreeLegalPersonData(threeLegalPersonData: ThreeLegalPerson.threeLegalPersonInfo);
  }
}
