function f=fx(x)
    f = x^3 + 2*x^2 +10*x - 20
endfunction
x0=input("Ingrese el primer valor: ");
x1=input("Ingrese el segundo valor: ");
tol=input("Ingrese el error permitido: ");
e_rror=100;
i=0;
disp("i        Xi       Xi-1       Xm       |Error|");
while (e_rror>=tol)
    xant=x1;
    xm = (x1-(((x1-x0)*(feval(x1,fx)))/((feval(x1,fx))-(feval(x0,fx)))));
    //e_rror=abs(feval(xm,fx));
    e_rror=abs(xm-xant);
    printf("%1.0f     %2.5f    %2.5f    %2.5f    %1.5f\n",i,x1,x0,xm,e_rror);
    x0=x1;
    x1=xm;
    i =i+1;
end
printf("\nLa raiz de fx es:%12.5f\n",xm);
printf("Con una tolerancia de: %1.5f \n",e_rror);
