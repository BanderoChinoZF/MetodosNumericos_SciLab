function f=fx(x)
    //fx=sqrt(x)-cos(x)
    f = x^3 + 2*x^2 +10*x - 20
endfunction
n=0
Xi=input("Xi: ");
Xd=input("Xd: ");
tol=input("Error permitido");
fXi=feval(Xi,fx); //instruccion para evaluar la funcion con Xi 
fXd=feval(Xd,fx); //instruccion para evaluar la funcion con Xd 
Xm=(Xi+Xd)/2;
e_rror=10
//erp=0;
disp("i      Xm       |Error| ");
while(e_rror>=tol)
    fXm=feval(Xm,fx);
    caso_1=fXi*fXm;
    caso_2=fXd*fXm;
    if(caso_1<0)
        Xd=Xm;
        fXd=fXm;
        valorant=Xm;
        Xm=(Xi+Xd)/2;
        valoract=Xm;
    end
    if(caso_2<0)
        Xi=Xm;
        fXi=fXm;
        valorant=Xm;
        Xm=(Xi+Xd)/2;
        valoract=Xm;
    end
    n=n+1
    e_rror=abs(valoract-valorant);
    //erp=abs(e_rror*100);
    //disp(" i      Xm         |Error| ");
    printf("%1.0f     %2.5f    %1.5f\n",n,Xm,e_rror);
end
//erp=(e_rror*100)
printf("\nLa raiz de fx es:%12.5f\n",valoract);
printf("Con una tolerancia de: %1.5f \n",e_rror);
//printf("Con una tolerancia de: %1.5f %\n",erp);

