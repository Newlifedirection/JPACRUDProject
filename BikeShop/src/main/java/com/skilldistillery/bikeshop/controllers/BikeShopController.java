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
import com.skilldistillery.bikeshop.entities.BikeShop;
import com.skilldistillery.bikeshop.entities.Brand;

@Controller
public class BikeShopController {

	@Autowired
	private BikeShopDAO dao;

	@RequestMapping(path = "GetBikeData.do", params = "BikeShopId", method = RequestMethod.GET)
	public ModelAndView getBikeId(@RequestParam(name = "BikeShopId") int n) throws SQLException {
		ModelAndView mv = new ModelAndView();
		BikeShop bs;
		Brand brand;

		bs = dao.findBikeShopById(n);
		mv.addObject("bikeshop", bs);
		mv.setViewName("result");
		return mv;
	}

	@RequestMapping(path = "AddBikeShop.do", method = RequestMethod.GET)
	public ModelAndView addBikeShopToDatabase1(BikeShop bikeshop) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addBike");
		return mv;
	}

	@RequestMapping(path = "AddBikeShop.do", method = RequestMethod.POST)
	public ModelAndView addBikeShopToDatabase(BikeShop bikeshop) throws SQLException {
		ModelAndView mv = new ModelAndView();
		int newId;
		BikeShop newBikeShop = null;
		newBikeShop = dao.create(bikeshop);
		newId = newBikeShop.getId();
		newBikeShop = dao.findBikeShopById(newId);
		mv.addObject("bike", newBikeShop);

		mv.setViewName("result");
		return mv;
	}

	@RequestMapping(path = "UpdateBikeShop.do", method = RequestMethod.POST)
	public ModelAndView updateBikeShop(BikeShop bs) throws SQLException {
		ModelAndView mv = new ModelAndView();
		BikeShop bikeShopToEdit = null;
		List<BikeShop> bikes = null;
		bikeShopToEdit = dao.update(bs.getId(), bs);
		bikes = dao.findBikeByFrameMaterial(bs.getFrameMaterial());
		mv.addObject("bike", bikeShopToEdit);
		mv.addObject("bikes", bikes);
		mv.setViewName("result");
		return mv;
	}

	@RequestMapping(path = "UpdateBikeShop.do", method = RequestMethod.GET)
	public ModelAndView updateBikeShopId(BikeShop bs) throws SQLException {
		System.out.println(bs);
		ModelAndView mv = new ModelAndView();
		BikeShop bikeShopToEdit = null;
		List<BikeShop> bikes = null;

		bikeShopToEdit = dao.update(bs.getId(), bs);
		bikes = dao.findBikeByFrameMaterial(bs.getFrameMaterial());
		mv.addObject("bike", bikeShopToEdit);
		mv.addObject("bikes", bikes);
		mv.setViewName("updateBikeShop");

		mv.setViewName("error");
//			e.printStackTrace();

		return mv;
	}

	@RequestMapping(path = "DeleteBike.do", method = RequestMethod.POST)
	public ModelAndView delete(String bikeShopId) throws SQLException {
		ModelAndView mv = new ModelAndView();
		dao.deleteBikeShop(bikeShopId);
		mv.setViewName("result");
		return mv;
	}

	@RequestMapping(path = "SearchBikeShop.do", method = RequestMethod.GET)
	public ModelAndView search() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("search");
		return mv;

	}

	@RequestMapping(path = "SearchResults.do", params = "keyword", method = RequestMethod.GET)
	public ModelAndView findByKeyword(@RequestParam(name = "keyword") String kw) throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<BikeShop> bikes = dao.findBikeShopByKeyword(kw);
		mv.addObject("bikes", bikes);
		mv.setViewName("searchResults");
		return mv;
	}

	public BikeShopController(BikeShopDAO dao) {
		super();
		this.dao = dao;
	}

	public BikeShopController() {
		super();
	}

}
