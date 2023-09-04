import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'constant.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var userinput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xffee7600),
        title: Center(
          child: Column(
            children: [
              Text('Calculator', style: TextStyle(color: Colors.white, fontSize: 30)),
              Text('Made By Shujaat Ali', style: TextStyle(color: Colors.white, fontSize: 15)),
            ],
          ),
        ),

      ),
      body: SafeArea(
        child: Container(
          // color: Colors.black,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Text(userinput.toString(), style: TextStyle(fontSize: 50, color: Color(0xffee7600),fontWeight: FontWeight.bold))),
                      ),
                      SizedBox(height: 40,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(answer.toString(), style: TextStyle(fontSize: 50, color: Color(0xffee7600),))),
                      ),
                      SizedBox(height: 60,),

                    ],
                  ),
                ),
              ),

              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        num_btn(title: 'AC', txtcolor: Color(0xff000000) ,border: Color(0xffE0E0E0),onpress: (){
                          userinput = '';
                          answer = '';
                          setState(() {

                          });
                        },),
                        num_btn(title: '+/-', txtcolor: Color(0xff000000),border: Color(0xffE0E0E0),onpress: (){
                          userinput += "+/-";
                          setState(() {

                          });
                        },),
                        num_btn(title: '%', bgcolor: Color(0xffee7600),txtcolor: Color(0xffffffff),onpress: (){
                          userinput += "%";
                          setState(() {

                          });
                        }),
                        num_btn(title: '/', bgcolor: Color(0xffee7600),txtcolor: Color(0xffffffff),onpress: (){
                          userinput += "/";
                          setState(() {

                          });
                        })



                      ],
                    ),
                    Row(
                      children: [
                        num_btn(title: '7', txtcolor: Color(0xffee7600),bgcolor: Color(0xffffffff) ,onpress: (){
                          userinput += "7";
                          setState(() {

                          });
                        },),
                        num_btn(title: '8', txtcolor: Color(0xffee7600),bgcolor: Color(0xffffffff) ,onpress: (){
                          userinput += "8";
                          setState(() {

                          });
                        },),
                        num_btn(title: '9', txtcolor: Color(0xffee7600),bgcolor: Color(0xffffffff),onpress: (){
                          userinput += "9";
                          setState(() {

                          });
                        }),
                        num_btn(title: 'x', txtcolor: Color(0xffffffff), bgcolor: Color(0xffee7600),onpress: (){
                          userinput += "x";
                          setState(() {

                          });
                        })



                      ],
                    ),
                    Row(
                      children: [
                        num_btn(title: '4', txtcolor: Color(0xffee7600),bgcolor: Color(0xffffffff) ,onpress: (){
                          userinput += "4";
                          setState(() {

                          });
                        },),
                        num_btn(title: '5', txtcolor: Color(0xffee7600),bgcolor: Color(0xffffffff) ,onpress: (){
                          userinput += "5";
                          setState(() {

                          });
                        },),
                        num_btn(title: '6', txtcolor: Color(0xffee7600),bgcolor: Color(0xffffffff),onpress: (){
                          userinput += "6";
                          setState(() {

                          });
                        }),
                        num_btn(title: '-', txtcolor: Color(0xffffffff), bgcolor: Color(0xffee7600),onpress: (){
                          userinput += "-";
                          setState(() {

                          });
                        })



                      ],
                    ),
                    Row(
                      children: [
                        num_btn(title: '1', txtcolor: Color(0xffee7600),bgcolor: Color(0xffffffff) ,onpress: (){
                          userinput += "1";
                          setState(() {

                          });
                        },),
                        num_btn(title: '2', txtcolor: Color(0xffee7600),bgcolor: Color(0xffffffff) ,onpress: (){
                          userinput += "2";
                          setState(() {

                          });
                        },),
                        num_btn(title: '3', txtcolor: Color(0xffee7600),bgcolor: Color(0xffffffff),onpress: (){
                          userinput += "3";
                          setState(() {

                          });
                        }),
                        num_btn(title: '+', txtcolor: Color(0xffffffff), bgcolor: Color(0xffee7600),onpress: (){
                          userinput += "+";
                          setState(() {

                          });
                        })



                      ],
                    ),
                    Row(
                      children: [
                        num_btn(title: '0', txtcolor: Color(0xffee7600),bgcolor: Color(0xffffffff) ,onpress: (){
                          userinput += "0";
                          setState(() {

                          });
                        },),
                        num_btn(title: '.', txtcolor: Color(0xffee7600),bgcolor: Color(0xffffffff) ,onpress: (){
                          userinput += ".";
                          setState(() {

                          });
                        },),
                        num_btn(title: 'Del', txtcolor: Color(0xffee7600),bgcolor: Color(0xffffffff),onpress: (){
                          userinput = userinput.substring(0, userinput.length - 1);
                          setState(() {

                          });
                        }),
                        eql_btn(title: '=', txtcolor: Color(0xffffffff), bgcolor: Color(0xffee7600),onpress: (){
                          equalPress();
                          setState(() {

                          });
                        })



                      ],
                    ),
                  ],
                ), //btns
              )
            ],

          ),
        )
      ),
    );
  }

  void equalPress (){
    String finaluserinput = userinput.replaceAll('x', '*');
    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel contextModel = ContextModel();

    double eval = exp.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
