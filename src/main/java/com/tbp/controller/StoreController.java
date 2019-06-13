package com.tbp.controller;

import com.tbp.interceptor.UserSession;
import com.tbp.model.Book;
import com.tbp.model.Person;
import com.tbp.model.Store;
import com.tbp.repository.BookRepository;
import com.tbp.repository.StoreRepository;
import com.tbp.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;


@Controller
public class StoreController {

    @Autowired
    StoreRepository storeRepository;
    @Autowired
    BookRepository bookRepository;
    @Autowired
    PersonRepository personRepository;
    @Autowired
    UserSession userSession;


    @RequestMapping(value = "/store/create", method = RequestMethod.GET)
    public String createPage(Map<String, Object> model) {

        return "store/create";
    }

    @RequestMapping(value = "/store/create", method = RequestMethod.POST)
    public void saveCustom(@RequestParam("userid") Integer userid,
                     @RequestParam("bookid") Integer bookid,
                     @RequestParam("username") String username,
                     @RequestParam("bookprice") double bookprice,

                     Map<String, Object> model) {


        Store store = new Store();
        store.setUserid(userid);
        store.setBookid(bookid);
        store.setUsername(username);
        store.setBookprice(bookprice);
        storeRepository.save(store);

        model.put("message", "Store " + store.getId() + " created");
    }


    @RequestMapping(value = "/store/list", method = RequestMethod.GET)
    public String listPageStore(Map<String, Object> model) {
        Iterable<Store> storeList = storeRepository.findAll();
        model.put("storeList", storeList);
        return "store/list";
    }

    @RequestMapping(value = "/store/edit", method = RequestMethod.GET)
    public String editPage(@RequestParam("id") Long id, Map<String, Object> model) {
        Store store = storeRepository.findOne(id);
        model.put("store", store);

        return "store/edit";
    }


    @RequestMapping(value = "/store/edit", method = RequestMethod.POST)
    public void update(@RequestParam("userid") Integer userid,
                       @RequestParam("bookid") Integer bookid,
                       @RequestParam("username") String username,
                       @RequestParam("bookprice") double bookprice,
                       @RequestParam("idStore") Long idStore,
                       Map<String, Object> model) {

        Store store = storeRepository.findOne(idStore);
        store.setUserid(userid);
        store.setBookid(bookid);
        store.setUsername(username);
        store.setBookprice(bookprice);

        storeRepository.save(store);



        model.put("store", store);
        model.put("message", "Store " + store.getId() + " edited");
    }

    @RequestMapping(value = "store/delete", method = RequestMethod.GET)
    public String delete(@RequestParam("id") Long id) {
        storeRepository.delete(id);
        return "redirect:/store/list";
    }

    @RequestMapping(value = "/store/storelist", method = RequestMethod.GET)
    public String listPageBook(Map<String, Object> model) {
        Iterable<Book> bookList = bookRepository.findAll();
        model.put("bookList", bookList);
        return "store/storelist";
    }

    @RequestMapping(value = "/store/storelist", method = RequestMethod.POST)
    public String save(@RequestParam("userid") Integer userid,
                     @RequestParam("bookid") Integer bookid,
                     @RequestParam("username") String username,
                     @RequestParam("bookprice") double bookprice,
                     Map<String, Object> model) {


        Store store = new Store();

        store.setUserid(userid);
        store.setBookid(bookid);
        store.setUsername(username);
        store.setBookprice(bookprice);
        storeRepository.save(store);

        Person person = userSession.getLoggedUser();
        model.put("message", "Store " + store.getId() + " created");
        model.put("usuario" , person);

        return "redirect:/store/bought";
    }

    @RequestMapping(value = "/store/bought", method = RequestMethod.GET)
    public String createPage2(Map<String, Object> model) {

        return "store/bought";
    }
}

