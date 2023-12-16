import 'package:bikecare/dummy_data/service_list.dart';
import 'package:bikecare/src/config/presentation/utils/constants/strings.dart';
import 'package:bikecare/src/config/presentation/widgets/mileage_tracker_card.dart';
import 'package:bikecare/src/domain/models/service_model.dart';
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
      child: _buildColumn(),
    );
  }

  Column _buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildProfileWidget(),
        const MileageTrackingCard(mileage: 4229),
        _buildTile('Next Service', '14 August 2024'),
        _buildTile('Last Service', '23 February 2023'),
        const SizedBox(height: 10),
        Expanded(child: _buildListView())
      ],
      // ),
    );
  }

  ListView _buildListView() {
    final List<Service> listService=  generateRandomServices(20);
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: listService.length,
        itemBuilder: (BuildContext context, int index) {
          final service =listService[index];
          return ListTile(
            title: Text(service.name),
            subtitle: Text(service.location),
          );
        });
  }

  Widget _buildTile(String title, String subtitle) {
    const TextStyle titleStyle =
        TextStyle(fontSize: 20, fontWeight: FontWeight.w500);
    const TextStyle subtitleStyle =
        TextStyle(fontSize: 15, fontWeight: FontWeight.normal);
    return ListTile(
      title: Text(
        title,
        style: titleStyle,
      ),
      subtitle: Text(
        subtitle,
        style: subtitleStyle,
      ),
    );
  }

  Widget _buildProfileWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: _buildHeader(),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _buildGreetingUser(),
          _buildUsername('John Doe'),
          const Divider(thickness: 1)
        ],
      ),
    );
  }

  Widget _buildUsername(String username) {
    return Text(
      username,
      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildGreetingUser() {
    return const Text(
      greetingMessage,
      style: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
