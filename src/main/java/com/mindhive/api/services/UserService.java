package com.mindhive.api.services;

import com.mindhive.api.daos.UserRequestDAO;
import com.mindhive.api.entity.User;
import com.mindhive.api.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserService {
    private UserRepository userRepository;
    private ModelMapper modelMapper;

    public void createUser(UserRequestDAO userRequest) {
        User newUser = modelMapper.map(userRequest, User.class);
        userRepository.save(newUser);
    }

    public User findUser(Long userId) {
        return userRepository.findById(userId).orElseThrow();
    }
}
