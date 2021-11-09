package com.CRM.service;

import com.CRM.entity.Branch;
import com.CRM.repository.BranchRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.transaction.Transactional;
import java.util.List;

@Service
public class BranchService {
    @Autowired
    private BranchRepo branchRepo;

    @Transactional
    public List<Branch> findAll() {
        return branchRepo.findAll();
    }

    public Branch findById(int id) {
        return branchRepo.findById(id);
    }

    public Branch save(Branch branch) {
        return branchRepo.save(branch);
    }
}
