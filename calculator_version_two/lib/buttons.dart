import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
      color: Colors.black,
      width: mediaQuery.size.width,
      height: mediaQuery.size.height,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: ClipPath(
              child: Container(
                width: mediaQuery.size.width,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: SizedBox(),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.centerRight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text('20 + 80', style: TextStyle(fontSize: 22)),
                            SizedBox(height: 10),
                            Text('= 100', style: TextStyle(fontSize: 22)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: mediaQuery.size.width,
              //color: Colors.black,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(flex: 1, child: buttons('AC')),
                        Expanded(flex: 1, child: buttons('7')),
                        Expanded(flex: 1, child: buttons('4')),
                        Expanded(flex: 1, child: buttons('1')),
                        Expanded(flex: 1, child: buttons(' ')),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: Icon(Icons.backspace,
                                color: Colors.white, size: 30)),
                        Expanded(flex: 1, child: buttons('8')),
                        Expanded(flex: 1, child: buttons('5')),
                        Expanded(flex: 1, child: buttons('2')),
                        Expanded(flex: 1, child: buttons('0')),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(flex: 1, child: buttons('%')),
                        Expanded(flex: 1, child: buttons('9')),
                        Expanded(flex: 1, child: buttons('6')),
                        Expanded(flex: 1, child: buttons('1')),
                        Expanded(flex: 1, child: buttons('.')),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(flex: 1, child: buttons('+')),
                        Expanded(flex: 1, child: buttons('×')),
                        Expanded(flex: 1, child: buttons('-')),
                        Expanded(flex: 1, child: buttons('+')),
                        Expanded(flex: 1, child: buttons('=')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

FlatButton buttons(String name) {
  return FlatButton(
    onPressed: () {},
    color: Colors.transparent,
    child: Text(
      name,
      style: TextStyle(color: Colors.white, fontSize: 22),
    ),
  );
}
