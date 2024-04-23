import 'package:online_selling_interview_question/core/base_provider.dart';
import 'package:online_selling_interview_question/features/home/domain/entities/stadiums_response.dart';
import 'package:online_selling_interview_question/features/home/domain/use_cases/home_usecase.dart';

class HomeProvider extends BaseProvider {
  final HomeUseCase useCase;

  HomeProvider({required this.useCase});

  Future<StadiumsResponse> getStadiums() async {
    setState(ViewState.LOADING);
    return useCase.getStadiums().then((response) {
      return response;
    });
  }
}
