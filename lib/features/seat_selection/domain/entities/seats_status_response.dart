class SeatsStatusResponse {
  final List<List<int>> seats;

  SeatsStatusResponse({required this.seats});

  factory SeatsStatusResponse.mock() => SeatsStatusResponse(seats: [
        [0, 0, 1, 0],
        [0, 1, 0, 0],
        [1, 1, 1, 1],
        [1, 1, 1, 1]
      ]);
}
