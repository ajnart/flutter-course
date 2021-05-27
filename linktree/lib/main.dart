// ignore: avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import './constants.dart';
import './social_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ajnart\'s LinkTree 🎄',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String socialName = "Thomas Camlong";
  String description =
      "Fullstack developer 📌 Bordeaux\nProbably busy losing money by making a faulty DogeCoin trading bot...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEFEFE),
      bottomSheet: Row(
        children: [
          TextButton(
            onPressed: () => launch("https://flutter.dev/"),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Made with flutter"),
                ),
                FlutterLogo(),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/thomas.jpg'),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 4),
                        blurRadius: 4.0,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  socialName,
                  style: normalText(
                    //color: textColor,
                    fontSize: 27,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: normalText(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                      letterSpacing: 0),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Social links',
                  style: normalText(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87),
                ),
                Wrap(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: SocialButton(
                        url: 'https://www.malt.fr/profile/thomascamlong',
                        icon: MdiIcons.devTo,
                        iconColor: Colors.black,
                        label: "Malt",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: SocialButton(
                        url: 'https://github.com/ajnart',
                        icon: MdiIcons.github,
                        iconColor: Colors.black,
                        label: "GitHub",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: SocialButton(
                        url: 'https://www.linkedin.com/in/thomas-camlong/',
                        icon: MdiIcons.linkedin,
                        iconColor: Colors.blue.shade800,
                        label: "LinkedIn",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: SocialButton(
                        url: 'https://twitter.com/ajnavocado',
                        icon: MdiIcons.twitter,
                        iconColor: Colors.lightBlue,
                        label: "Twitter",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: SocialButton(
                        url: 'https://m.me/camlong.thomas',
                        icon: MdiIcons.facebookMessenger,
                        iconColor: Colors.blueAccent,
                        label: "Messenger",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: SocialButton(
                        url:
                            'https://open.spotify.com/user/aroeal250wtx1w7pgaewuno3l',
                        icon: MdiIcons.spotify,
                        iconColor: Colors.green,
                        label: "Spotify",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: SocialButton(
                        url: 'https://www.instagram.com/thomas.cmlg/',
                        icon: MdiIcons.instagram,
                        iconColor: Colors.purple,
                        label: "Instagram",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: SocialButton(
                        url: 'mailto://thomascamlong.pro@gmail.com',
                        icon: MdiIcons.gmail,
                        iconColor: Colors.red.shade800,
                        label: "Mail",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
