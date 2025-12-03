# flutter-weather-riverpod-study

### 현재 진행 상황

- **Google Geocoding API 연동:** 현재 위치를 상세 주소로 변환하여 출력 (서울 시청 기준 - 주소: 서울특별시 중구 태평로1가) 

- **Google Geocoding API 한국 주소 문제점:** 첫 번째 결과만으로는 상세 주소(예: 동/읍/면 단위)를 찾지 못하는 문제 발견.

- **문제 해결 방법:** `sublocality_level_2`를 포함하는 결과가 있는지 **필터링**하여 확인한 후, 발견 즉시 해당 결과를 조기 종료하여 반환하는 로직을 적용.

### Google Geocoding API 응답 메시지 분석 (KR)

| **Key (API Types)** | **한국 주소 예시** | **역할** |
| --- | --- | --- |
| `country` | 대한민국 | 국가 |
| `administrative_area_level_1` | 서울특별시, 경기도, 제주특별자치도 | **광역자치단체 (시/도)** |
| `locality` | 제주시, 파주시, 합천군 | **시/군** |
| `sublocality_level_1` | 용산구, 중구, 부산진구 | 광역시에 속하는 **'구'** |
| `sublocality_level_2` | 태평로1가, 이도이동, 탄현면, 합천읍 | **법정동/행정동/읍/면/가(街)** |
| `sublocality_level_3` | 합천리 | **'리(里)'** 단위 |
| `sublocality_level_4` | 세종대로, 헤이리마을길, 광양9길 | **도로명** 또는 일부 특정 구역 |

pub.dev   `geocoding` 패키지 사용 시 특정 동(洞) 명칭이 영어로 표기되는 문제, 일관된 주소 정보를 위해 Google Geocoding API를 사용.