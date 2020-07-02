function f = fx(x)
    //f = (3/(x-2))
    //f = x^3 + 2*x^2 +10*x - 20
      f = sqrt(x)-cos(x)
endfunction
    n=0;
    Xo=input('Xo: ');
    E=input('Ingrese la tolerancia: ');
    n_ite=input("Ingrese el num de iteraciones: ")
    fXo=feval(Xo,fx);
    eror=10;
    it=0;
    disp('n     f(xi)     |Error|')
    while (eror>=E)
        if(eror>=E)
            Xo=fXo;
            valorant=fXo;
            fXo=feval(Xo,fx);
            valoract=fXo; 
        end
        if(n_ite==it)
            break;
        end
        n = n+1;
        it = it +1;
        eror=abs(valoract-valorant);
        printf("%1.0f     %2.5f    %5.5f    %1.5f\n",n,Xo,fXo,eror);
    end
    
    printf("\nLa raiz de fx es:%12.5f\n",valoract);
    printf("Con una tolerancia de: %1.5f \n",eror);
    
