//package com.CRM.service;
//
//import com.CRM.entity.Group;
//import com.CRM.repository.GroupRepo;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import javax.transaction.Transactional;
//import java.util.List;
//
//@Service
//public class GroupService {
//    @Autowired
//    private GroupRepo groupRepo;
//
//    @Transactional
//    public List<Group> findAll() {
//        return groupRepo.findAll();
//    }
//
//    public Group findById(int id) {
//        return groupRepo.findById(id);
//    }
//
//    public Group save(Group group) {
//        return groupRepo.save(group);
//    }
//
//    public List<Group> findGroupBranchNative(String branch) {
//        return groupRepo.findGroupBranchNative(branch);
//    }
//
//    public List<Group> findGroupStudentIdNative(int id) {
//        return groupRepo.findGroupStudentIdNative(id);
//    }
//
//}
