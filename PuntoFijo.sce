function f = fx(x)
    f = (3/(x-2))
    //f = x^3 + 2*x^2 +10*x - 20
endfunction
    n=0;
    Xo=input('Xo: ');
    E=input('Ingrese la tolerancia: ');
    n_ite=input("Ingrese el num de iteraciones: ")
    fXo=feval(Xo,fx);
    //fXo=feval(Xo,fx);
    eror=10;
    it=0;
    disp('n     f(xi)     |Error|')
    //disp(['n',Xo,'-------','--------'])
    while (eror>=E)
        xant=Xo;
        fXo=feval(Xo,fx);
        //xant=Xo
        Xo = fXo
        eror = abs(Xo-xant);
        n=n+1;
        it=it+1;
        //Xo = fxi
        disp([n,fXo,eror])
        if(eror<E)
            break;
        end   
        if(n_ite==it)
            break;
        end
    end

