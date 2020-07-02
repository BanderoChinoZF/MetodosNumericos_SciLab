function f=fx(x)
    
    f=x^3+2*x^2+10*x-20
    
endfunction
    n=0;
    xi=input("Valor de xi: ");
    xd=input("Valor de xd: ");
    tol=input("ingresa la Tolerancia: ");
    fxi=feval(xi,fx);
    fxd=feval(xd,fx);
    xm=((fxd*xi)*(xd*fxi)/(fxi)-(fxd));
    fxm=feval(xm,fx)
    e_rror=10;
    
    //caso_1=fxi*fxm;
    //caso_2=fxd*fxm;
    
    while (e_rror>=tol)
        
        fxm=feval(xm,fx);
        caso_1=fxi*fxm;
        //caso_2=fxd*fxm;
        if (caso_1==0)
            break;
            end
        if (caso_1<0)
            xd=xm;
            fxd=fxm;
            vant=xm;
            //xm=(xd-(fxd*(xi-xd)/fxi-(fxd)));
            xm=((fxd*xi)*(xd*fxi)/(fxi)-(fxd));
            vact=xm;
            
        end
        if (caso_1>0)
            xi=xm;
            fxi=fxm;
            vant=xm;
            //xm=(xd-(fxd*(xi-xd)/fxi-(fxd)));
            xm=((fxd*xi)*(xd*fxi)/(fxi)-(fxd));
            vact=xm;
        end
        
        n = n+1;
        e_rror=abs(vact-vant)
        printf("%1.0f    %2.5f    %2.5f    %2.5f    %2.5f    %2.5f    %2.5f    %1.5f\n",n,xi,xd,xd,fxi,fxd,fxm,e_rror);
        
        
    end
  
