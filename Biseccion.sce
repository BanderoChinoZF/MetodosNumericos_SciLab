function [xi, xd, xm, ea, n] = biseccion(funcion, xi, xd, E, maxIt)
    
    xm = xi;
    n = 0;
    
    while 1
        xmant = xm;
        xm = (xi+xd)/2
        ea = abs((xm-xmant)/xm)*100;
        
        fxm = funcion(xm);
        fxi = funcion(xi);
        fxd = funcion(xd);
        
        if (fxi*fxm < 0) then 
            //fxd = fxm:
            xd = xm;
            //Se multiplican las evaluaciones de las funciones por que
            //asi es mas facil determinar que calores tomaran cada uno.
         else
            //Ya no se ponde la condicion por que esta implicitamente
            //explicada ya que aca quiere decir que fxi y fxm,
            //son negativos y se toman valores distintos.
             //fxi = fxm;
             xi = xm;
         end
         
         n = n + 1;
         
         if (ea < E | n == maxIt) then
             break
         end
        
    end
endfunction
