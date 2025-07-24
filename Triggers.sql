SQL> CREATE OR REPLACE TRIGGER trg_set_absent_status
  2  BEFORE INSERT OR UPDATE ON attendance
  3  FOR EACH ROW
  4  BEGIN
  5    IF :NEW.check_in IS NULL AND :NEW.check_out IS NULL THEN
  6      :NEW.status := 'Absent';
  7    END IF;
  8  END;
  9  /

Trigger created.

SQL> CREATE OR REPLACE TRIGGER trg_default_checkin
  2  BEFORE INSERT ON attendance
  3  FOR EACH ROW
  4  BEGIN
  5    IF :NEW.check_in IS NULL THEN
  6      :NEW.check_in := SYSDATE;
  7    END IF;
  8  END;
  9  /

Trigger created.

SQL> CREATE OR REPLACE TRIGGER trg_set_late_status
  2  BEFORE INSERT OR UPDATE ON attendance
  3  FOR EACH ROW
  4  BEGIN
  5    IF :NEW.check_in IS NOT NULL AND TO_CHAR(:NEW.check_in, 'HH24:MI') > '10:00' THEN
  6      :NEW.status := 'Late';
  7    END IF;
  8  END;
  9  /

Trigger created.

SQL> SELECT *
  2  FROM attendance
  3  WHERE status = 'Absent' AND check_in IS NULL;

    ATT_ID     EMP_ID CHECK_IN  CHECK_OUT STATUS
---------- ---------- --------- --------- --------------------
       261          2                     Absent
       276          4                     Absent
       281          5                     Absent
       297          7                     Absent
       303          8                     Absent
       313          9                     Absent
       328         12                     Absent
       329         12                     Absent
       386         20                     Absent
       391         21                     Absent
       394         21                     Absent

    ATT_ID     EMP_ID CHECK_IN  CHECK_OUT STATUS
---------- ---------- --------- --------- --------------------
       407         23                     Absent
       409         23                     Absent
       412         24                     Absent
       418         24                     Absent
       635         55                     Absent
       644         57                     Absent
       649         57                     Absent
       653         58                     Absent
       686         63                     Absent
       689         63                     Absent
       690         63                     Absent

    ATT_ID     EMP_ID CHECK_IN  CHECK_OUT STATUS
---------- ---------- --------- --------- --------------------
       696         64                     Absent
       710         66                     Absent
       731         69                     Absent
       733         69                     Absent
       735         70                     Absent
       738         70                     Absent
       741         71                     Absent
       744         71                     Absent
       748         72                     Absent
       753         72                     Absent
       755         73                     Absent

    ATT_ID     EMP_ID CHECK_IN  CHECK_OUT STATUS
---------- ---------- --------- --------- --------------------
       756         73                     Absent
       761         73                     Absent
       762         74                     Absent
       763         74                     Absent
       764         74                     Absent
       767         74                     Absent
       770         75                     Absent
       776         76                     Absent
       781         76                     Absent
       791         78                     Absent
       799         79                     Absent

    ATT_ID     EMP_ID CHECK_IN  CHECK_OUT STATUS
---------- ---------- --------- --------- --------------------
       802         79                     Absent
       805         80                     Absent
       815         81                     Absent
       823         82                     Absent
       831         83                     Absent
       842         85                     Absent
       843         85                     Absent
       844         85                     Absent
       848         86                     Absent
       850         86                     Absent
       854         87                     Absent

    ATT_ID     EMP_ID CHECK_IN  CHECK_OUT STATUS
---------- ---------- --------- --------- --------------------
       863         88                     Absent
       870         89                     Absent
       881         91                     Absent
       899         93                     Absent
       913         95                     Absent
       915         95                     Absent
       920         96                     Absent
       946        100                     Absent
       952        101                     Absent
       960        102                     Absent
       968        103                     Absent

    ATT_ID     EMP_ID CHECK_IN  CHECK_OUT STATUS
---------- ---------- --------- --------- --------------------
       969        103                     Absent
       971        103                     Absent
      1004        108                     Absent
      1015        110                     Absent
      1023        111                     Absent
      1024        111                     Absent
      1033        112                     Absent
      1034        112                     Absent
      1037        113                     Absent
      1038        113                     Absent
      1048        114                     Absent

    ATT_ID     EMP_ID CHECK_IN  CHECK_OUT STATUS
