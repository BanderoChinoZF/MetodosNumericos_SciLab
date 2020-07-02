function y=funcion(x)
    y=x^3+2*x^2+10*x-20
endfunction

function newton ()
    n=0;
    xa=input("Ingresar el valor de Xi: ");
    xb=input("Ingresar el valor de Xd: ");
    tol=input("Ingresar la tolerancia: ");
    
    //if abs(f(xa))>abs(f(xb)) then
      //  xi=xb;
    //end
    
    e_rror=10;
    
    while (e_rror> tol)
        
        xant=xa;
        xn=(xa-f(xa)/numderivative(f,xa));
        //xact=xb;
        //ea= abs (xn-xi)/xn*100
        xa=xn
        ea= abs (xa-xant)
        
        n= n+1;
        printf("%1.0f     %2.5f    %1.5f\n",n,xn,e_rror);
    end
    //printf("%1.0f     %2.5f    %1.5f\n",n,Xm,e_rror);
    //r=xa
    //e=ea
endfunction

//[r,e]=newton(funcion,1,2,0.001)
