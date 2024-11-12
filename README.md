# TUGAS 7


### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
StatelessWidget adalah widget yang tidak memiliki state yang dapat berubah. Artinya, setelah widget ini dibuat, ia tidak akan berubah selama siklusnya.
Digunakan untuk widget yang tidak memerlukan perubahan data atau tampilan setelah dibuat.
Contoh: Widget seperti Text, Icon, dan RaisedButton yang tidak memerlukan perubahan state.

StatefulWidget adalah widget yang memiliki state yang dapat berubah. Artinya, widget ini dapat berubah selama siklusnya berdasarkan interaksi pengguna atau perubahan data.
Digunakan untuk widget yang memerlukan perubahan data atau tampilan setelah dibuat.
Contoh: Widget seperti Checkbox, Slider, dan TextField yang memerlukan perubahan state.

###  Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Scaffold: Memberikan struktur dasar untuk halaman aplikasi, termasuk AppBar, body, dan fitur dasar lain seperti floating action button. Di sini, Scaffold digunakan untuk membuat kerangka halaman dengan AppBar di bagian atas dan isi halaman (body) yang berisi kolom informasi.
1. Structural Widgets:
Scaffold: Widget dasar yang menyediakan struktur layout dasar aplikasi dengan AppBar dan body
AppBar: Widget yang menampilkan bar di bagian atas aplikasi, berisi judul "My Vintage Choice"
Column: Widget untuk menyusun widget-widget child secara vertikal
Row: Widget untuk menyusun widget-widget child secara horizontal
Container: Widget untuk membungkus widget lain dan memberikan padding, margin, dan dekorasi
Center: Widget untuk menempatkan child widget di tengah
Padding: Widget untuk memberikan padding di sekeliling widget child
2. Layout Widgets:
GridView.count: Widget untuk menampilkan item dalam bentuk grid dengan jumlah kolom yang ditentukan
SizedBox: Widget untuk memberikan jarak/spasi kosong dengan ukuran tertentu
MediaQuery: Widget untuk mendapatkan informasi tentang ukuran layar device
3. Interactive Widgets:
InkWell: Widget yang memberikan efek ripple dan menangani interaksi tap
Material: Widget yang memberikan visual material design pada child widget
Card: Widget yang menampilkan panel dengan efek elevasi dan sudut membulat
4. Content Display Widgets:
Text: Widget untuk menampilkan teks
Icon: Widget untuk menampilkan ikon
5. Feedback Widgets:
SnackBar: Widget yang menampilkan pesan singkat di bagian bawah layar
ScaffoldMessenger: Widget untuk mengelola SnackBar
6. Custom Widgets (Widget yang dibuat sendiri):
InfoCard: Widget kustom untuk menampilkan informasi dalam bentuk kartu (NPM, Name, Class)
ItemCard: Widget kustom untuk menampilkan item menu dalam bentuk kartu dengan ikon
ItemHomepage: Class untuk menyimpan data item (bukan widget, tapi class model)
7. Style & Decoration:
TextStyle: Widget untuk mengatur style dari text (warna, ukuran, weight)
BorderRadius: Widget untuk membuat sudut melengkung pada container
Color: Widget untuk menentukan warna

###  Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() adalah method yang digunakan dalam StatefulWidget untuk memberitahu framework Flutter bahwa ada perubahan state internal widget yang memerlukan rebuild UI.
Fungsi setState():
- Memicu rebuild widget
- Memperbarui UI ketika ada perubahan data
- Hanya dapat digunakan dalam StatefulWidget
- Dijalankan secara sinkronus

```
class ExampleStatefulWidget extends StatefulWidget {
  const ExampleStatefulWidget({super.key});

  @override
  State<ExampleStatefulWidget> createState() => _ExampleStatefulWidgetState();
}

class _ExampleStatefulWidgetState extends State<ExampleStatefulWidget> {
  // Variabel yang biasa terdampak setState():
  int counter = 0;           // Nilai numerik
  String text = "";          // Teks
  bool isVisible = true;     // Status boolean
  List<String> items = [];   // Koleksi data
  Color backgroundColor;     // Properti tampilan
  
  void incrementCounter() {
    setState(() {
      counter++;  // Perubahan nilai akan memicu rebuild UI
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```

