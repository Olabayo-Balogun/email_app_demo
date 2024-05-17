import 'package:flutter/material.dart';
import 'email_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Email Demo App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Email App'),
            ),
            ListTile(
              title: Text('Inbox'),
              onTap: () {
                Navigator.pop(context); //Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InboxPage()),
                );
              },
            ),
            ListTile(
                title: Text('Promotions'),
                onTap: () {
                  Navigator.pop(context); //Close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PromotionPage()),
                  );
                }),
            ListTile(
                title: Text('Updates'),
                onTap: () {
                  Navigator.pop(context); //Close the drawer
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UpdatePage()));
                }),
            ListTile(
                title: Text('Sent'),
                onTap: () {
                  Navigator.pop(context); //Close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SentPage()),
                  );
                }),
          ],
        ),
      ),
      body: InboxPage(),
    );
  }
}

class InboxPage extends StatefulWidget {
  @override
  _InboxPageState createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  final List<Email> emails = [
    Email(
      sender: 'balogunolabayo@gmail.com',
      subject: 'Football Match Today',
      body: 'Remember to play football today',
    ),
    Email(
      sender: 'balogunolabayo@gmail.com',
      subject: 'Meetings',
      body: 'You have a meeting today by 9pm, remember to be early',
    ),
    Email(
      sender: 'balogunolabayo@gmail.com',
      subject: 'Mechanic',
      body: 'You have a meeting with the mechanic next week',
    ),
    Email(
      sender: 'balogunolabayo@gmail.com',
      subject: 'Code',
      body: 'Remember to write code today',
    ),
    Email(
      sender: 'balogunolabayo@gmail.com',
      subject: 'Routine',
      body: 'Remember to brush your teeth today',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inbox'),
      ),
      body: ListView.builder(
        itemCount: emails.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(emails[index].subject[0]),
            ),
            title: Text(emails[index].sender),
            subtitle: Text(emails[index].subject),
            trailing: IconButton(
              icon: Icon(
                emails[index].isFavourite ? Icons.star : Icons.star_border,
              ),
              onPressed: () {
                setState(() {
                  emails[index].isFavourite = !emails[index].isFavourite;
                });
              },
            ),
          );
        },
      ),
    );
  }
}

class PromotionPage extends StatefulWidget {
  @override
  _PromotionPageState createState() => _PromotionPageState();
}

class _PromotionPageState extends State<PromotionPage> {
  final List<Email> emails = [
    Email(
      sender: 'balogunolabayo@gmail.com',
      subject: 'Promotion',
      body: 'Remember to play football today',
    ),
    Email(
      sender: 'balogunolabayo@gmail.com',
      subject: 'Promotion',
      body: 'You have a meeting today by 9pm, remember to be early',
    ),
    Email(
      sender: 'balogunolabayo@gmail.com',
      subject: 'Promotion',
      body: 'You have a meeting with the mechanic next week',
    ),
    Email(
      sender: 'balogunolabayo@gmail.com',
      subject: 'Promotion',
      body: 'Remember to write code today',
    ),
    Email(
      sender: 'balogunolabayo@gmail.com',
      subject: 'Promotion',
      body: 'Remember to brush your teeth today',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Promotion'),
      ),
      body: ListView.builder(
        itemCount: emails.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(emails[index].subject[0]),
            ),
            title: Text(emails[index].sender),
            subtitle: Text(emails[index].subject),
            trailing: IconButton(
              icon: Icon(
                emails[index].isFavourite ? Icons.star : Icons.star_border,
              ),
              onPressed: () {
                setState(() {
                  emails[index].isFavourite = !emails[index].isFavourite;
                });
              },
            ),
          );
        },
      ),
    );
  }
}

class UpdatePage extends StatefulWidget {
  @override
  _UpdatePageState createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  final List<Email> emails = [
    Email(
      sender: 'balogunolabayo@gmail.com',
      subject: 'Update',
      body: 'Remember to play football today',
    ),
    Email(
      sender: 'balogunolabayo@gmail.com',
      subject: 'Update',
      body: 'You have a meeting today by 9pm, remember to be early',
    ),
    Email(
      sender: 'balogunolabayo@gmail.com',
      subject: 'Update',
      body: 'You have a meeting with the mechanic next week',
    ),
    Email(
      sender: 'balogunolabayo@gmail.com',
      subject: 'Update',
      body: 'Remember to write code today',
    ),
    Email(
      sender: 'balogunolabayo@gmail.com',
      subject: 'Update',
      body: 'Remember to brush your teeth today',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Updates'),
      ),
      body: ListView.builder(
        itemCount: emails.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(emails[index].subject[0]),
            ),
            title: Text(emails[index].sender),
            subtitle: Text(emails[index].subject),
            trailing: IconButton(
              icon: Icon(
                emails[index].isFavourite ? Icons.star : Icons.star_border,
              ),
              onPressed: () {
                setState(() {
                  emails[index].isFavourite = !emails[index].isFavourite;
                });
              },
            ),
          );
        },
      ),
    );
  }
}

class SentPage extends StatefulWidget {
  @override
  _SentPageState createState() => _SentPageState();
}

class _SentPageState extends State<SentPage> {
  final List<Email> emails = [
    Email(
      sender: 'balogunolabayo@gmail.com',
      subject: 'Sent',
      body: 'Remember to play football today',
    ),
    Email(
      sender: 'balogunolabayo@gmail.com',
      subject: 'Sent',
      body: 'You have a meeting today by 9pm, remember to be early',
    ),
    Email(
      sender: 'balogunolabayo@gmail.com',
      subject: 'Sent',
      body: 'You have a meeting with the mechanic next week',
    ),
    Email(
      sender: 'balogunolabayo@gmail.com',
      subject: 'Sent',
      body: 'Remember to write code today',
    ),
    Email(
      sender: 'balogunolabayo@gmail.com',
      subject: 'Sent',
      body: 'Remember to brush your teeth today',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Updates'),
      ),
      body: ListView.builder(
        itemCount: emails.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(emails[index].subject[0]),
            ),
            title: Text(emails[index].sender),
            subtitle: Text(emails[index].subject),
            trailing: IconButton(
              icon: Icon(
                emails[index].isFavourite ? Icons.star : Icons.star_border,
              ),
              onPressed: () {
                setState(() {
                  emails[index].isFavourite = !emails[index].isFavourite;
                });
              },
            ),
          );
        },
      ),
    );
  }
}
