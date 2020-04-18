import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_challenge/application.dart';

class ChallengeOne extends StatefulWidget {
  ChallengeOne({Key key}) : super(key: key);

  @override
  _ChallengeOneState createState() => _ChallengeOneState();
}

class _ChallengeOneState extends State<ChallengeOne> {
  Widget _dataText(var textTheme, String dname, String ddata) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: ScreenUtil().setWidth(40),
            ),
            child: Text(
              dname,
              style: textTheme.subtitle.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              " : ",
              style: textTheme.subtitle.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: Text(
            ddata,
            style: textTheme.subtitle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }

  Widget _vspace(double h) {
    return SizedBox(
      height: ScreenUtil().setWidth(h),
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);
    final size = MediaQuery.of(context).size;
    Application.screenWidth = size.width;
    Application.screenHeight = size.height;
    Application.statusBarHeight = MediaQuery.of(context).padding.top;
    Application.bottomBarHeight = MediaQuery.of(context).padding.bottom;
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    return Scaffold(
      appBar: AppBar(title: Text("Ui Challenge One")),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(width: 1)),
                    margin: EdgeInsets.only(top: 30.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                top: ScreenUtil().setHeight(50)),
                            child:
                                _dataText(textTheme, "User Name", "Robot user"),
                          ),
                          _vspace(10),
                          _dataText(textTheme, "Unique id", "00000"),
                          _vspace(10),
                          _dataText(textTheme, "Date of Birth", "10/10/1980"),
                          _vspace(10),
                          _dataText(textTheme, "Blood Type", "A"),
                          _vspace(10),
                          _dataText(textTheme, "Gender", "Male"),
                          _vspace(10),
                          _dataText(textTheme, "Height", "-"),
                          _vspace(10),
                          _dataText(textTheme, "Known Allegis ", "-"),
                          _vspace(10),
                          _dataText(textTheme, "Known Diseases", "-"),
                          _vspace(10),
                          _dataText(textTheme, "Phone", "-"),
                          _vspace(10),
                          _dataText(textTheme, "Email", "-"),
                          _vspace(100),
                        ],
                      )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: ScreenUtil().setHeight(50)),
                    child: Container(
                      height: ScreenUtil().setHeight(530),
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: ScreenUtil().setHeight(100),
                width: ScreenUtil().setHeight(100),
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.red[300],
                  child: Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.lightGreen[100],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(55)),
            child: Align(
              alignment: Alignment.center,
              child: RaisedButton(
                onPressed: () {},
                color: Colors.lightBlue,
                child: Text("Edit"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
