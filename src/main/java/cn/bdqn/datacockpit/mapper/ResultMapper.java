package cn.bdqn.datacockpit.mapper;

import java.util.List;

import cn.bdqn.datacockpit.entity.Result;

public interface ResultMapper {

	//增加任务结果
	int insertResult(Result result);
	
	//修改任务结果
	int updateResult(Result result);
	
	//查询任务结果
	List<Result> getResult(int aid);
}
