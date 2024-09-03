import 'package:flutter/material.dart';

class UjekLayout extends StatelessWidget {
  const UjekLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 185, 9, 9),
        elevation: 0,
        title: Text('Aplikasi', style: TextStyle(color: Colors.white)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Center(
              child: Text(
                'Saldo: Rp. 150.000',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header dengan Ikon dan Saldo
            Container(
              color: Color.fromARGB(255, 246, 29, 5),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildHeaderIcon(Icons.local_taxi_outlined, 'Transportasi'),
                      _buildHeaderIcon(Icons.payments, 'Bayar'),
                      _buildHeaderIcon(Icons.local_shipping, 'Kirim'),
                      _buildHeaderIcon(Icons.local_offer, 'Promo'),
                    ],
                  ),
                ],
              ),
            ),
            // Grid dengan Ikon Layanan
            Container(
              padding: EdgeInsets.all(16),
              child: GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildServiceIcon(Icons.beach_access_outlined, 'Liburan'),
                  _buildServiceIcon(Icons.water_drop_outlined, 'Pembayaran air'),
                  _buildServiceIcon(Icons.electric_bolt_outlined, 'Pembayaran Listrik'),
                  _buildServiceIcon(Icons.medical_services, 'Pembayaran RS'),
                  _buildServiceIcon(Icons.gamepad_outlined, 'Top Up Games'),
                  _buildServiceIcon(Icons.credit_card_rounded, 'Transfer Bank'),
                  _buildServiceIcon(Icons.account_balance_wallet, 'Tabungan'),
                  _buildServiceIcon(Icons.more_horiz, 'LAINNYA'),
                ],
              ),
            ),
            // Bagian Rekomendasi
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Rekomendasi Hari Ini',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  
                  _buildFoodItem('assets/Raja Ampat, Indonesia✨.jpeg', 'Jalan-Jalan saat weekend'),
                  _buildFoodItem('assets/The Best All-You-Can-Eat Buffet in Every State.jpeg', 'Makan Puas (All you can eat) sekeluarga '),
                  _buildFoodItem('assets/lot of money.jpeg', 'Top Up menggunakan AppCasher'),
                ],
              ),
            ),
                     BottomNavigationBar(
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",
    ),
      BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search",
    ),
      BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite",
    ),
    ],
  )
          ],
        ),
      ),
    );
  }

  // Fungsi untuk Membuat Ikon Header
  Widget _buildHeaderIcon(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 30),
        SizedBox(height: 4),
        Text(label, style: TextStyle(color: Colors.white, fontSize: 12)),
      ],
    );
  }

  // Fungsi untuk Membuat Ikon Layanan
  Widget _buildServiceIcon(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Color.fromARGB(255, 253, 46, 4),
          child: Icon(icon, color: Colors.white, size: 20),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  // Fungsi untuk Membuat Item Makanan
  Widget _buildFoodItem(String imagePath, String foodName) {
    var bottomNavigationBar;
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 4),
          Text(foodName, style: TextStyle(fontSize: 12)),
            

        ],
        
      ),
    );
  }
}
