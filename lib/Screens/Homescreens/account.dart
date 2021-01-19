import 'package:UdemyClone/Screens/landingPage.dart';
import 'package:UdemyClone/Services/authentication.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:page_transition/page_transition.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  Authentication authentication = Authentication();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(EvaIcons.shoppingCartOutline),
            onPressed: () {
              print('basket window');
            },
          )
        ],
        backgroundColor: Colors.black,
        title: Text(
          'Account',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 300.0,
                width: 400.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ujwal Kumar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            EvaIcons.google,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'ujwalkr01@gmail.com',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          'Become an instructor',
                          style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Video Preference',
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'Download options',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'Video playback options',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              Text(
                'Account settings',
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'Account security',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'Email notification preferences',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'Learning reminders',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              Text(
                'Support',
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'About Udemy',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'About Udemy for business',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'FAQs',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              Text(
                'Diagnostics',
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'Status',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () async {
                    await authentication.googleSignOut().whenComplete(
                      () {
                        Navigator.pushReplacement(
                          context,
                          PageTransition(
                              child: LandingPage(),
                              type: PageTransitionType.bottomToTop),
                        );
                      },
                    );
                  },
                  child: Text(
                    'Sign out',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Center(
                  child: Text(
                    'Udemy Clone v1.0.0',
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
