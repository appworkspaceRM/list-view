# flutter_application_7

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

===

# ListView Widget

list view adalah widget yang umum dipakai untuk melakukan scroll pada halaman layar ini digunakan untuk solusi jika column tidak dapat menampung konten pada halaman yang melibihi sebuah layar secara vertical dikarenakan column tidak bisa menyelesaikan masalah ini. jika memaikai column maka kontan yang memiliki ukuran width maka ukuran konten mengikuti ukuran lebar layar screen. jadi seperti container yang memiliki nilai widht tidak memerlukan nilai. secaradefualt listview memiliki directional secara vertikal. terdapat properti scroll direction untuk mengubah behavior atau kebiasaan dari scroll direction default vertikal menjadi horizontal maka dari itu berubah pula behavior dari awalnya widht tidak perlu di atur setelah horizontal maka height yang tidak perlu di atur.

- ListView.builder()
    
    listview builder memerlukan setidaknya 2 parameter atau argument yang wajid diisi pada properti itemCount yang memerlukan nilai bilangan asli (1, 2, 3, …,n). yang kedua yaitu properti itemBuilder yang memerlukan sebuah function yang didalamnya terdapat 2 buah argument yaitu context dan index (context, index) ⇒ || (context, index) {}, didalam fungsi itemBuilder mengembalikan widget list sebanyak n properti itemCount.
```dart
import 'package:flutter/material.dart';

void main(){
	runApp(MyApp());
}

class MyApp extends StatelessWidget {

	final List<Color> myColor = [Colors.red, Colors.green, Colors.blue, Colors.amber];
	
	const MyApp({super.key});
	
	@override
	Widget build(BuildContext context){
		return MaterialApp(
			home: Scaffold(
				appBar: AppBar(
					title: Text(
						'Hello World',
						),
					),
				body: ListView.builder(
					itemCount: myColor.length, // berapa banyak list item yang akan dibuat
					itemBuilder: (context, index) {
						return Container(
							height: 400,
							color: myColor[index],
						);
					}
				),
			),
		);
	}
}
```

```dart
import 'package:flutter/material.dart';

void main(){
	runApp(MyApp());
}

class MyApp extends StatelessWidget {

	final List<Color> myColor = [Colors.red, Colors.green, Colors.blue, Colors.amber];
	final List<Widget> myText = List.generate(100, (index) => Text(index.toSting()));
	
	const MyApp({super.key});
	
	@override
	Widget build(BuildContext context){
		return MaterialApp(
			home: Scaffold(
				appBar: AppBar(
					title: Text(
						'Hello World',
						),
					),
				body: ListView.builder(
					itemCount: myColor.length, // berapa banyak list item yang akan dibuat
					itemBuilder: (context, index) {
						return Container(
							height: 400,
							color: myColor[index],
						);
					}
				),
			),
		);
	}
}
```

- ListView.separated()
    
    listview builder memerlukan setidaknya 3 parameter atau argument yang wajid diisi pada properti itemCount yang memerlukan nilai bilangan asli (1, 2, 3, …,n). yang kedua yaitu properti itemBuilder yang memerlukan sebuah function yang didalamnya terdapat 2 buah argument yaitu context dan index (context, index) ⇒ || (context, index) {}, didalam fungsi itemBuilder mengembalikan widget list sebanyak n properti itemCount, yang ke tiga yaitu properti separatorBuilder memerlukan sebuah function yang didalamnya terdapat 2 buah argument yaitu context dan index (context, index) ⇒ || (context, index) {}, didalamnya mengembalikan widget apapun untuk memisahkan properti itemBuilder agar tidak saling menempel, secara umum untuk memisahkan bisa menggunakan container dengan mengisi properti heigth namum best practice biasanya menggunakan widget Devider().

```dart
import 'package:flutter/material.dart';

void main(){
	runApp(MyApp());
}

class MyApp extends StatelessWidget {

	final List<Color> myColor = [Colors.red, Colors.green, Colors.blue, Colors.amber];
	
	const MyApp({super.key});
	
	@override
	Widget build(BuildContext context){
		return MaterialApp(
			home: Scaffold(
				appBar: AppBar(
					title: Text(
						'Hello World',
						),
					),
				body: ListView.Separated(
					separatorBuilder: (context, index) {
						return Devider(
							color: Colors.black,
						);
					},
					itemCount: myColor.length, // berapa banyak list item yang akan dibuat
					itemBuilder: (context, index) {
						return Container(
							height: 400,
							color: myColor[index],
						);
					}
				),
			),
		);
	}
}
```

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Hello World!'),
          ),
          body: ListView(
            children: [
              Container(
                height: 400,
                color: Colors.blue,
              ),
              Container(
                height: 400,
                color: Colors.amber,
              ),
            ],
          )),
    );
  }
}
```
