package com.zjqy.purchaseplatform.service;

import java.util.List;

import org.luis.basic.domain.ComplexListFilter;
import org.luis.basic.domain.FilterAttributes;
import org.luis.basic.domain.IGenericService;
import org.luis.basic.domain.IListFilter;
import org.luis.basic.domain.OrderAttribute;
import org.luis.basic.domain.OrderAttributes;
import org.springframework.stereotype.Service;

import com.zjqy.purchaseplatform.domain.Order;
import com.zjqy.purchaseplatform.domain.OrderItem;
import com.zjqy.purchaseplatform.mybitis.mapper.ServiceFactory;

@Service
public class OrderService {
	
	public List<Order> getOrders(){
		FilterAttributes fa = FilterAttributes.blank();
		OrderAttributes oa = OrderAttributes.blank().add("orderDate", OrderAttribute.TYPE_DESC);
		IListFilter filter = new ComplexListFilter(fa, oa);
		return orderService.findByFilter(filter);
	}
	
	public List<Order> getOrders(Long supplierId){
		FilterAttributes fa = FilterAttributes.blank().add("supplierId", supplierId);
		OrderAttributes oa = OrderAttributes.blank().add("orderDate", OrderAttribute.TYPE_DESC);
		IListFilter filter = new ComplexListFilter(fa, oa);
		return orderService.findByFilter(filter);
	}
	
	public List<OrderItem> getOrderItems(Long orderId){
		FilterAttributes fa = FilterAttributes.blank().add("orderId", orderId);
		return orderItemService.findByAttributes(fa);
	}
	
	public void updateOrderItem(OrderItem oi){
		orderItemService.update(oi);
	}
	
	public boolean deleteOrderItem(Long itemId){
		return orderItemService.deleteById(itemId);
	}
	
	private IGenericService<Order> orderService = ServiceFactory.getOrderService();
	private IGenericService<OrderItem> orderItemService = ServiceFactory.getOrderItemService();
}
