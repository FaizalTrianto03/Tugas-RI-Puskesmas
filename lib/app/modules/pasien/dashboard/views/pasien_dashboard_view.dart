import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/pasien_dashboard_controller.dart';

class PasienDashboardView extends GetView<PasienDashboardController> {
  const PasienDashboardView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            'Dashboard Pasien',
            style: TextStyle(
              color: Color(0xFF02B1BA),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildProfileCard(),
                  const SizedBox(height: 16),
                  _buildEmptyStateCard(),
                  const SizedBox(height: 24),
                  _buildMenuCards(),
                ],
              ),
            ),
            Positioned(
              bottom: -320,
              left: -320,
              child: Container(
                width: 720,
                height: 720,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      const Color(0xFF84F3EE).withValues(alpha: 0.0),
                      const Color(0xFF02B1BA).withValues(alpha: 0.18),
                      const Color(0xFF02B1BA).withValues(alpha: 0.38),
                    ],
                    stops: const [0.0, 0.5, 1.0],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildProfileCard() {
    return Obx(() => GestureDetector(
      onTap: controller.goToPengaturan,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.1),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: const Color(0xFF02B1BA),
              child: Text(
                controller.namaInisial.value,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Selamat Datang,',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    controller.getAbbreviation(controller.namaLengkap.value),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.chevron_right,
              color: Color(0xFF02B1BA),
            ),
          ],
        ),
      ),
    ));
  }
  
  Widget _buildEmptyStateCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1.5,
          style: BorderStyle.solid,
        ),
      ),
      child: Column(
        children: [
          Icon(
            Icons.event_busy_outlined,
            size: 48,
            color: Colors.grey.shade400,
          ),
          const SizedBox(height: 12),
          Text(
            'Belum ada antrean aktif',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade600,
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: 140,
            child: ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  'Informasi',
                  'Fitur Daftar Baru akan segera tersedia',
                  backgroundColor: Colors.orange,
                  colorText: Colors.white,
                  snackPosition: SnackPosition.TOP,
                  margin: const EdgeInsets.all(16),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: const EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Daftar Baru',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildMenuCards() {
    final List<Map<String, dynamic>> menus = [
      {
        'icon': Icons.add_circle_outline,
        'title': 'Daftar Baru',
        'onTap': () {
          Get.snackbar(
            'Informasi',
            'Fitur Daftar Baru akan segera tersedia',
            backgroundColor: const Color(0xFF02B1BA),
            colorText: Colors.white,
            snackPosition: SnackPosition.TOP,
            margin: const EdgeInsets.all(16),
          );
        },
      },
      {
        'icon': Icons.schedule,
        'title': 'Status Antrean',
        'onTap': () {
          Get.snackbar(
            'Informasi',
            'Fitur Status Antrean akan segera tersedia',
            backgroundColor: const Color(0xFF02B1BA),
            colorText: Colors.white,
            snackPosition: SnackPosition.TOP,
            margin: const EdgeInsets.all(16),
          );
        },
      },
      {
        'icon': Icons.description_outlined,
        'title': 'Riwayat Kunjungan',
        'onTap': () {
          Get.snackbar(
            'Informasi',
            'Fitur Riwayat Kunjungan akan segera tersedia',
            backgroundColor: const Color(0xFF02B1BA),
            colorText: Colors.white,
            snackPosition: SnackPosition.TOP,
            margin: const EdgeInsets.all(16),
          );
        },
      },
    ];
    
    return Column(
      children: menus.map((menu) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: InkWell(
            onTap: menu['onTap'],
            borderRadius: BorderRadius.circular(12),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF02B1BA),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF02B1BA).withValues(alpha: 0.3),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(
                    menu['icon'],
                    color: Colors.white,
                    size: 28,
                  ),
                  const SizedBox(width: 16),
                  Text(
                    menu['title'],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
