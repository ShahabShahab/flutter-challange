import 'package:online_selling_interview_question/features/home/domain/entities/stadium.dart';

class StadiumsResponse {
  final List<Stadium> stadiums;

  StadiumsResponse({required this.stadiums});

  factory StadiumsResponse.mock() => StadiumsResponse(stadiums: [
        Stadium(id: "m213", name: "San Siro"),
        Stadium(id: "m654", name: "Wembley"),
        Stadium(id: "m63", name: "Tottenham Hotspur Stadium"),
        Stadium(id: "m6888", name: "Camp Nou"),
      ]);
}
