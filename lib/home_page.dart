import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  Widget buildCameraPage() {}

  Widget buildChatsPage() {
    return ListView(
      children: [
        ListTile(
          onLongPress: () {},
          leading: const CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage('https://www.woolha.com/media/2020/03/flutter-circleavatar-radius.jpg'),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Jose Kutty'.toUpperCase(), style: const TextStyle(fontSize: 16)),
              const Text('4:08 AM', style: TextStyle(fontSize: 14)),
            ],
          ),
          subtitle: Row(
            children: const [
              Icon(Icons.done),
              SizedBox(width: 10),
              Text('Enthuva pani ?'),
            ],
          ),
        ),
        ListTile(
          onLongPress: () {},
          leading: const CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage('https://www.woolha.com/media/2020/03/flutter-circleavatar-radius.jpg'),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('JOHNSSY'.toUpperCase(), style: const TextStyle(fontSize: 16)),
              const Text('3:38 PM', style: TextStyle(fontSize: 14)),
            ],
          ),
          subtitle: Row(
            children: const [
              Icon(Icons.done_all),
              SizedBox(width: 10),
              Text('How are you?'),
            ],
          ),
        ),
        ListTile(
          onLongPress: () {},
          leading: const CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage('https://www.woolha.com/media/2020/03/flutter-circleavatar-radius.jpg'),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Sasi'.toUpperCase(), style: const TextStyle(fontSize: 16)),
              const Text('2:00 PM', style: TextStyle(fontSize: 14)),
            ],
          ),
          subtitle: Row(
            children: const [
              Icon(Icons.done_all),
              SizedBox(width: 10),
              Text('Vilicho ?'),
            ],
          ),
        ),
        ListTile(
          onLongPress: () {},
          leading: const CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage('https://www.woolha.com/media/2020/03/flutter-circleavatar-radius.jpg'),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('PRINCIPAL'.toUpperCase(), style: const TextStyle(fontSize: 16)),
              const Text('2:00 PM', style: TextStyle(fontSize: 14)),
            ],
          ),
          subtitle: Row(
            children: const [
              Text('Fees adakada vedele'),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildGroupsPage() {}

  Widget buildStatusPage() {}

  Widget buildCallsPage() {}

  @override
  Widget build(BuildContext context) {
    var controller = TabController(length: 5, vsync: this);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
        title: const Text('WhatsApp EXT'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, size: 30),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, size: 30),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          controller: controller,
          indicatorSize: TabBarIndicatorSize.tab,
          labelPadding: const EdgeInsets.all(0),
          tabs: [
            IconButton(
              icon: const Icon(Icons.camera_alt),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.chat),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.group),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.dashboard_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.call),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          Text('test'),
          buildChatsPage(),
          Text('test'),
          Text('test'),
          Text('test'),
          
        ],
      ),
    );
  }
}
