function f = fx(x)
    f = (3/(x-2))
endfunction
    n=0
    Xo=input('Xo: ');
    E=input('Ingrese la tolerancia: ');
    //fXo=feval(Xo,fx); aca no se tiene que evaluar
    eror=10
    disp('n     f(xi)     |Error|')
    //disp(['n',Xo,'-------','--------']) sobrecarga el display
    while (eror>=E)
        fXo=feval(Xo,fx);
        xant=Xo
        Xo = fXo
        eror = abs(Xo-xant)
        n=n+1
        //Xo = fxi
        disp([n,fXo,eror])
        if(eror<E)
            break;
        end   
    end

