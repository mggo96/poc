import 'package:flutter/material.dart';

class feedBack extends StatefulWidget {
  const feedBack({super.key});

  @override
  State<feedBack> createState() => _feedBackState();
}

Map<String, String> map_1 = {
  'titre': 'Feedback 1',
  'desc': 'jamais vu autant pouri',
};
Map<String, String> map_2 = {
  'titre': 'Feedback 2',
  'desc': 'meme un stagiaire fait mieux !!!!',
};

Map<String, String> map_3 = {
  'titre': 'Feedback 3',
  'desc': 'jamais vu autant pouri',
};
Map<String, String> map_4 = {
  'titre': 'Feedback 4',
  'desc': 'meme un stagiaire fait mieux !!!!',
};
List<Map<String, String>> listDeMap = [];

class _feedBackState extends State<feedBack> {
  @override
  void initState() {
    super.initState();
    listDeMap.add(map_1);
    listDeMap.add(map_2);
    listDeMap.add(map_3);
    listDeMap.add(map_4);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("product feedback"),
      ),
      body: Center(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          padding: const EdgeInsets.all(8),
          itemCount: listDeMap.length,
          itemBuilder: (BuildContext context, int items) {
            return Container(
              height: 50,
              margin: EdgeInsets.only(bottom: 10),
              color: Colors.black26,
              child: Column(
                children: [
                  Text(listDeMap[items]["titre"]!),
                  Text(listDeMap[items]["desc"]!),
                ],
              ),
            );
          },
        ),
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
