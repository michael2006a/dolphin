package org.cboard.dao;

import java.util.List;
import org.springframework.stereotype.Repository;

/**
 * Created by yfyuan on 2016/12/21.
 */
@Repository
public interface MenuDao {

  List<Long> getMenuIdByUserRole(String userId);

  List<Long> getMenuIdByRoleAdmin(String userId);
}
