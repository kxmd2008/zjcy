package com.zjqy.purchaseplatform.unit;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.apache.commons.configuration.Configuration;
import org.luis.basic.common.Config;
import org.luis.basic.common.ProcessContext;
import org.luis.basic.job.ScheduleHook;
import org.luis.basic.util.SpringContextFactory;
import org.springframework.stereotype.Component;

import com.zjqy.purchaseplatform.domain.RawMaterials;
import com.zjqy.purchaseplatform.mybitis.mapper.ServiceFactory;

@Component
public class PlatformInit {

	@PostConstruct
	public void init() {
		List<RawMaterials> materials = ServiceFactory
				.getMaterialsService()
				.findBySql("select * from t_raw_materials where parentId is not null");
		Map<String, List<RawMaterials>> map = new HashMap<String, List<RawMaterials>>();
		for (RawMaterials rawMaterials : materials) {
			String type = rawMaterials.getType();
			if(map.get(type) == null){
				map.put(type, new ArrayList<RawMaterials>());
			}
			map.get(type).add(rawMaterials);
		}
		
		ConstantManager.getInstance().putAllMaterials(map);
		
		
		try {
			Configuration properties = Config.loadAndWatchConfig("config.properties");
			ProcessContext.getInstance().init(properties, null);
			
			ScheduleHook hook = SpringContextFactory.getSpringBean(ScheduleHook.class);
			hook.onStart();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
