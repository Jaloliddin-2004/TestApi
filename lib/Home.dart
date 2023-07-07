import 'package:flutter/material.dart';
import 'package:flutter_application_7/SecondPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey[800]),
      body: Column(
        children: [
          ColoredBox(
            color: Colors.grey,
          ),
          ListTile(
            title: const Text('Tahorat'),
            subtitle: const Text('    Ablution    '),
            tileColor: Colors.grey[700],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<Widget>(builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('     Tahorat   '),
                      backgroundColor: Colors.grey[500],
                    ),
                    body: Center(
                      child: Hero(
                          tag: '    Tahorat   ',
                          child: Title(
                            color: Colors.black,
                            child: Text(
                                "Tahorat, shaxsiy higiya va toza bo'lishni anglatuvchi bir tadbirdir.",
                                style: TextStyle(fontSize: 30)),
                          )),
                    ),
                  );
                }),
              );
            },
          ),
          ListTile(
            title: const Text('Bomdod namozi '),
            subtitle: const Text('    Fajr    '),
            tileColor: Colors.grey[600],
            trailing: Icon(Icons.sunny_snowing),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<Widget>(builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Bomdod namozi'),
                      backgroundColor: Colors.grey[500],
                    ),
                    body: Center(
                      child: Hero(
                        tag: '',
                        child: Material(
                            child: Text(
                          'Bamdod namozi 2rakat sunnat va 2 rakat farz namozidan iborat',
                          style: TextStyle(
                              fontSize: 40, backgroundColor: Colors.grey[200]),
                        )),
                      ),
                    ),
                  );
                }),
              );
            },
          ),
          ListTile(
            title: const Text('Peshin namozi'),
            subtitle: const Text('     Dhuhr     '),
            tileColor: Colors.grey[500],
            trailing: Icon(Icons.wb_sunny),
            onTap: () {
              Navigator.push(context, MaterialPageRoute<Widget>(
                builder: (BuildContext context) {
                  return Scaffold(
                      appBar: AppBar(
                        title: const Text('Peshin namozi'),
                        backgroundColor: Colors.grey[500],
                      ),
                      body: Center(
                        child: Hero(
                          tag: 'ListTile-Hero',
                          child: Material(
                            child: Text(
                                'Peshin Namozi 4 rakat sunnat , 4 rakat farz va 2 rakat sunnat namozidan iborat',
                                style: TextStyle(
                                    fontSize: 40,
                                    backgroundColor: Colors.grey[200])),
                          ),
                        ),
                      ));
                },
              ));
            },
          ),
          ListTile(
            title: const Text(' Asr namozi '),
            subtitle: const Text('   Asr time   '),
            tileColor: Colors.grey[400],
            trailing: Title(color: Colors.white, child: Text('50/50')),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<Widget>(builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text(' Asr namozi'),
                      backgroundColor: Colors.grey[500],
                    ),
                    body: Center(
                      child: Hero(
                        tag: 'ListTile-Hero',
                        child: Material(
                          child: Text(
                              'Asr namozi 4 rakat farz namozidan iborat',
                              style: TextStyle(
                                  fontSize: 40,
                                  backgroundColor: Colors.grey[200])),
                        ),
                      ),
                    ),
                  );
                }),
              );
            },
          ),
          ListTile(
            title: const Text('Shom namozi'),
            subtitle: const Text('     Maghrib    '),
            tileColor: Colors.grey[300],
            trailing: Icon(Icons.star_half_rounded),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<Widget>(builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('ListTile Hero'),
                      backgroundColor: Colors.grey[500],
                    ),
                    body: Center(
                      child: Hero(
                        tag: 'ListTile-Hero',
                        child: Material(
                          child: Text(
                              'Shom namozi 3 rakat farz va 2 rakat sunnat namozidan iborat',
                              style: TextStyle(
                                  fontSize: 40,
                                  backgroundColor: Colors.grey[200])),
                        ),
                      ),
                    ),
                  );
                }),
              );
            },
          ),
          ListTile(
            title: const Text('Xufton namozi'),
            subtitle: const Text('     Isha     '),
            tileColor: Colors.grey[200],
            trailing: Icon(Icons.star),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<Widget>(builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('ListTile Hero'),
                      backgroundColor: Colors.grey[500],
                    ),
                    body: Center(
                      child: Hero(
                        tag: 'ListTile-Hero',
                        child: Material(
                          child: Text(
                              'Xufton namozi 4 rakat farz , 2 rakat sunnat va 3 rakat vitr vojib  namozidan iborat',
                              style: TextStyle(
                                  fontSize: 40,
                                  backgroundColor: Colors.grey[200])),
                        ),
                      ),
                    ),
                  );
                }),
              );
            },
          ),
          BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.info_outline),
                label: 'Time',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.browse_gallery_rounded),
                label: 'Info',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined),
                  label: 'Profile',
                  backgroundColor: Colors.grey[900]),
            ],
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
          )
        ],
      ),
    );
  }
}
