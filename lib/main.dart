//CARA MEMBUAT WIDGET SENDIRI
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = new Faker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Extract Widget"),
        ),
        body: ListView.builder(
          itemCount: 30,
          itemBuilder: (context, index) {
            return chat_item(
              imageUrl: "https://picsum.photos/id/$index/200/300",
              title: faker.person.name(),
              subtitle: faker.lorem.sentence(),
            );
          },
        ),
      ),
    );
  }
}

class chat_item extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  chat_item(
      {required this.imageUrl, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(
        subtitle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text("09:00"),
    );
  }
}
