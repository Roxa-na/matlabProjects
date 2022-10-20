function  [k,d] = calculate_k_d(point_1,point_2) 

    k = (point_1(2,1) - point_2(2,1))/(point_1(1,1) - point_2(1,1));
    d = point_1(2,1) - k * point_1(1,1);

end