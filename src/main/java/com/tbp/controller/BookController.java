package com.tbp.controller;

import com.tbp.model.Book;
import com.tbp.model.Person;
import com.tbp.repository.BookRepository;
import com.tbp.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;


@Controller
public class BookController {

    @Autowired
    BookRepository bookRepository;



    @RequestMapping(value = "/book/create", method = RequestMethod.GET)
    public String createPage(Map<String, Object> model) {

        return "book/create";
    }

    @RequestMapping(value = "/book/create", method = RequestMethod.POST)
    public void save(@RequestParam("title") String title,
                     @RequestParam("author") String author,
                     @RequestParam("editor") String editor,
                     @RequestParam("year") Integer year,
                     @RequestParam("price") double price,

                     Map<String, Object> model) {


        Book book = new Book();
        book.setTitle(title);
        book.setAuthor(author);
        book.setEditor(editor);
        book.setYear(year);
        book.setPrice(price);
        bookRepository.save(book);

        model.put("message", "Book " + title + " created");
    }


    @RequestMapping(value = "/book/list", method = RequestMethod.GET)
    public String listPage(Map<String, Object> model) {
        Iterable<Book> bookList = bookRepository.findAll();
        model.put("bookList", bookList);
        return "book/list";
    }

    @RequestMapping(value = "/book/edit", method = RequestMethod.GET)
    public String editPage(@RequestParam("id") Long id, Map<String, Object> model) {
        Book book = bookRepository.findOne(id);
        model.put("book", book);

        return "book/edit";
    }


    @RequestMapping(value = "/book/edit", method = RequestMethod.POST)
    public void update(@RequestParam("title") String title,
                       @RequestParam("author") String author,
                       @RequestParam("editor") String editor,
                       @RequestParam("year") Integer year,
                       @RequestParam("price") double price,
                       @RequestParam("idBook") Long idBook,
                       Map<String, Object> model) {

        Book book = bookRepository.findOne(idBook);
        book.setTitle(title);
        book.setAuthor(author);
        book.setEditor(editor);
        book.setYear(year);
        book.setPrice(price);

        bookRepository.save(book);



        model.put("book", book);
        model.put("message", "Book " + title + " edited");
    }

    @RequestMapping(value = "book/delete", method = RequestMethod.GET)
    public String delete(@RequestParam("id") Long id) {
        bookRepository.delete(id);
        return "redirect:/book/list";
    }

}
