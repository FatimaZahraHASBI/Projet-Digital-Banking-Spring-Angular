package org.sid.ebankingbackend.repositories;

import org.sid.ebankingbackend.dtos.BankAccountDTO;
import org.sid.ebankingbackend.entities.BankAccount;
import org.sid.ebankingbackend.entities.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface BankAccountRepository extends JpaRepository<BankAccount,String> {
    @Query("Select a from BankAccount a where a.customer.id = :customerId")
    List<BankAccount> findAllByCustomerId(@Param("customerId") Long customerId);
}
