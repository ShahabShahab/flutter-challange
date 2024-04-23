class LoginResponse {
  final String token;
  final String message;

  LoginResponse({required this.token, required this.message});

  factory LoginResponse.mock() =>
      LoginResponse(
          token: "JEqVhffuUUWFLJGexkTDxsPPy01mojia6rSIdoayT58VCrMqZwBTAdg8GgArDVLI",
          message: "Success");
}
