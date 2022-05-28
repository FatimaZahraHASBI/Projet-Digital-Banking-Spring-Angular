package org.sid.ebankingbackend.security.service;

import org.sid.ebankingbackend.security.entities.AppUser;

import java.util.List;

public interface AccountService {
    AppUser addNewUser(AppUser appUser);
    AppUser loadUserByUsername(String username);
    List<AppUser> listUsers();
}
