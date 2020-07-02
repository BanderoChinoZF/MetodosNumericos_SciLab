//function fx = fun1(x)
//    fx = x^3 + 2*x^2 +10*x - 20
//endfunction

function fun2(xi)
    p = poly([-20,10,2,1],"x","coeff"); 
    f = derivat(p);
    //disp("f(x)= "+p);
    disp("f(x)/dx ="+f);
    fxi = horner(f,xi)
    disp(fxi)
endfunction
