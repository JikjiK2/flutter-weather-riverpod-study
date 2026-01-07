import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('정보')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: const Text('오픈소스 라이선스'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              showLicensePage(
                context: context,
                applicationName: 'AI Weather',
                applicationVersion: '1.0.0',
              );
            },
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: Text(
              'API 출처 정보',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '본 앱에서 제공되는 날씨 정보는 다음 출처에서 제공됩니다:',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                Text(
                  '**기상청 날씨 정보 (KMA Open API)**',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                Text(
                  '- 자료 출처: 기상청 (https://apihub.kma.go.kr/)',
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  '- 이용 정책: 공공데이터포털의 표준 라이선스 또는 각 API별 사용 정책을 따릅니다.',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 24),
                Text(
                  '본 앱에서 제공되는 위치 정보는 다음 출처에서 제공됩니다:',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                Text(
                  '**Google Geocoding API**',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '- 자료 출처: Google Maps Platform (Google)',
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  '- 관련 약관: Google Maps Platform 서비스 약관 (https://cloud.google.com/maps-platform/terms?hl=ko)',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 8),
                Text(
                  '- 모든 Google Maps Platform 콘텐츠에는 Google 및 그 공급업체의 저작권 표시가 적용됩니다. Google의 로고와 저작권 정보를 앱 내에 적절히 표시해야 합니다.',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SizedBox(height: 24),
                Text(
                  '각 라이브러리 및 API의 라이선스 규정을 준수하며 개발되었습니다.',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
