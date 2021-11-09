package com.CRM;

import com.CRM.entity.Branch;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;

import java.io.IOException;
import java.util.List;

public class CustomBranchSerializer extends StdSerializer<Branch> {

    public CustomBranchSerializer() {
        super(Branch.class, true);
    }

    @Override
    public void serialize(
            Branch branch,
            JsonGenerator generator,
            SerializerProvider provider)
            throws IOException, JsonProcessingException {

//        Branch branch = new Branch();
//        branch.setId(branches.getId());
//        branch.setName(branches.getName());

        generator.writeObject(branch);
    }
}