package org.sid.ebankingbackend.security.web;

import lombok.AllArgsConstructor;
import org.sid.ebankingbackend.security.entities.AppUser;
import org.sid.ebankingbackend.security.service.AccountService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@AllArgsConstructor
public class AccountRestController {
    AccountService accountService;

    @GetMapping("/")
    public List<AppUser> appUsers(){
        return accountService.listUsers();
    }
}
