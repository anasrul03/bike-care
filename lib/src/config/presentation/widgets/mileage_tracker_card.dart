import 'package:bikecare/src/config/presentation/utils/constants/strings.dart';
import 'package:flutter/material.dart';

class MileageTrackingCard extends StatelessWidget {
  const MileageTrackingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(currentMileage),
                  _buildRichText()
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_circle,
                    size: 20,
                  ))
            ],
          ),
        ),
      ),
    );
  }

  RichText _buildRichText() {
    return RichText(
      text: const TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: '4,339',
            style: TextStyle(
                color: Colors.black, fontSize: 60, fontWeight: FontWeight.w700),
          ),
          TextSpan(
            text: 'km',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
        ],
      ),
    );
  }
}
