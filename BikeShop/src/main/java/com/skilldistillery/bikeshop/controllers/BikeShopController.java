package com.skilldistillery.bikeshop.controllers;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.bikeshop.data.BikeShopDAO;
import com.skilldistillery.bikeshop.entities.Address;
import com.skilldistillery.bikeshop.entities.Bikeshop;
import com.skilldistillery.bikeshop.entities.Brand;


@Controller
public class BikeShopController {

	@Autowired
	private BikeShopDAO dao;

	
	@RequestMapping(value = {"/", "home.do"})
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/bike/index.jsp");
		return mv;
	}
	
//	@RequestMapping(path = "GetAddress.do", method = RequestMethod.GET)
//	public ModelAndView findAddress(@RequestParam(name = "id") int n) {
//		ModelAndView mv = new ModelAndView();
//			Bikeshop address = dao.findBikeShopById(n);
//			mv.addObject("Address", address);
//			mv.setViewName("WEB-INF/bike/Result.jsp");
//			return mv;
//		}


	@RequestMapping(path = "GetBikeData.do", method = RequestMethod.GET)
	public ModelAndView findById(@RequestParam(name = "id") int n) throws SQLException {
		ModelAndView mv = new ModelAndView();
		Bikeshop bike = dao.findBikeShopById(n);
		mv.addObject("bike", bike);
		mv.setViewName ("WEB-INF/bike/Result.jsp");
		return mv;
	}
	
	@RequestMapping(path = "showAllBikes.do")
	public ModelAndView showAllBikes() {
		ModelAndView mv = new ModelAndView();
		List<Bikeshop> bikes = dao.findAll();
		System.out.println("++++++++++++++++++++++++++++++++");
		System.out.println(bikes);
		mv.addObject("bikes", bikes);
		mv.setViewName("WEB-INF/bike/searchResults.jsp");
		return mv;
	}

	@RequestMapping(path = "AddBikeShop.do", method = RequestMethod.GET)
	public ModelAndView addBikeShopToDatabase1() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/bike/CreateBikeShop.jsp");
		return mv;
	}

	@RequestMapping(path = "AddBikeShop.do", method = RequestMethod.POST)
	public ModelAndView addBikeShopToDatabase(Bikeshop bikeshop, @RequestParam("attachedBrand")String brand,
			String street, String city, String state, String zip) throws SQLException {
		ModelAndView mv = new ModelAndView();
		System.out.println(street);
		Address address = new Address();
		address.setStreet(street);
		address.setCity(city);
		address.setState(state);
		address.setZip(zip);
		
		Address dataBaseAddress = dao.creaAddress(address);
		
		bikeshop.setAddress(dataBaseAddress);
		System.out.println("****************************");
		System.out.println(bikeshop);
//		System.out.println(bikeshop.getAddress());
		System.out.println(brand);
		Brand bikesBrand = dao.findBrand(brand);
		bikeshop.setBrand(bikesBrand);
		Bikeshop newBikeShop = dao.create(bikeshop);
		System.out.println(newBikeShop);
		mv.addObject("bike", newBikeShop);
		
//		Bikeshop address = dao.createAddress(bikeshop);
		mv.setViewName("WEB-INF/bike/searchResults.jsp");
		return mv;
	}

	@RequestMapping(path = "UpdateBikeShop.do", method = RequestMethod.POST)
	public ModelAndView updateBikeShop(Bikeshop bs,@RequestParam("BrandId")String BrandId) throws SQLException {
		System.out.println(bs);
		System.out.println("#####################################################################");
		System.out.println(BrandId);
		Brand managedBrand = dao.findBrand(BrandId);
		ModelAndView mv = new ModelAndView();
		Bikeshop bikeShopToEdit = null;
		bs.setBrand(managedBrand);
		bikeShopToEdit = dao.update(bs);
//		bikeShopToEdit = dao.create(bs);
		mv.addObject("bike", bikeShopToEdit);
		mv.setViewName("WEB-INF/bike/Result.jsp");
		return mv;
	}

	@RequestMapping(path = "UpdateBikeShop.do", method = RequestMethod.GET)
	public ModelAndView updateBikeShopId(Integer id) throws SQLException {
		System.out.println(id);
		ModelAndView mv = new ModelAndView();
		Bikeshop bikeShopToEdit = dao.findBikeShopById(id);
		mv.addObject("bike", bikeShopToEdit);
		mv.setViewName("WEB-INF/bike/updateBikeShop.jsp");
		mv.addObject("brands", dao.findAllBrands());
		return mv;
	}

	@RequestMapping(path = "DeleteBike.do", method = RequestMethod.POST)
	public ModelAndView delete(int id) throws SQLException {
		ModelAndView mv = new ModelAndView();
		dao.destroy(id);
		mv.setViewName("WEB-INF/bike/searchResults.jsp");
		return mv;
	}


	@RequestMapping(path = "SearchResults.do", method = RequestMethod.GET)
	public ModelAndView findByKeyword(@RequestParam(name = "keyword") String kw) throws SQLException {
		System.out.println("******************************" + kw);
		ModelAndView mv = new ModelAndView();
		List<Bikeshop> bikes = dao.findBikeShopByKeyword(kw);
		mv.addObject("bikes", bikes);
		System.out.println(bikes);
		mv.setViewName("WEB-INF/bike/searchResults.jsp");
		return mv;
	}
}
