# Campus Store

Campus Store adalah aplikasi Flutter sederhana yang dibuat untuk memenuhi Tugas #5 Mobile Developer Documentation. Aplikasi ini mendemonstrasikan fitur navigasi antar screen serta konsep Event & State pada Flutter.

## Fitur

* Menampilkan 3 katalog pada Home Screen.
* Menggunakan ListView dan Card.
* Setiap katalog dapat diklik.
* Navigasi dari Home Screen ke Detail Screen menggunakan Navigator.push.
* Menampilkan detail katalog berupa nama, harga, icon, dan deskripsi.
* Detail Screen menggunakan StatefulWidget.
* Memiliki fitur Favorite yang dapat mengubah tampilan menggunakan setState().
* Memiliki tombol back melalui AppBar.

## Requirements

Sebelum menjalankan project, pastikan sudah terinstall:

* Flutter SDK
* Dart SDK
* Visual Studio Code atau IDE lainnya
* Chrome atau emulator untuk menjalankan aplikasi

## Installation

Clone repository:

```bash
git clone https://github.com/abdullobawazier/campus_store.git
```

Masuk ke folder project:

```bash
cd campus_store
```

Install dependencies:

```bash
flutter pub get
```

## Run Application

Untuk menjalankan aplikasi menggunakan Chrome:

```bash
flutter run -d chrome
```

Atau menggunakan device atau emulator Flutter:

```bash
flutter run
```

## Struktur Project

```text
lib/
├── main.dart
└── screens/
    ├── home_screen.dart
    └── detail_screen.dart
```

## Screen

### Home Screen

Home Screen menggunakan StatelessWidget dan menampilkan 3 katalog menggunakan ListView, Card, dan ListTile.

### Detail Screen

Detail Screen menggunakan StatefulWidget. Screen ini menampilkan informasi katalog berupa nama, harga, icon, dan deskripsi.

Detail Screen juga memiliki tombol Favorite yang dapat mengubah tampilan menggunakan setState().

## Navigation

Navigasi dari Home Screen ke Detail Screen menggunakan Navigator.push.

Contoh:

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => DetailScreen(...),
  ),
);
```

## Event & State

Event terjadi ketika pengguna menekan tombol Favorite.

State disimpan menggunakan:

```dart
bool isFavorite = false;
```

Perubahan state dilakukan menggunakan:

```dart
setState(() {
  isFavorite = !isFavorite;
});
```

Perubahan tersebut akan mengubah icon dan teks pada tombol Favorite.

## Database

Aplikasi ini menggunakan data katalog sederhana yang disimpan langsung di dalam source code dan tidak menggunakan database MySQL.

## Author

Mobile Developer Documentation — Tugas #5
