clc
clear all
syms x

f0=input('POLYNOMIAL:');
c=input('VALUE OF X:');
a=sym2poly(f0);
b=polyval(a,c);
f0=f0
sign=b/abs(b);
list=[sign];
f1=diff(f0)
a1=sym2poly(f1);
b1=polyval(a1,c);
sign=b1/abs(b1);
list=[list,sign];
i=2;

while not(f1==0);
    [r,q]=polynomialReduce(f0,f1);
    if r ~= 0
       fprintf('f%d =\n',i);
       
    i = i+1;
     fprintf('\n');
     
     
     
     
     
    else
       break
    end
    
    
    
    disp(-r)
    f0=f1;
    f1=-r;
    a2=sym2poly(-r);
    b2=polyval(a2,c);
    
   sign=b2/abs(b2);
   
    
   list=[list,sign];
   
   
    
    
end
signs=[list]