Karakteristik Variabel yang Dapat Terdampak:
- Variabel yang dideklarasikan sebagai properti State
- Variabel yang mempengaruhi tampilan UI
- Variabel yang nilainya bisa berubah selama widget hidup

###  Jelaskan perbedaan antara const dengan final.
1. Const
Variabel const adalah compile-time constant
Nilainya harus sudah diketahui saat compile time
Nilai tidak bisa diubah setelah diinisialisasi
Memory address-nya tetap dan nilai yang sama akan berbagi memory yang sama
Hanya dapat digunakan untuk nilai yang bersifat immutable
```
const Text(
  'Welcome to My Vintage Choice',
  style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
  ),
)

const Padding(padding: EdgeInsets.all(3))
```
2. Final
Variabel final adalah runtime constant
Nilainya bisa ditentukan saat runtime
Nilai tidak bisa diubah setelah diinisialisasi
Setiap instance memiliki memory address yang berbeda
Dapat digunakan untuk nilai yang ditentukan saat runtime
```
final String npm = '2306165572';
final String name = 'Ananda Dwi Hanifa';
final String className = 'PBP A';
final List<ItemHomepage> items = [...];
```

### CheckList
1. import
```
import 'package:flutter/material.dart';
```

2. lengkapi menu.dart menjadi
```
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final String npm = '2306165572'; // NPM
  final String name = 'Ananda Dwi Hanifa'; // Nama
  final String className = 'PBP A'; // Kelas

  MyHomePage({super.key});

  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Product", Icons.inventory, Colors.blue),
    ItemHomepage("Tambah Product", Icons.add_shopping_cart, Colors.green),
    ItemHomepage("Logout", Icons.logout, Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    // Scaffold menyediakan struktur dasar halaman dengan AppBar dan body.
    return Scaffold(
      backgroundColor: const Color(0xFFEDE8DC),
      // AppBar adalah bagian atas halaman yang menampilkan judul.
      appBar: AppBar(
        // Judul aplikasi "My Vintage Choice" dengan teks putih dan tebal.
        title: const Text(
          'My Vintage Choice',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Warna latar belakang AppBar diambil dari skema warna tema aplikasi.
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      // Body halaman dengan padding di sekelilingnya.
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // Menyusun widget secara vertikal dalam sebuah kolom.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Row untuk menampilkan 3 InfoCard secara horizontal.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),

            // Memberikan jarak vertikal 16 unit.
            const SizedBox(height: 16.0),

            // Menempatkan widget berikutnya di tengah halaman.
            Center(
              child: Column(
                // Menyusun teks dan grid item secara vertikal.

                children: [
                  // Menampilkan teks sambutan dengan gaya tebal dan ukuran 18.
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to My Vintage Choice',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),

                  // Grid untuk menampilkan ItemCard dalam bentuk grid 3 kolom.
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    // Agar grid menyesuaikan tinggi kontennya.
                    shrinkWrap: true,

                    // Menampilkan ItemCard untuk setiap item dalam list items.
                    children: items.map((ItemHomepage item) {
                      return ItemCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  // Kartu informasi yang menampilkan title dan content.

  final String title; // Judul kartu.
  final String content; // Isi kartu.

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Membuat kotak kartu dengan bayangan dibawahnya.
      elevation: 2.0,
      child: Container(
        // Mengatur ukuran dan jarak di dalam kartu.
        width: MediaQuery.of(context).size.width /
            3.5, // menyesuaikan dengan lebar device yang digunakan.
        padding: const EdgeInsets.all(16.0),
        // Menyusun title dan content secara vertikal.
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama.

  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      // Menentukan warna latar belakang dari tema aplikasi.
      color: item.color,
      // Membuat sudut kartu melengkung.
      borderRadius: BorderRadius.circular(12),

      child: InkWell(
        // Aksi ketika kartu ditekan.
        onTap: () {
          // Menampilkan pesan SnackBar saat kartu ditekan.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
        },
        // Container untuk menyimpan Icon dan Text
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Menyusun ikon dan teks di tengah kartu.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;

  ItemHomepage(this.name, this.icon, this.color);
}
````

3. Menyesuaikan warna, nama button, dan bentuk iconnya menjadi
```
final List<ItemHomepage> items = [
    ItemHomepage("Lihat Product", Icons.inventory, Colors.blue),
    ItemHomepage("Tambah Product", Icons.add_shopping_cart, Colors.green),
    ItemHomepage("Logout", Icons.logout, Colors.red),
  ];
