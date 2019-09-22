import 'package:flutter/material.dart';


class Home extends StatefulWidget {
	Home({Key key, this.title}) : super(key: key);

	// This widget is the home page of your application. It is stateful, meaning
	// that it has a State object (defined below) that contains fields that affect
	// how it looks.

	// This class is the configuration for the state. It holds the values (in this
	// case the title) provided by the parent (in this case the App widget) and
	// used by the build method of the State. Fields in a Widget subclass are
	// always marked "final".

	final String title;

	@override
	_HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text(widget.title),
			),
			body: ListView.builder(
				
			),
		);
	}
}