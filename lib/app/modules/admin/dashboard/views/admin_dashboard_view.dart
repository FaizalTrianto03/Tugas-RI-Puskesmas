import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/admin_dashboard_controller.dart';

class AdminDashboardView extends GetView<AdminDashboardController> {
  const AdminDashboardView({super.key});
  
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
            'Dashboard Admin',
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
}
