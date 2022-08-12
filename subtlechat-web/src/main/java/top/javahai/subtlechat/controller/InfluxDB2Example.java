//package top.javahai.subtlechat.controller;
//
//import com.influxdb.annotations.Column;
//import com.influxdb.annotations.Measurement;
//import com.influxdb.client.InfluxDBClient;
//import com.influxdb.client.InfluxDBClientFactory;
//import com.influxdb.client.WriteApi;
//import com.influxdb.client.domain.WritePrecision;
//import com.influxdb.query.FluxRecord;
//import com.influxdb.query.FluxTable;
//import lombok.Data;
////import top.javahai.subtlechat.api.entity.Mem;
//
//import java.time.Instant;
//import java.util.List;
//
//public class InfluxDB2Example {
//    public static void main(final String[] args) {
//
//        // You can generate an API token from the "API Tokens Tab" in the UI
//        String token = "oYLaYobHLzO_ZSK43jMF5-JTHlBPDqoTAZmuK5UgSyttfQ8JIm5IC8Q7NRubAQJBc6PwpiutjMiW_cCFs9DbkA==";
//        String bucket = "song-chat";
//        String org = "chat";
//
//        InfluxDBClient client = InfluxDBClientFactory.create("http://localhost:8086", token.toCharArray());
//
//        // 1、使用 InfluxDB Line Protocol 写入数据
////        String data = "mem,host=host1 used_percent=23.43234543";
////        try (WriteApi writeApi = client.getWriteApi()) {
////            writeApi.writeRecord(bucket, org, WritePrecision.NS, data);
////        }
//
//        // 2.使用 Data Point 写入数据
////        Point point = Point
////                .measurement("mem")
////                .addTag("host", "host1")
////                .addField("used_percent", 24.43234543)
////                .time(Instant.now(), WritePrecision.NS);
////
////        try (WriteApi writeApi = client.getWriteApi()) {
////            writeApi.writePoint(bucket, org, point);
////        }
//
//        // 3.使用POJO类写入数据
////        Mem mem = new Mem();
////        mem.setHost("host1");
////        mem.setUsed_percent(25.43234543);
////        mem.setTime(Instant.now());
////
////        try (WriteApi writeApi = client.getWriteApi()) {
////            writeApi.writeMeasurement(bucket, org, WritePrecision.NS, mem);
////        }
//
//        // 4. 查询数据
////        String query = "from(bucket: \"" + bucket + "\") |> range(start: -1h) |> filter(fn: (r) => r._measurement == \"mem\")";
////        List<FluxTable> tables = client.getQueryApi().query(query, org);
////        System.out.println(tables.toString());
//
//        String query = "from(bucket: \"song-chat\") |> range(start: -1h)";
//        List<FluxTable> tables = client.getQueryApi().query(query, org);
//
//        for (FluxTable table : tables) {
//            for (FluxRecord record : table.getRecords()) {
//                System.out.println(record);
//            }
//        }
//
//
//        // 关闭客户端
//        client.close();
//    }
//
//    @Measurement(name = "mem")
//    @Data
//    public static class Mem {
//        @Column(tag = true)
//        String host;
//        @Column
//        Double used_percent;
//        @Column(timestamp = true)
//        Instant time;
//    }
//}
