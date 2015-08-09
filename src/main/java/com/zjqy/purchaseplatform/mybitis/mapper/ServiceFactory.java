package com.zjqy.purchaseplatform.mybitis.mapper;

import org.luis.basic.domain.BaseServiceBuilder;
import org.luis.basic.domain.IGenericService;

import com.zjqy.purchaseplatform.domain.Account;
import com.zjqy.purchaseplatform.domain.CompanyInfo;
import com.zjqy.purchaseplatform.domain.MaterialsInquiry;
import com.zjqy.purchaseplatform.domain.Order;
import com.zjqy.purchaseplatform.domain.OrderItem;
import com.zjqy.purchaseplatform.domain.Quote;
import com.zjqy.purchaseplatform.domain.RawMaterials;

public class ServiceFactory {

	private static IGenericService<Account> accountService;

	public static IGenericService<Account> getAccountService() {
		if (accountService == null) {
			accountService = BaseServiceBuilder.build(Account.class);
		}
		return accountService;
	}

	private static IGenericService<CompanyInfo> companyService;

	public static IGenericService<CompanyInfo> getCompanyService() {
		if (companyService == null) {
			companyService = BaseServiceBuilder.build(CompanyInfo.class);
		}
		return companyService;
	}

	private static IGenericService<RawMaterials> materialsService;

	public static IGenericService<RawMaterials> getMaterialsService() {
		if (materialsService == null) {
			materialsService = BaseServiceBuilder.build(RawMaterials.class);
		}
		return materialsService;
	}

	private static IGenericService<MaterialsInquiry> materialsInquiryService;

	public static IGenericService<MaterialsInquiry> getMaterialsInquiryService() {
		if (materialsInquiryService == null) {
			materialsInquiryService = BaseServiceBuilder
					.build(MaterialsInquiry.class);
		}
		return materialsInquiryService;
	}

	private static IGenericService<Order> orderService;

	public static IGenericService<Order> getOrderService() {
		if (orderService == null) {
			orderService = BaseServiceBuilder.build(Order.class);
		}
		return orderService;
	}

	private static IGenericService<OrderItem> orderItemService;

	public static IGenericService<OrderItem> getOrderItemService() {
		if (orderItemService == null) {
			orderItemService = BaseServiceBuilder.build(OrderItem.class);
		}
		return orderItemService;
	}

	private static IGenericService<Quote> quoteService;

	public static IGenericService<Quote> getQuoteService() {
		if (quoteService == null) {
			quoteService = BaseServiceBuilder.build(Quote.class);
		}
		return quoteService;
	}
}
