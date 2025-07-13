package com.mindhive.api.services;

import com.mindhive.api.daos.UserRequestDAO;
import com.mindhive.api.entity.User;
import com.mindhive.api.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserService {
    private UserRepository userRepository;

    public void createUser(UserRequestDAO userRequest) {
        //TODO
    }
}
