package top.javahai.subtlechat.api.entity;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModelProperty;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.io.Serializable;
import java.util.Collection;

/**
 * (Admin)实体类
 */
@TableName(value = "admin")
public class Admin implements Serializable, UserDetails {
    private static final long serialVersionUID = -75235725571250857L;

    @TableId(value = "id", type = IdType.AUTO)
    @ApiModelProperty(value = "主键")
    private Integer id;
    /**
     * 登录账号
     */
    @ApiModelProperty(value = "登录账号")
    @TableField(value = "username")
    private String username;
    /**
     * 昵称
     */
    @ApiModelProperty(value = "昵称")
    @TableField(value = "nickname")
    private String nickname;
    /**
     * 密码
     */
    @ApiModelProperty(value = "密码")
    @TableField(value = "password")
    private String password;
    /**
     * 管理员头像
     */
    @ApiModelProperty(value = "管理员头像")
    @TableField(value = "user_profile")
    private String userProfile;

    /**
     * 是否删除
     */
    @TableLogic
    @ApiModelProperty(value = "是否删除")
    @TableField(value = "is_delete")
    private Integer isDelete;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return null;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserProfile() {
        return userProfile;
    }

    public void setUserProfile(String userProfile) {
        this.userProfile = userProfile;
    }

    public Integer getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }
}
