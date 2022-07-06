package com.infosys.timd.bioskopapi.ControllerMVC;

import com.infosys.timd.bioskopapi.Exception.ResourceNotFoundException;
import com.infosys.timd.bioskopapi.Model.Films;
import com.infosys.timd.bioskopapi.Service.FilmsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.*;

@Controller
public class FilmsControllerMVC {
    @Autowired
    private FilmsService filmsService;

    @GetMapping("/films")
    public String showFilm(Model model){
        List<Films> films = filmsService.findAllFilms();
        Collections.reverse(films);
        model.addAttribute("films", films);

        return "films";
    }

@GetMapping("/films/add")
    public String showAddFilm(Model model){
        Films films = new Films();
        model.addAttribute("add", true);
        model.addAttribute("films", films);

    return "films_form";
}
 @PostMapping("/films/add")
    public String addFilm(Model model,
                          @ModelAttribute ("films") Films films){
        try {
            Films newFilms = filmsService.createFilm(films);
            return "redirect:/films";
        }catch(Exception e){
            String errorMessage = e.getMessage();
            model.addAttribute("errorMessage", errorMessage);

            model.addAttribute("add", true);
            return "redirect:/films";
        }
 }
 @GetMapping("/films/edit/{filmId}")
    public String showEditFilm(Model model, @PathVariable long filmId){
        Optional<Films> films = null;
        try {
            films = filmsService.findbyId(filmId);
        }catch (ResourceNotFoundException ex){
            model.addAttribute("error Message","Film not found");
        }
        model.addAttribute("add", false);
        model.addAttribute("films", films);
        return "films_form";
 }

 @PostMapping("/films/edit/{filmId}")
    public String updateFilm(Model model,
                                @PathVariable long filmId,
                                @ModelAttribute("films") Films films){
        try{
            films.setFilmId(filmId);
            filmsService.updateFilm(films, filmId);
            return "redirect:/films";
        }catch(Exception e){
            String errorMessage = e.getMessage();
            model.addAttribute("errorMessage", errorMessage);

            model.addAttribute("add", true);
            return "redirect:/films";
        }
 }

    @RequestMapping("films/delete/{filmId}")
    public String deleteFilm(@PathVariable long filmId, RedirectAttributes ra){
        try {
            filmsService.deleteFilmById(filmId);
            ra.addFlashAttribute("message", "Successfully deleted film.");
        } catch (ResourceNotFoundException e) {
            ra.addFlashAttribute("message", e.getMessage());
        }
        return "redirect:/films";
    }
}

//@GetMapping("/films/{filmId}")
//    public String showFilmById(Model model, @PathVariable Long filmId){
//        Optional<Films> filmget = filmsService.findbyId(filmId);
//        Films films = filmget.get();
//        model.addAttribute("films", films);
//
//        return "/films-details";
//    }
//    @GetMapping("/films/delete/{filmId}")
//     public String showDeleteFilm(Model model, @PathVariable long filmId){
//        Optional<Films> films = null;
//        try {
//            films = filmsService.findbyId(filmId);
//        }catch (ResourceNotFoundException ex){
//            model.addAttribute("error Message","Film not found");
//        }
//        model.addAttribute("add", false);
//        model.addAttribute("films", films);
//        return "films-details";
//    }
//
//    @DeleteMapping("/films/delete/{filmId}")
//    public String deleteFilmById(
//            Model model, @PathVariable long filmId) {
//        try {
//            filmsService.deleteFilmById(filmId);
//            Map<String, Boolean> response = new HashMap<>();
//            return "redirect:/films";
//        } catch (ResourceNotFoundException ex) {
//            String errorMessage = ex.getMessage();
//            model.addAttribute("errorMessage", errorMessage);
//            return "films-details";
//        }
//    }