package com.mindhive.api.entity;

import jakarta.persistence.*;

import java.sql.Timestamp;

@Entity
@Table(name = "users")
public class User {

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String username;
    private String email;
    private String password;

    @Enumerated(EnumType.STRING)
    private Role role;

    @Column(name = "joined_at")
    private Timestamp joinedAt;
}
