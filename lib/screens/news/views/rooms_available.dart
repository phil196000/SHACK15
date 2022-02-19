import 'package:flutter/material.dart';
import 'package:shack15/customised_widgets/headers/primary_header.dart';
import 'package:shack15/customised_widgets/text/primary_text.dart';
import 'package:shack15/customised_widgets/text/secondary_text.dart';
import 'package:shack15/screens/news/models/rooms_model.dart';
import 'package:shack15/theme/colors.dart';

class RoomsAvailable extends StatelessWidget {
  RoomsAvailable({Key? key}) : super(key: key);
  final List<RoomsModel> roomsAvailable = [
    RoomsModel(number: "001", seats: "6"),
    RoomsModel(number: "003", seats: "12"),
    RoomsModel(number: "006", seats: "4"),
    RoomsModel(number: "012", seats: "12"),
    RoomsModel(number: "014", seats: "12"),
    RoomsModel(number: "015", seats: "6"),
    RoomsModel(number: "001", seats: "6"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const PrimaryHeader(text: "Rooms Available Now"),
        SizedBox(
          height: 130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 15),
            itemCount: roomsAvailable.length,
            itemBuilder: (context, index) {
              RoomsModel roomsModel = roomsAvailable[index];
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: GestureDetector(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.primary,
                        radius: 40,
                        child: SecondaryText(
                          text: roomsModel.number,
                          weight: FontWeight.w500,
                        ),
                      ),
                      PrimaryText(
                        text: 'Seat ${roomsModel.seats}',
                        weight: FontWeight.w500,
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
