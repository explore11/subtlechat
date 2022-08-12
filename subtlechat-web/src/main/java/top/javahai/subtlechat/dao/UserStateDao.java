package top.javahai.subtlechat.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import top.javahai.subtlechat.api.entity.UserState;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (UserState)表数据库访问层
 */
public interface UserStateDao extends BaseMapper<UserState> {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    UserState queryById(Integer id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<UserState> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param userState 实例对象
     * @return 对象列表
     */
    List<UserState> queryAll(UserState userState);

    /**
     * 新增数据
     *
     * @param userState 实例对象
     * @return 影响行数
     */
    int insert(UserState userState);

    /**
     * 修改数据
     *
     * @param userState 实例对象
     * @return 影响行数
     */
    int update(UserState userState);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

}
