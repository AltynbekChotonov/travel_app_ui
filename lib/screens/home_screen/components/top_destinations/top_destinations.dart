import 'package:flutter/material.dart';

import '../../../../mocks/mock_top_destinations.dart';
import '../../../../utils/constants.dart';
import 'top_destination_item.dart';

class TopDestinations extends StatelessWidget {
  final double padding;
  final double spacing;

  const TopDestinations({
    Key? key,
    required this.padding,
    required this.spacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: const Text(
            'Мыкты эс алуучу жерлер',
            style: TextStyle(
              color: kSecondaryColor,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 50,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: padding),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (_, __) => SizedBox(width: spacing),
            itemCount: MockTopDestinations.data.length,
            itemBuilder: (_, index) => TopDestinationItem(
              details: MockTopDestinations.data[index],
            ),
          ),
        ),
      ],
    );
  }
}