```

4. set variabel menjadi final
```
final String npm = '2306165572'; // NPM
final String name = 'Ananda Dwi Hanifa'; // Nama
final String className = 'PBP A'; // Kelas
```

5. git add, commit, push


# TUGAS 8

## Kegunaan const di Flutter
const digunakan untuk mendefinisikan objek yang bersifat immutable (tidak dapat diubah) dan dapat dihitung pada waktu kompilasi. 

**Keuntungan menggunakan const adalah:**
1. Objek const hanya dibuat sekali dan dapat digunakan kembali di seluruh aplikasi, menghemat memori.
2. Karena objek const dihitung pada waktu kompilasi, ini dapat meningkatkan kinerja aplikasi dengan mengurangi beban kerja pada runtime.
3. Membantu mencegah perubahan yang tidak disengaja pada objek yang seharusnya tetap konstan.

**Kapan Menggunakan const:**
- ketika tahu bahwa nilai tidak akan berubah selama runtime.
- Cocok untuk widget stateless yang tidak memerlukan perubahan.
  
**Kapan Tidak Menggunakan const:**
Jangan gunakan const untuk objek yang nilainya akan berubah selama runtime atau yang bergantung pada input pengguna.

## Perbandingan Column dan Row di Flutter
Column: Menyusun widget secara vertikal. Digunakan ketika ingin menampilkan elemen dari atas ke bawah.
```
  Column(
    children: [
      Text('Item 1'),
      Text('Item 2'),
      Text('Item 3'),
    ],
  )
```
Row: Menyusun widget secara horizontal. Digunakan ketika ingin menampilkan elemen dari kiri ke kanan.
```
  Row(
    children: [
      Icon(Icons.star),
      Text('Starred Item'),
    ],
  )
```
## Elemen Input yang Digunakan pada Form:
Dalam productentry_form.dart, saya menggunakan:
TextFormField untuk:
1. Name (input text)
2. Description (input text)
3. Amount (input number)
4. Price (input number)
 
**Elemen Input Flutter Lain yang Tidak Digunakan:**
1. Checkbox: Untuk input boolean (true/false)
2. Radio: Untuk memilih satu opsi dari beberapa pilihan
3. Switch: Toggle on/off
4. Slider: Untuk memilih nilai dalam range tertentu
5. DropdownButton: Untuk memilih dari daftar opsi
6. DatePicker: Untuk memilih tanggal
7. TimePicker: Untuk memilih waktu
8. ColorPicker: Untuk memilih warna

## Pengaturan Tema dalam Aplikasi:
Saya mengimplementasikan tema dalam main.dart menggunakan ThemeData:
```
theme: ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFFA5B68D),  // Warna utama
  ).copyWith(
    secondary: const Color(0xFFA5B68D),  // Warna sekunder
  ),
  useMaterial3: true,
),
```

## Menangani Navigasi dalam Aplikasi Flutter
Navigasi dalam aplikasi Flutter dengan banyak halaman dapat dilakukan menggunakan Navigator dan MaterialPageRoute. Dapat menggunakan push untuk menambahkan halaman baru ke stack navigasi dan pop untuk kembali ke halaman sebelumnya.
```
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => NewPage()),
);
```
Untuk navigasi yang lebih kompleks, dapat menggunakan paket seperti flutter_bloc atau provider untuk mengelola state dan navigasi secara lebih terstruktur.

