package com.zjqy.purchaseplatform.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zjqy.purchaseplatform.domain.MaterialsInquiry;
import com.zjqy.purchaseplatform.domain.Order;
import com.zjqy.purchaseplatform.domain.OrderItem;
import com.zjqy.purchaseplatform.domain.Quote;
import com.zjqy.purchaseplatform.service.CommonService;
import com.zjqy.purchaseplatform.service.CompanyService;
import com.zjqy.purchaseplatform.service.OrderService;
import com.zjqy.purchaseplatform.service.PurchaseService;
import com.zjqy.purchaseplatform.unit.ConstantManager;

@Controller
@RequestMapping("/purchase")
public class PurchaseRest {
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String purchaseMain(){
		return "purchase/main";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String purchaseMain2(){
		return "purchase/main";
	}
	
	/**
	 * 询价列表
	 * @param map
	 * @return
	 */
	@RequestMapping(value = "/productPrice", method = RequestMethod.GET)
	public String productPrice(ModelMap map){
		List<MaterialsInquiry> list = purchaseService.getAll();
		map.put("inquirys", list);
		return "purchase/productPrice";
	}
	
	/**
	 * 新增询价
	 * @param map
	 * @return
	 */
	@RequestMapping(value = "/productPriceAdd", method = RequestMethod.GET)
	public String productPriceAdd(ModelMap map){
		map.put("title", "新增询价");
		setProducts(map);
		return "purchase/productPriceEdit";
	}
	
	/**
	 * 修改询价
	 * @param map
	 * @return
	 */
	@RequestMapping(value = "/productPriceEdit/{id}", method = RequestMethod.GET)
	public String productPriceEdit(ModelMap map, @PathVariable Long id){
		map.put("title", "修改询价");
		MaterialsInquiry inquiry = commonService.getOne(id);
		map.put("inquiry", inquiry);
		setProducts(map);
		return "purchase/productPriceEdit";
	}
	
	/**
	 * 保存询价
	 * @param map
	 * @param mi
	 * @return
	 */
	@RequestMapping(value = "/saveInquiry", method = RequestMethod.GET)
	public String saveInquiry(ModelMap map, MaterialsInquiry mi) {
		purchaseService.saveInquiry(mi);
		return "purchase/productPrice";
	}
	
	/**
	 * 竞价详细
	 * @param map
	 * @param mi
	 * @return
	 */
	@RequestMapping(value = "/quotes/{inquiryId}", method = RequestMethod.GET)
	public String quotes(ModelMap map, @PathVariable Long inquiryId) {
		List<Quote> quotes = purchaseService.getQuotes(inquiryId);
		map.put("quotes", quotes);
		return "purchase/quotes";
	}
	
	/**
	 * 下单
	 * @param map
	 * @param mi
	 * @return
	 */
	@RequestMapping(value = "/transToOrder", method = RequestMethod.POST)
	public String transferToOrder(ModelMap map, List<Quote> quotes) {
		return "forward:/purchase/orders";
	} 
	
	/**
	 * 订单查询
	 * @param map
	 * @return
	 */
	@RequestMapping(value = "/orders", method = RequestMethod.GET)
	public String toOrders(ModelMap map){
		List<Order> orders = orderService.getOrders();
		map.put("orders", orders);
		return "purchase/orders";
	}
	
	/**
	 * 订单详情
	 * @param map
	 * @param orderId
	 * @return
	 */
	@RequestMapping(value = "/orderDetail/{orderId}", method = RequestMethod.GET)
	public String toOrderDetail(ModelMap map, @PathVariable Long orderId){
		List<OrderItem> items = orderService.getOrderItems(orderId);
		map.put("items", items);
		return "purchase/orderItems";
	}
	
	/**
	 * 删除详情
	 * @param map
	 * @param orderId
	 * @param itemId
	 * @return
	 */
	@RequestMapping(value = "/deleteOrderItem/{orderId}/{itemId}", method = RequestMethod.GET)
	public String deleteOrderItem(ModelMap map, @PathVariable Long orderId,
			@PathVariable Long itemId) {
		boolean b = orderService.deleteOrderItem(itemId);
		List<OrderItem> items = orderService.getOrderItems(orderId);
		map.put("result", b);
		map.put("items", items);
		return "purchase/orderItems";
	}
	
	/**
	 * 订单条目数量更新
	 * @param map
	 * @param oi
	 * @return
	 */
	@RequestMapping(value = "/updateOrderItem", method = RequestMethod.POST)
	public String updateOrderItem(ModelMap map, OrderItem oi){
		orderService.updateOrderItem(oi);
		List<OrderItem> items = orderService.getOrderItems(oi.getOrderId());
		map.put("items", items);
		return "purchase/orderItems";
	}
	
	private void setProducts(ModelMap map){
		map.put("materials", ConstantManager.getInstance().getGroupMaterials());
	}
	
	@Autowired
	private CompanyService companyService;
	@Autowired
	private PurchaseService purchaseService;
	@Autowired
	private CommonService commonService;
	@Autowired
	private OrderService orderService;
}
