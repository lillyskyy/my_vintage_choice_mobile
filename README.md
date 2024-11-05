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









