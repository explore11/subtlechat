package top.javahai.subtlechat.api.entity;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;

/**
 * (User)实体类
 */
@TableName(value = "user")
public class User implements UserDetails {

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
     * 用户头像
     */
    @ApiModelProperty(value = "用户头像")
    @TableField(value = "user_profile")
    private String userProfile;
    /**
     * 用户状态id
     */
    @ApiModelProperty(value = "用户状态id")
    @TableField(value = "user_state_id")
    private Integer userStateId;
    /**
     * 是否可用
     */
    @ApiModelProperty(value = "是否可用")
    @TableField(value = "is_enabled")
    private Boolean isEnabled;
    /**
     * 是否被锁定
     */
    @ApiModelProperty(value = "是否被锁定")
    @TableField(value = "is_locked")
    private Boolean isLocked;
    /**
     * 是否删除
     */
    @TableLogic
    @ApiModelProperty(value = "是否删除")
    @TableField(value = "is_delete")
    private Integer isDelete;

    public Integer getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    //账号是否未过期
    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    //账号是否不锁定
    @Override
    public boolean isAccountNonLocked() {
        return !isLocked;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return isEnabled;
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

    /**
     * 获取用户拥有的所有角色
     *
     * @return
     */
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

    public Integer getUserStateId() {
        return userStateId;
    }

    public void setUserStateId(Integer userStateId) {
        this.userStateId = userStateId;
    }


    public void setEnabled(Boolean enabled) {
        isEnabled = enabled;
    }

    public void setLocked(Boolean locked) {
        isLocked = locked;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", nickname='" + nickname + '\'' +
                ", password='" + password + '\'' +
                ", userProfile='" + userProfile + '\'' +
                ", userStateId=" + userStateId +
                ", isEnabled=" + isEnabled +
                ", isLocked=" + isLocked +
                '}';
    }
}
