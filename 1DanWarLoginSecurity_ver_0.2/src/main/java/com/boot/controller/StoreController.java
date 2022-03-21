package com.boot.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.client.RestTemplate;

import com.boot.cart.dao.StoreDAO;
import com.boot.cart.vo.StoreVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class StoreController {
	
	@Autowired
	StoreDAO dao;
	
	@RequestMapping("/ricecakemenu")
	public String ricecakemenu() {
		return "ricecakemenu";
	}
	
	@RequestMapping("/fastfoodmenu")
	public String fastfoodmenu() {
		return "fastfoodmenu";
	}
	
	@RequestMapping("/chickenmenu")
	public String chickenmenu() {
		return "chickenmenu";
	}
	

	
	@RequestMapping("/findpw")
	public String findpw() {
		return "findpw";
	}

	@RequestMapping("/findid")
	public String findid() {
		return "findid";
	}
	
	@RequestMapping("/QA")
	public String QA() {
		return "QA";
	}
	
	@RequestMapping("/jusopopup")
	public String jusopopup() {
		return "jusopopup";
	}
	
	@RequestMapping("/payment")
	public String pay() {
		return "pay";
	}
	
//---------BURGER KING----------------------------------------------------------------
	@RequestMapping("/burgerkingallmenu")
	public String burgerkinggetallmenu(Model model) {
		model.addAttribute("burgerkingallmenu", dao.burgerkingAllMenu());
		return "burgerking/burgerkingallmenu";
	}

	@RequestMapping("/burgerkingInsertMenu")
	public String burgerkinginsertmenu() {
		return "burgerking/burgerkingInsertMenu";
	}

	@RequestMapping("/burgerkingInsert")
	public String burgerkinginsertMenu(HttpServletRequest req) {
		dao.burgerkingInsertMenu(req.getParameter("food"), req.getParameter("price"));
		return "redirect:/burgerkingallmenu";
	}

	@RequestMapping("/burgerkingmenu")
	public String burgerkingupdateMenu(HttpServletRequest req, Model model) {
		StoreVO svo = dao.burgerkingMenu(req.getParameter("food"));
		model.addAttribute("food", svo.getFood());
		model.addAttribute("price", svo.getPrice());
		return "burgerking/burgerkingUpdateMenu";
	}
	
	@RequestMapping("/burgerkingUpdateForm")
	public String burgerkingupdateform(Model model) {
		model.addAttribute("burgerkingUpdateForm", dao.burgerkingAllMenu());
		return "burgerking/burgerkingUpdateForm";
	}
	
	@RequestMapping("/burgerkingUpdateMenu")
	public String burgerkingupdatemenu() {
		return "burgerking/burgerkingUpdateMenu";
	}
	
	@RequestMapping("/burgerkingUpdate")
	public String burgerkingUpdate(HttpServletRequest req) {
		dao.burgerkingUpdateMenu(req.getParameter("food"), req.getParameter("price"));
		return "redirect:/burgerkingallmenu";
	}

	@RequestMapping("/burgerkingDelete")
	public String burgerkingDelete(HttpServletRequest req) {
		dao.burgerkingDeleteMenu(req.getParameter("food"));
		return "redirect:/burgerkingallmenu";
	}
//---------MCDONALD------------------------------------------------------------
	
	@RequestMapping("/mcdonaldallmenu")
	public String mcdonaldgetallmenu(Model model) {
		model.addAttribute("mcdonaldallmenu", dao.mcdonaldAllMenu());
		return "mcdonald/mcdonaldallmenu";
	}

	@RequestMapping("/mcdonaldInsertMenu")
	public String mcdonaldinsertmenu() {
		return "mcdonald/mcdonaldInsertMenu";
	}

	@RequestMapping("/mcdonaldInsert")
	public String mcdonaldinsertMenu(HttpServletRequest req) {
		dao.mcdonaldInsertMenu(req.getParameter("food"), req.getParameter("price"));
		return "redirect:/mcdonaldallmenu";
	}

	@RequestMapping("/mcdonaldmenu")
	public String mcdonaldupdateMenu(HttpServletRequest req, Model model) {
		StoreVO svo = dao.mcdonaldMenu(req.getParameter("food"));
		model.addAttribute("food", svo.getFood());
		model.addAttribute("price", svo.getPrice());
		return "mcdonald/mcdonaldUpdateMenu";
	}
	
	@RequestMapping("/mcdonaldUpdateForm")
	public String mcdonaldupdateform(Model model) {
		model.addAttribute("mcdonaldUpdateForm", dao.mcdonaldAllMenu());
		return "mcdonald/mcdonaldUpdateForm";
	}
	
	@RequestMapping("/mcdonaldUpdateMenu")
	public String mcdonaldupdatemenu() {
		return "mcdonald/mcdonaldUpdateMenu";
	}
	
	@RequestMapping("/mcdonaldUpdate")
	public String mcdonaldUpdate(HttpServletRequest req) {
		dao.mcdonaldUpdateMenu(req.getParameter("food"), req.getParameter("price"));
		return "redirect:/mcdonaldallmenu";
	}

	@RequestMapping("/mcdonaldDelete")
	public String mcdonaldDelete(HttpServletRequest req) {
		dao.mcdonaldDeleteMenu(req.getParameter("food"));
		return "redirect:/mcdonaldallmenu";
	}

	
	
//---------CartUpdate------------------------------------------------------------
	@RequestMapping("/cart")
	public String cart() {
		return "cart";
	}
	
	@RequestMapping("/CartPro")
	public String cartpro() {
		return "CartPro";
	}
	
	@RequestMapping("/CartClear")
	public String main(HttpSession session) {
		session.getAttribute("cart");
		session.removeAttribute("cart");
		return "redirect:/";
	}
	
	
	@RequestMapping("/cartallmenu")
	public String cartallmenu(Model model) {
		model.addAttribute("cartallmenu", dao.cartAllMenu());
		return "cart";
	}

	@RequestMapping("/cartInsertMenu")
	public String cartinsertmenu() {
		return "burgerking/burgerkingInsertMenu";
	}

	@RequestMapping("/cartInsert")
	public String cartinsertMenu(HttpServletRequest req) {
		dao.cartInsertMenu(req.getParameter("food"), req.getParameter("price"));
		return "redirect:/cart";
	}

	@RequestMapping("/cartmenu")
	public String cartupdateMenu(HttpServletRequest req, Model model) {
		StoreVO svo = dao.cartMenu(req.getParameter("food"));
		model.addAttribute("food", svo.getFood());
		model.addAttribute("price", svo.getPrice());
		return "burgerking/burgerkingUpdateMenu";
	}
	
	@RequestMapping("/cartUpdateForm")
	public String cartupdateform(Model model) {
		model.addAttribute("cartUpdateForm", dao.cartAllMenu());
		return "burgerking/burgerkingUpdateForm";
	}
	
	@RequestMapping("/cartUpdateMenu")
	public String cartupdatemenu() {
		return "burgerking/burgerkingUpdateMenu";
	}
	
	@RequestMapping("/cartUpdate")
	public String cartUpdate(HttpServletRequest req) {
		dao.burgerkingUpdateMenu(req.getParameter("food"), req.getParameter("price"));
		return "redirect:/cart";
	}

	@RequestMapping("/cartDelete")
	public String cartDelete(HttpServletRequest req) {
		dao.burgerkingDeleteMenu(req.getParameter("food"));
		return "redirect:/cart";
	}
	
	
}
