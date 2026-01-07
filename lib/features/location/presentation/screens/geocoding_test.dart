import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  runApp(const GeocodingApp());
}

class GeocodingApp extends StatelessWidget {
  const GeocodingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Geocoding 검색',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const GeocodingSearchPage(),
    );
  }
}

class GeocodingSearchPage extends StatefulWidget {
  const GeocodingSearchPage({super.key});

  @override
  State<GeocodingSearchPage> createState() => _GeocodingSearchPageState();
}

class _GeocodingSearchPageState extends State<GeocodingSearchPage> {
  final TextEditingController _controller = TextEditingController();
  Map<String, dynamic>? _resultData;
  bool _isLoading = false;
  String? _errorMessage;

  final String? _apiKey = dotenv.env['GOOGLE_GEOCODING_API_KEY'];

  Future<void> _geocodeAddress() async {
    final address = _controller.text.trim();
    if (address.isEmpty) {
      setState(() {
        _errorMessage = "주소를 입력해 주세요.";
        _resultData = null;
      });
      return;
    }

    setState(() {
      _isLoading = true;
      _errorMessage = null;
      _resultData = null;
    });

    final encodedAddress = Uri.encodeComponent(address);
    final url =
        'https://maps.googleapis.com/maps/api/geocode/json?address=$encodedAddress&key=$_apiKey&region=kr&language=ko';
    print('geocodingURL: $url');
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        if (data['status'] == 'OK' && data['results'].isNotEmpty) {
          final result = data['results'][0];
          setState(() {
            _resultData = {
              'inputAddress': address,
              'formattedAddress': result['formatted_address'],
              'latitude': result['geometry']['location']['lat'],
              'longitude': result['geometry']['location']['lng'],
              'locationType': result['geometry']['location_type'],
              'addressTypes': (result['types'] as List).join(', '),
            };
          });
        } else if (data['status'] == 'ZERO_RESULTS') {
          setState(() {
            _errorMessage = "검색 결과가 없습니다: $address";
          });
        } else {
          setState(() {
            _errorMessage = "API 오류 발생 (${data['status']}). 키를 확인하세요.";
          });
        }
      } else {
        setState(() {
          _errorMessage = "HTTP 요청 실패: ${response.statusCode}";
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = "네트워크 오류 발생: $e";
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Geocoding 검색'),
        backgroundColor: Colors.blue.shade700,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: '주소 입력',
                hintText: '예: 부산광역시 부산진구 가야동',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () => _controller.clear(),
                ),
              ),
              onSubmitted: (_) => _geocodeAddress(),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _isLoading ? null : _geocodeAddress,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: _isLoading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2,
                      ),
                    )
                  : const Text('주소 검색', style: TextStyle(fontSize: 16)),
            ),
            const SizedBox(height: 24.0),

            if (_isLoading)
              const Center(
                child: Text("검색 중...", style: TextStyle(color: Colors.blue)),
              )
            else if (_errorMessage != null)
              Card(
                color: Colors.red.shade100,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    '오류: $_errorMessage',
                    style: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            else if (_resultData != null)
              _buildResultCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildResultCard() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              '✔️ 검색 결과',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const Divider(),
            _buildResultRow('입력 주소', _resultData!['inputAddress']),
            _buildResultRow('정식 주소', _resultData!['formattedAddress']),
            _buildResultRow('위도 (Lat)', _resultData!['latitude'].toString()),
            _buildResultRow('경도 (Lng)', _resultData!['longitude'].toString()),
            _buildResultRow('정확도', _resultData!['locationType']),
            _buildResultRow('유형', _resultData!['addressTypes']),
          ],
        ),
      ),
    );
  }

  Widget _buildResultRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 100,
            child: Text(
              '$label:',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            child: Text(value, style: const TextStyle(color: Colors.black87)),
          ),
        ],
      ),
    );
  }
}
