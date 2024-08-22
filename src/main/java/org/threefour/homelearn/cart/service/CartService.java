package org.threefour.homelearn.cart.service;

import org.threefour.homelearn.cart.domain.GetCartResponse;

public interface CartService {
    GetCartResponse get(Long studentId);

    void createCart(Long studentId);

    void addCourse(Long studentId, Long courseId);

    void deleteCourse(Long studentId, Long cartCourseId);
}
