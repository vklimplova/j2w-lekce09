package cz.czechitas.java2webapps.lekce9.controller;

import cz.czechitas.java2webapps.lekce9.service.OsobaService;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Controller pro zobrazování seznamů osob.
 */
@Controller
public class OsobaController {
  private final OsobaService service;

  public OsobaController(OsobaService service) {
    this.service = service;
  }

  @GetMapping("/")
  public ModelAndView zakladniSeznam(@PageableDefault(sort = {"prijmeni", "jmeno"}) Pageable pageable) {
    return new ModelAndView("osoby")
            .addObject("osoby", service.seznamOsob(pageable));
  }

  @GetMapping("/vyber")
  public String vyber() {
    return "vyber";
  }
}
