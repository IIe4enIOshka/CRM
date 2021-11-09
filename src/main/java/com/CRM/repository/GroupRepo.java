//package com.CRM.repository;
//
//import com.CRM.entity.Group;
//import org.springframework.data.jpa.repository.Query;
//import org.springframework.data.repository.CrudRepository;
//import org.springframework.stereotype.Repository;
//import java.util.List;
//
//@Repository
//public interface GroupRepo extends CrudRepository<Group, Long> {
//    List<Group> findAll();
//
//    Group findById(int id);
//
//    Group save(Group group);
//
//    @Query(
//            value = "SELECT * FROM groups " +
//                    "INNER JOIN " +
//                    "branches ON groups.branch_id = branches.id " +
//                    "WHERE branches.name = ?",
//            nativeQuery = true
//    )
//    List<Group> findGroupBranchNative(
//            String branch
//    );
//
//    @Query(
//            value = "SELECT * FROM groups " +
//                    "INNER JOIN " +
//                    "groups_students " +
//                    "ON groups.id = groups_students.group_id " +
//                    "INNER JOIN " +
//                    "students ON students.id = groups_students.student_id " +
//                    "WHERE students.id = ?",
//            nativeQuery = true
//    )
//    List<Group> findGroupStudentIdNative(
//            int id
//    );
//}
