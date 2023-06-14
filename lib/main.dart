import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module_7/counterscreen.dart';

main(){
  runApp (MyApp(appName: 'Ostad App',));
}
class MyApp extends StatelessWidget{
  final String  appName;
  const MyApp({required this.appName});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      darkTheme: ThemeData(primarySwatch: Colors.deepOrange),
      themeMode: ThemeMode.system,
      home:CounterScreen(),


    );
  }
}


class MassageScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    print("Step -1 initial call");
  return _MassageScreenState();


  }

}
class _MassageScreenState extends State<MassageScreen> {

  String WelcomeMassage = " Hi";

  @override
  void initState() {
    super.initState();
    print("Step -2 init step");
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("Step -3 init did");
  }
  @override
  void didUpdateWidget(covariant MassageScreen oldWidget) {
    print('Updated');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print("Step -4 init build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Ostad App"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(WelcomeMassage, style: TextStyle(fontSize: 24),),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            WelcomeMassage = WelcomeMassage == "Hi" ? "Hello" : "Hi";
            print(WelcomeMassage);
            setState(() {});
          },
          label: Text("Change Text")
      ),
    );
  }

  @override
  void deactivate() {
    print("Deactivate");
    super.deactivate();
  }

  @override
  void dispose() {
    print("disposed");
    super.dispose();
  }
}











