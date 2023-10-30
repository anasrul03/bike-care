import 'package:bikecare/src/config/presentation/utils/constants/strings.dart';
import 'package:bikecare/src/config/presentation/widgets/mileage_tracker_card.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              minVerticalPadding: 0,
              leading: CircleAvatar(),
              title: _buildGreetingUser(),
              subtitle: const Text(
                'Last checked: 12 October 2022',
                style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
              ),
            ),
            Divider(
              indent: 64,
              thickness: 2,
            ),
            _buildProfileWidget(),
            const MileageTrackingCard(mileage: 4229),
          ],
        ),
      ),
    );
  }

// TODO: add user's name after the Welcome message
  Widget _buildProfileWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          CircleAvatar(
            radius: 25,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildGreetingUser(),
                const Text(
                  'Last checked: 12 October 2022',
                  style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildGreetingUser() {
    return RichText(
      text: const TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: greetingMessage,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          TextSpan(
            text: ' John Doe',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
