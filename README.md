# flutter-weather-riverpod-study

**기능별 클린 아키텍처 구조**와 **Riverpod**을 활용한 상태 관리를 활용한 날씨 앱

## 주요 기능

-   **현재 위치 기반 날씨**: 사용자의 현재 위치를 기반으로 실시간 날씨 정보를 조회합니다.
-   **주소 검색 및 저장**: 원하는 지역을 검색하고 해당 지역의 날씨를 확인할 수 있습니다.
-   **상세 날씨 정보**: 기상청의 여러 API(초단기, 단기, 중기)를 조합하여 현재 날씨, 시간별 예보, 주간 예보 등 상세한 정보를 제공합니다. 

## 데이터 흐름 및 주요 로직

1.  **위치 정보 관리**
    -   앱 실행 시, `Geolocator`를 통해 현재 GPS 위치를 요청합니다.
    -   위치 정보 획득에 실패하면, `SharedPreferences`에 저장된 마지막 위치를 불러옵니다.
    -   저장된 위치도 없으면, 서울을 기본 위치로 설정하여 항상 유효한 위치 값을 보장합니다.
    -   사용자는 주소 검색을 통해 원하는 위치로 변경할 수 있습니다.

2.  **좌표 변환 및 주소 조회**    
    -   **기상청 격자 좌표 변환**: `weatherGridCoordsProvider`는 위경도를 기상청 API 호출에 필요한 X, Y 격자 좌표로 변환합니다.
    -   **Geocoding**: 사람이 읽을 수 있는 주소(예: "서울시 중구")를 Google Geocoding API를 통해 위경도로 변환합니다.
    -   **Reverse Geocoding**: 위경도를 Google Geocoding API를 통해 사람이 읽을 수 있는 주소(예: "서울시 중구")로 변환합니다.

3.  **날씨 데이터 요청 및 가공 (UseCases)**
    -   격자 좌표와 주소 정보가 준비되면, 각 `UseCase`가 비즈니스 로직을 수행합니다.
    -   '초단기 실황'과 '초단기 예보' API 데이터를 조합하여 '현재 날씨' 정보를 완성합니다. 체감온도 계산 로직도 포함합니다.
    -   단기 예보와 중기 예보 API 결과를 합쳐 끊김 없는 **주간 예보** 데이터를 생성합니다.


## 📂 프로젝트 주요 디렉토리 구조

```
lib
├── features
│   └── weather             # '날씨' 기능 폴더
│       ├── data
│       │   ├── datasources # Retrofit API 정의, 로컬 DB 접근
│       │   ├── models      # API 응답 모델 (DTO)
│       │   └── repositories # Data Layer Repository 구현체
│       ├── domain
│       │   ├── entities      # 핵심 비즈니스 모델
│       │   ├── repositories # Domain Layer Repository 인터페이스
│       │   └── usecases    # 비즈니스 로직
│       └── presentation
│           ├── providers   # Riverpod Provider 정의
│           ├── screens     # 화면 UI
│           └── widgets     # 화면에 사용되는 위젯            
...
```