---------- ---------- --------- --------- --------------------
      1054        115                     Absent
      1057        116                     Absent
      1070        118                     Absent
       439         27                     Absent
       455         30                     Absent
       464         31                     Absent
       473         32                     Absent
       476         33                     Absent
       481         33                     Absent
       504         37                     Absent
       527         40                     Absent

    ATT_ID     EMP_ID CHECK_IN  CHECK_OUT STATUS
---------- ---------- --------- --------- --------------------
       543         42                     Absent
       544         42                     Absent
       554         44                     Absent
       569         46                     Absent
       585         48                     Absent
       601         51                     Absent
       606         51                     Absent
       619         53                     Absent
       623         54                     Absent
       630         55                     Absent
      1901        236                     Absent

    ATT_ID     EMP_ID CHECK_IN  CHECK_OUT STATUS
---------- ---------- --------- --------- --------------------
      1928        240                     Absent
      1932        241                     Absent
      1968        246                     Absent
      1969        246                     Absent
      1984        248                     Absent
      1994        250                     Absent
      1995        250                     Absent
      1998        250                     Absent
      1096        121                     Absent
      1102        122                     Absent
      1112        124                     Absent

    ATT_ID     EMP_ID CHECK_IN  CHECK_OUT STATUS
---------- ---------- --------- --------- --------------------
      1114        124                     Absent
      1120        125                     Absent
      1121        125                     Absent
      1123        125                     Absent
      1144        128                     Absent
      1146        128                     Absent
      1147        129                     Absent
      1151        129                     Absent
      1153        129                     Absent
      1165        131                     Absent
      1178        133                     Absent

    ATT_ID     EMP_ID CHECK_IN  CHECK_OUT STATUS
---------- ---------- --------- --------- --------------------
      1194        135                     Absent
      1203        137                     Absent
      1209        137                     Absent
      1211        138                     Absent
      1216        138                     Absent
      1234        141                     Absent
      1258        144                     Absent
      1262        145                     Absent
      1265        145                     Absent
      1273        147                     Absent
      1289        149                     Absent

    ATT_ID     EMP_ID CHECK_IN  CHECK_OUT STATUS
---------- ---------- --------- --------- --------------------
      1318        153                     Absent
      1322        154                     Absent
      1352        158                     Absent
      1356        158                     Absent
      1358        159                     Absent
      1362        159                     Absent
      1376        161                     Absent
      1379        162                     Absent
      1410        166                     Absent
      1424        168                     Absent
      1426        168                     Absent

    ATT_ID     EMP_ID CHECK_IN  CHECK_OUT STATUS
---------- ---------- --------- --------- --------------------
      1438        170                     Absent
      1445        171                     Absent
      1452        172                     Absent
      1464        174                     Absent
      1467        174                     Absent
      1493        178                     Absent
      1571        189                     Absent
      1577        190                     Absent
      1582        191                     Absent
      1595        193                     Absent
      1600        193                     Absent

    ATT_ID     EMP_ID CHECK_IN  CHECK_OUT STATUS
---------- ---------- --------- --------- --------------------
      1615        195                     Absent
      1617        196                     Absent
      1623        197                     Absent
      1659        202                     Absent
      1662        202                     Absent
      1674        204                     Absent
      1696        207                     Absent
      1710        209                     Absent
      1711        209                     Absent
      1728        212                     Absent
      1750        215                     Absent

    ATT_ID     EMP_ID CHECK_IN  CHECK_OUT STATUS
---------- ---------- --------- --------- --------------------
      1760        216                     Absent
      1773        218                     Absent
      1778        219                     Absent
      1781        219                     Absent
      1825        225                     Absent
      1866        231                     Absent
      1874        232                     Absent
      1878        233                     Absent
      1884        234                     Absent
      1898        236                     Absent

175 rows selected.

SQL> SELECT COUNT(*)
  2  FROM attendance
  3  WHERE status = 'Late' AND TO_CHAR(check_in, 'HH24:MI') > '10:00';

  COUNT(*)
----------
       463

SQL>