//package top.song.subtlechat.service.impl;
//
//import com.alibaba.fastjson.JSON;
//import org.springframework.stereotype.Service;
//import plus.ojbk.influxdb.core.Delete;
//import plus.ojbk.influxdb.core.InfluxdbTemplate;
//import plus.ojbk.influxdb.core.Op;
//import plus.ojbk.influxdb.core.Query;
//import plus.ojbk.influxdb.core.model.DeleteModel;
//import plus.ojbk.influxdb.core.model.QueryModel;
//import top.song.subtlechat.api.entity.MessageContent;
//import top.song.subtlechat.service.InfluxDbService;
//
//import javax.annotation.Resource;
//import java.math.BigDecimal;
//import java.time.LocalDateTime;
//import java.util.ArrayList;
//import java.util.List;
//import java.util.Map;
//import java.util.TreeMap;
//
//@Service
//public class InfluxDbServiceImpl implements InfluxDbService {
//    @Resource
//    private InfluxdbTemplate influxdbTemplate;
//
//
//    public void other() {
////        influxdbTemplate.execute("自己写sql");
//    }
//
//    public void getCount() {
////        QueryModel countModel = new QueryModel();
////        ///countModel.setMeasurement(measurement);
////        countModel.setMeasurement(InfluxdbUtils.getMeasurement(Device.class));
////        countModel.setStart(LocalDateTime.now().plusHours(-2L));
////        countModel.setEnd(LocalDateTime.now());
////        //countModel.setSelect(Query.count("voltage"));  //只能count field字段
////        countModel.setSelect(Query.count(InfluxdbUtils.getCountField(Device.class)));
////        countModel.setWhere(Op.where(countModel));
////        //获得总条数
////        long count = influxdbTemplate.count(Query.build(countModel));
////        System.err.println(count);
//    }
//
//
//    public void getData() {
////        QueryModel model = new QueryModel();
////        model.setCurrent(1L);
////        model.setSize(10L);
////        //model.setMeasurement(measurement);
////        model.setMeasurement(InfluxdbUtils.getMeasurement(Device.class));
////        model.setStart(LocalDateTime.now().plusHours(-2L));
////        model.setEnd(LocalDateTime.now());
////        model.setUseTimeZone(true);  //时区
////        model.setOrder(Order.DESC);  //排序
////        //where 条件中额外参数可放入model.setMap();
////        model.setWhere(Op.where(model));
////        //分页数据
////        List<Device> deviceList = influxdbTemplate.selectList(Query.build(model), Device.class);
////        System.err.println(JSON.toJSONString(deviceList));
//    }
//
//
//    public void insert() {
////        List<MessageContent> deviceList = new ArrayList<>();
////        for (int i = 0; i < 10; i++) {
////            Device device = new Device();
////            device.setDeviceNo("device-" + i);
////            device.setValue(new BigDecimal(12.548));
////            device.setState(true);
////            device.setVoltage(3.5F);
////            //  device.setTime(LocalDateTime.now());
////            deviceList.add(device);
////        }
////        influxdbTemplate.insert(deviceList);
//
//
//        List<MessageContent> messageContentList = new ArrayList<>();
//        for (int i = 0; i < 10; i++) {
//            MessageContent messageContent = new MessageContent();
//            messageContent.setFromUser("fromUser");
//            messageContent.setFromUserProfile("fomUserProfile");
//            messageContent.setFromNickname("fomNickname");
//            messageContent.setToUser("fromUser");
//            messageContent.setToUserProfile("toUserProfile");
//            messageContent.setToNickname("toNickname");
//            messageContent.setMessageTypeId(i);
//            messageContent.setContent("content");
////            messageContent.setCreateTime();
//
//            //  device.setTime(LocalDateTime.now());
//            messageContentList.add(messageContent);
//        }
//        influxdbTemplate.insert(messageContentList);
//
//    }
//
//    public void delete() {
////        Map<String, Object> map = new TreeMap<>();
////        map.put("device_no", "device-1");
////        DeleteModel model = new DeleteModel();
////        model.setMap(map);
////        //model.setStart(LocalDateTime.now().plusHours(-10L));
////        //model.setEnd(LocalDateTime.now());
////        model.setMeasurement(measurement);
////        model.setWhere(Op.where(model));
////        influxdbTemplate.delete(Delete.build(model));
//    }
//
//}
