package com.zjqy.purchaseplatform.unit;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.zjqy.purchaseplatform.domain.RawMaterials;

public final class ConstantManager {

	private Map<String, List<RawMaterials>> materialsMap = new HashMap<String, List<RawMaterials>>();
	
	public void putAllMaterials(Map<String, List<RawMaterials>> materials){
		materialsMap.putAll(materials);
	}
	
	public Map<String, List<RawMaterials>> getGroupMaterials(){
		return materialsMap;
	}
	
	public static ConstantManager getInstance(){
		return instance;
	}
	
	private static ConstantManager instance = new ConstantManager();
	
	private ConstantManager(){
		
	}
}
