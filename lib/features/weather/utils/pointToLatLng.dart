import 'dart:math';

class PointToLatLng {
  static const double RE = 6371.00877;
  static const double GRID = 5.0;
  static const double SLAT1 = 30.0;
  static const double SLAT2 = 60.0;
  static const double OLON = 126.0;
  static const double OLAT = 38.0;
  static const double XO = 43;
  static const double YO = 136;
  static const double DEGRAD = pi / 180.0;
  static const double RADDEG = 180.0 / pi;

  static final double re = RE / GRID;
  static final double slat1 = SLAT1 * DEGRAD;
  static final double slat2 = SLAT2 * DEGRAD;
  static final double olon = OLON * DEGRAD;
  static final double olat = OLAT * DEGRAD;

  static final double _snTmp =
      tan(pi * 0.25 + slat2 * 0.5) / tan(pi * 0.25 + slat1 * 0.5);

  static final double sn = log(cos(slat1) / cos(slat2)) / log(_snTmp);

  static final double _sfTmp = tan(pi * 0.25 + slat1 * 0.5);

  static final double sf = pow(_sfTmp, sn) * cos(slat1) / sn;

  static final double _roTmp = tan(pi * 0.25 + olat * 0.5);

  static final double ro = re * sf / pow(_roTmp, sn);

  @pragma('vm:prefer-inline')
  static gpsToGRID(double v1, double v2) {
    var xy = [0, 0];
    double theta;

    var ra = tan(pi * 0.25 + (v1) * DEGRAD * 0.5);
    ra = re * sf / pow(ra, sn);
    theta = v2 * DEGRAD - olon;
    if (theta > pi) theta -= 2.0 * pi;
    if (theta < -pi) theta += 2.0 * pi;
    theta *= sn;

    xy[0] = (ra * sin(theta) + XO + 0.5).floor();
    xy[1] = (ro - ra * cos(theta) + YO + 0.5).floor();

    return {'nx': xy[0], 'ny': xy[1]};
  }

  @pragma('vm:prefer-inline')
  static gridToGPS(int v1, int v2) {
    var rs = <String, double>{};
    double theta;

    double xn = (v1 - XO);
    double yn = (ro - (v2 - YO));

    var ra = sqrt(xn * xn + yn * yn);

    if (ra == 0.0) {
      rs['lat'] = OLAT;
      rs['lng'] = OLON;
      return rs;
    }

    if (sn < 0.0) ra = -ra;

    final double exponent = 1.0 / sn;

    var alat = pow((re * sf / ra), exponent);
    alat = 2.0 * atan(alat) - pi * 0.5;

    theta = atan2(xn, yn);

    var alon = theta / sn + olon;

    rs['lat'] = alat * RADDEG;
    rs['lng'] = alon * RADDEG;

    return rs;
  }
}
