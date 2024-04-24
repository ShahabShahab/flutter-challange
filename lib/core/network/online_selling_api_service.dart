import 'package:chopper/chopper.dart';
import 'package:online_selling_interview_question/features/auth/login/domain/entities/login_request.dart';
import 'package:online_selling_interview_question/features/auth/login/domain/entities/login_response.dart';
import 'package:online_selling_interview_question/features/home/domain/entities/stadiums_response.dart';

/// This class could be our base service for requesting an API call
/// for example Chopper or Dio will be embedded within this class and an
/// instance of this service will be dispatched to our remote data source classes!
abstract class OnlineSellingAPIService {

  @Post(path: "/login-request")
  Future<Response<LoginResponse>> login(@Body() LoginRequest request);

  @Get(path: "/map")
  Future<Response<StadiumsResponse>> getStadiums();

}
