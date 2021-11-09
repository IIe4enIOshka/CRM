package com.CRM.repository;

import com.CRM.entity.Branch;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface BranchRepo extends CrudRepository<Branch, Long> {

    List<Branch> findAll();

    Branch findById(int id);

    Branch save(Branch branch);

//    @Modifying
//    @Query(
//            value = "UPDATE ISSUES SET STATUS = ? WHERE id = ?",
//            nativeQuery = true
//    )
}