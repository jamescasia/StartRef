import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ExploreScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:startref/scoped_models/app_model.dart';

double screenWidth;
double screenHeight;
double dx;
double dy;

class StartRef extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return ScopedModel(
        model: AppModel(),
        child: ScopedModelDescendant<AppModel>(
            builder: (context, child, appModel) {
          return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.green,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.access_alarm),
                    Row(
                      children: <Widget>[
                        Text("🖼"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("🙈")
                      ],
                    )
                  ],
                ),
              ),
              body: (appModel.screenIndex == 0)
                  ? HomePage()
                  : (appModel.screenIndex == 1)
                      ? ExplorePage()
                      : ExplorePage());
        }));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ThreePictures(),
            MidText(),
            BotButtons(),
            MadeWithLove()
          ],
        ),
      ),
    );
  }
}

class MidText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 30),
      child: new Column(
        children: <Widget>[
          Text(
            "Photos are from\n Unsplash",
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Contribute by submitting your own\n scribbles on Tumblr",
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class BotButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<AppModel>(builder: (context, child, appModel) {
      return Container(
        margin: EdgeInsets.only(top: 30, bottom: 30),
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            MaterialButton(
              color: Colors.greenAccent,
              child: Text("generate"),
              onPressed: () {
                appModel.updateScreen();

                // Navigator.push(context,
                //     CupertinoPageRoute(builder: (context) => ExploreScreen()));
              },
            ),
            MaterialButton(
              color: Colors.greenAccent,
              child: Text("Save"),
              onPressed: () {},
            )
          ],
        ),
      );
    });
  }
}

class MadeWithLove extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: screenWidth,
      height: 50,
      color: Colors.black,
      child: Center(
        child: Text(
          "Made with ❤ by xanderjakeq",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}

class ThreePictures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      width: screenWidth,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15),
            color: Colors.grey,
            width: screenWidth * 0.6,
            height: 300,
          ),
          Container(
            margin: EdgeInsets.all(15),
            color: Colors.grey,
            width: screenWidth * 0.6,
            height: screenWidth * 0.6,
          ),
          Container(
            margin: EdgeInsets.all(15),
            color: Colors.grey,
            width: screenWidth * 0.6,
            height: 200,
          )
        ],
      ),
    );
  }
}
