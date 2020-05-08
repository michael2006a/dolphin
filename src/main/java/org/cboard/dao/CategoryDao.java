package org.cboard.dao;

import java.util.List;
import java.util.Map;
import org.cboard.pojo.DashboardCategory;
import org.springframework.stereotype.Repository;

/**
 * Created by yfyuan on 2016/8/26.
 */
@Repository
public interface CategoryDao {

  List<DashboardCategory> getCategoryList();

  int save(DashboardCategory dashboardCategory);

  long countExistCategoryName(Map<String, Object> map);

  int update(DashboardCategory dashboardCategory);

  int delete(Long id);
}
