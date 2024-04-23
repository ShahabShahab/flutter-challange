import 'package:flutter/material.dart';
import 'package:online_selling_interview_question/core/di/container.dart';
import 'package:online_selling_interview_question/features/home/domain/entities/stadium.dart';
import 'package:online_selling_interview_question/features/home/presentation/manager/home_provider.dart';
import 'package:online_selling_interview_question/features/home/presentation/widgets/stadium_card_row.dart';
import 'package:online_selling_interview_question/features/seat_selection/presentation/manager/seat_selection_provider.dart';
import 'package:online_selling_interview_question/features/seat_selection/presentation/pages/seat_selection_page.dart';
import 'package:online_selling_interview_question/single_pages/loading_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeProvider>(context, listen: false);
    return FutureBuilder(
      future: provider.getStadiums(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return _StadiumsList(stadiums: snapshot.data!.stadiums);
        } else {
          return const LoadingPage(description: "Fetching Stadiums...",);
        }
      },
    );
  }
}

class _StadiumsList extends StatelessWidget {
  final List<Stadium> stadiums;

  const _StadiumsList({super.key, required this.stadiums});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) => GestureDetector(
            onTap: () => _openSeatSelectionPage(context, stadiums[index].id),
            child: StadiumCardRow(name: stadiums[index].name)),
        itemCount: stadiums.length,
      ),
    );
  }

  void _openSeatSelectionPage(BuildContext context, String id) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ChangeNotifierProvider(
                  create: (context) => container<SeatSelectionProvider>(),
                  child: SeatSelectionPage(
                    stadiumId: id,
                  ),
                )));
  }
}
