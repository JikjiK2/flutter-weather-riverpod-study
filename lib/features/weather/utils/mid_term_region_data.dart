class MidTermRegionData {
  final String region; // 예: 서울·인천·경기도
  final String city; // 예: 서울
  final String regId; // 예: 11B10101
  final bool isCommunicated; // 남한 통보문 지점 여부 (o = true)

  MidTermRegionData({
    required this.region,
    required this.city,
    required this.regId,
    this.isCommunicated = false,
  });

  factory MidTermRegionData.fromMap(Map<String, dynamic> map) {
    return MidTermRegionData(
      region: map['지역'] as String,
      city: map['도시'] as String,
      regId: map['코드'] as String,
      isCommunicated: (map['남한 통보문 지점'] as String?) == 'o',
    );
  }
}
