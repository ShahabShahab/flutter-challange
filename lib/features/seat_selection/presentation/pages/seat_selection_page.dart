import 'package:flutter/material.dart';
import 'package:online_selling_interview_question/core/custom_widgets/online_selling_scaffold.dart';
import 'package:online_selling_interview_question/core/custom_widgets/online_selling_spacer.dart';
import 'package:online_selling_interview_question/core/custom_widgets/online_selling_submit_button.dart';
import 'package:online_selling_interview_question/features/seat_selection/presentation/manager/seat_selection_provider.dart';
import 'package:online_selling_interview_question/features/seat_selection/presentation/widgets/seat_row.dart';
import 'package:online_selling_interview_question/features/seat_selection/presentation/widgets/seats_status_description.dart';
import 'package:online_selling_interview_question/single_pages/loading_page.dart';
import 'package:provider/provider.dart';

class SeatSelectionPage extends StatelessWidget {
  final String stadiumId;

  const SeatSelectionPage({Key? key, required this.stadiumId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SeatSelectionProvider>(context, listen: false);
    return FutureBuilder(
        future: provider.getSeatsStatus(stadiumId),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Consumer<SeatSelectionProvider>(
              builder: (BuildContext context, SeatSelectionProvider provider,
                  Widget? child) {
                return _Seats(
                  seats: provider.seatsStatus,
                );
              },
            );
          } else {
            return const LoadingPage(
              description: "Fetching seat status...",
            );
          }
        });
  }
}

class _Seats extends StatelessWidget {
  final List<List<int>> seats;

  const _Seats({super.key, required this.seats});

  @override
  Widget build(BuildContext context) {
    return OnlineSellingScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: seats.length * seats[0].length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: seats[0].length,
              ),
              itemBuilder: (BuildContext context, int index) {
                int row = index ~/ seats[0].length;
                int column = index % seats[0].length;
                return GestureDetector(
                  onTap: () => context
                      .read<SeatSelectionProvider>()
                      .selectSeat(row, column, onSeatSelected: (message) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(message),
                    ));
                  }),
                  child: SeatRow(type: seats[row][column]),
                );
              },
            ),
          ),
          const SeatsStatusDescription(),
          const OnlineSellingSpacer(
            height: 50,
          )
        ],
      ),
    );
  }
}
