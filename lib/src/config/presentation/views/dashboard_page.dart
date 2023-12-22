import 'package:bikecare/dummy_data/service_list.dart';
import 'package:bikecare/src/config/presentation/utils/constants/strings.dart';
import 'package:bikecare/src/config/presentation/widgets/mileage_tracker_card.dart';
import 'package:bikecare/src/domain/models/service_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: _buildHideTopHeaderScroll(),
    );
  }

  Column _buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildProfileWidget(),
        const MileageTrackingCard(mileage: 4229),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: _buildTile(
                  'Next Service',
                  '14 August 2024',
                )),
            Expanded(
                flex: 1,
                child: _buildTile(
                  'Last Service',
                  '23 February 2023',
                )),
          ],
        ),
        const SizedBox(height: 10),
      ],
      // ),
    );
  }



  Widget _buildTile(String title, String subtitle) {
    const TextStyle titleStyle =
        TextStyle(fontSize: 18, fontWeight: FontWeight.w800);
    const TextStyle subtitleStyle =
        TextStyle(fontSize: 13, fontWeight: FontWeight.normal);
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

  Widget _buildHideTopHeaderScroll() {
    final List<Service> listService = generateRandomServices(20);
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            forceMaterialTransparency: true,
            // backgroundColor: Colors.white,
            collapsedHeight: 300.0,
            expandedHeight: 300.0,
            // Set the height of the app bar when expanded
            floating: false,
            // The app bar won't float as the user scrolls
            pinned: false,
            // The app bar is pinned at the top
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: _buildColumn()),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: listService.length,
              (BuildContext context, int index) {
                final service = listService[index];

                return Card(
                  child: ListTile(
                    style: ListTileStyle.drawer,
                    titleTextStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15),
                    title: Text(service.name),
                    subtitle: Text(
                      service.location,
                      style: const TextStyle(fontSize: 12),
                    ),
                    trailing: Text(
                      DateFormat('MMM d').format(service.createdDate),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
