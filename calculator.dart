import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  Widget calcbutton(String btntxt, Color btnColor, Color txtColor{
    return Container(
    child: raisedButton(
    onPressed: (){
      //TODO add function for button press
  },
  child: Text(btntxt,
  style: TextStyle(
  fontSize: 35,
  color: txtColor,
  ),
  ),
  shape: CircleBorder(),
  color: btnColor,
  padding: EdgeInsets.all(20),
    ),

    );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('calculator'),backgroundColor: Colors.black,),
      body:Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            singleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(padding: EdgeInsets.all(10.0)
                  child: Text('0',
                textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white,
                  fontSize: 100
                  ),
                  ),
              )
        ],
            ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          calcbutton('AC', Colors.grey, Colors.black),
          calcbutton('+', Colors.grey, Colors.black),
          calcbutton('%', Colors.grey, Colors.black),
          calcbutton('/', Colors.grey, Colors.black),
        ],
      ),
      SizedBox(height: 10,),

      Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      calcbutton('7', Colors.grey, Colors.black),
      calcbutton('8', Colors.grey, Colors.black),
      calcbutton('9', Colors.grey, Colors.black),
      calcbutton('*', Colors.grey, Colors.black),
      ],
      ),
      SizedBox(height: 10,),

  Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
  calcbutton('4', Colors.grey, Colors.black),
  calcbutton('5', Colors.grey, Colors.black),
  calcbutton('6', Colors.grey, Colors.black),
  calcbutton('-', Colors.grey, Colors.black),
  ],
  ),
  SizedBox(height: 10,),
  Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
  calcbutton('1', Colors.grey, Colors.black),
  calcbutton('2', Colors.grey, Colors.black),
  calcbutton('3', Colors.grey, Colors.black),
  calcbutton('+', Colors.grey, Colors.black),
  ],
  ),
  SizedBox(height: 10,),

    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RaisedButton(
              Padding: EdgeInsets.fromLTRB(34, 20, 128, 20),
              onPressed:(){

  },
            shape: stadiumBorder(),
            child: Text('0',
            style: TextStyle(
            fontSize: 35,
            color: Colors.grey[850],
  ),
          calcbutton('.', Colors.grey, Colors.white),
          calcbutton('=', Colors.grey, Colors.white),

  )
  )
  ],
  )
          ],
        )
      )
  //Calculator logic
        dynamic text = '0';
        double numOne = 0;
        double numTwo = 0;

        dynamic result = '';
        dynamic finalresult = '';
        dynamic preOpr = '';
        void calculation(btntxt){

          if(btntext =='AC'){
         text = '0';
         numOne =0;
         numTwo = 0;
        result = '';
       finalresult = '0';
         opr = '';
         preOpr = '';



        }else if(opr == '=' && btntext == '='){
            if(preOpr =="+"){
          finalResult = add();
            }else if(preOpr == '-'){
              finalResult = sub();
          } else if(preOpr == 'x'){
            finalResult = null();
         } } else if(preOpr == '/'){
            finalResult = div();

  }else if(btnText =='+' || btnText =='-' || btnText=='x' || btnText=='/'|| btnText=='='){

            if(numOne ==0){
             numOne = couple.parse(result);
            } else{
              numTwo = double.parse(result);
  }
  if(Opr =="+"){
  finalResult = add();
  }else if(Opr == '-'){
  finalResult = sub();
  } else if(Opr == 'x'){
  finalResult = null();
  } } else if(Opr == '/'){
  finalResult = div();
  }
          preOpr= opr;
          opr = btnText;
          result ='';

  }
  else if(btnText=='%'){
    result = numOne /100;
    finalResult = doesContainDecimal(result);
  else if(btntext == '.'){
    if(!result.toString().contains('.')){
      result = result.toString()+'.';
  }
    finalResult = result;
  }
  else if(btnText == '+/-'){
    result.toString().startswith('.')?result = result.toString().subString(1): result = '-'+result.toString();
    finalResult = result;
  }
  else{
    result = result+btnText;
    finalresult =result;
  }
  setState((){
  text = finalResults;
  }
  )
  }
  String add(){
    result = (numOne + numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }
  String sub(){
  result = (numOne - numTwo).toString();
  numOne = double.parse(result);
  return doesContainDecimal(result);
  }
  String mul(){
  result = (numOne * numTwo).toString();
  numOne = double.parse(result);
  return doesContainDecimal(result);
  }
  String div(){
  result = (numOne / numTwo).toString();
  numOne = double.parse(result);
  return doesContainDecimal(result);
  }
  String doesContainDecimal(dynamic result){
    if(result.toString().contains('.')){
      List<String> splitDecimal = result .toString().split('.');
      if(!int.parse(splitDecimal[1]) > 0)
        return result = splitDecimal[0].toString();
  }
    return result;
  }
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
