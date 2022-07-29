package top.javahai.subtlechat.api.entity;

import com.alibaba.excel.annotation.ExcelIgnore;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import com.alibaba.excel.annotation.write.style.ContentRowHeight;
import com.alibaba.excel.converters.string.StringImageConverter;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModelProperty;
import jdk.nashorn.internal.ir.annotations.Ignore;
import lombok.Data;
import top.javahai.subtlechat.api.converter.MyContentConverter;
import top.javahai.subtlechat.api.data.GroupMsgContentData;

import java.io.Serializable;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Date;

/**
 * (GroupMsgContent)实体类
 *
 * @author makejava
 * @since 2020-06-17 10:46:50
 */
@ColumnWidth(25)
@ContentRowHeight(40)
@Data
public class GroupMsgContent implements Serializable {
    private static final long serialVersionUID = 980328865610261046L;
    /**
     * 消息内容编号
     */
    @ExcelProperty("消息内容编号")
    @TableId(value = "id", type = IdType.AUTO)
    @ApiModelProperty(value = "主键")
    private Integer id;
    /**
     * 发送者的编号
     */
    @ExcelProperty("发送者的编号")
    @TableField(value = "from_id")
    @ApiModelProperty(value = "发送者的编号")
    private Integer fromId;
    /**
     * 发送者的昵称
     */
    @ExcelProperty("昵称")
    @TableField(value = "from_name")
    @ApiModelProperty(value = "发送者的昵称")
    private String fromName;
    /**
     * 发送者的头像
     */
    @ExcelIgnore
    @TableField(value = "from_profile")
    @ApiModelProperty(value = "发送者的头像")
    private String fromProfile;
    /**
     * 消息发送时间
     */
    @ExcelProperty("发送时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @TableField(value = "create_time")
    @ApiModelProperty(value = "消息发送时间")
    private Date createTime;
    /**
     * 消息内容
     */
    @ExcelProperty(value = "内容", converter = MyContentConverter.class)
    @ColumnWidth(50)
    @TableField(value = "content")
    @ApiModelProperty(value = "消息内容")
    private String content;
    /**
     * 消息类型编号
     */
    @ExcelIgnore
    @TableField(value = "message_type_id")
    @ApiModelProperty(value = "消息类型编号")
    private Integer messageTypeId;

    /**
     * 是否删除
     */
    @TableLogic
    @TableField(value = "is_delete")
    @ApiModelProperty(value = "是否删除")
    private Integer isDelete;

    @Override
    public String toString() {
        return "GroupMsgContent{" +
                "id=" + id +
                ", fromId=" + fromId +
                ", fromName='" + fromName + '\'' +
                ", fromProfile='" + fromProfile + '\'' +
                ", createTime=" + createTime +
                ", content='" + content + '\'' +
                ", messageTypeId=" + messageTypeId +
                '}';
    }

    /**
     * 将数据库实体转化为Excel的数据实体
     *
     * @param groupMsgContent
     * @return
     */
    public static GroupMsgContentData convertEntityToData(GroupMsgContent groupMsgContent) throws MalformedURLException {
        GroupMsgContentData groupMsgContentData = new GroupMsgContentData();
        groupMsgContentData.setFromId(groupMsgContent.getFromId());
        groupMsgContentData.setId(groupMsgContent.getId());
        groupMsgContentData.setFromName(groupMsgContent.getFromName());
        groupMsgContentData.setCreateTime(groupMsgContent.getCreateTime());
        //转化为URL以Excel导出图片
        groupMsgContentData.setFromProfile(new URL(groupMsgContent.getFromProfile()));
        //根据消息类型设置内容
        if (groupMsgContent.getMessageTypeId() == 1) {
            groupMsgContentData.setTextContent(groupMsgContent.getContent());
        }
        if (groupMsgContent.getMessageTypeId() == 2) {
            groupMsgContentData.setImageContent(new URL(groupMsgContent.getContent()));
        }

        return groupMsgContentData;
    }
}
