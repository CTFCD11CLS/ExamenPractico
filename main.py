nombre=str(input("Ingrese su nombre"));
cantidad=int(input("Ingrese la cantidad de pantalones a llevar"));

subtotal = (cantidad * 160.50);

if cantidad >=7:
    subtotal = (cantidad * 160.50);
    descuento=((subtotal*10)/100)
    total=(subtotal-descuento);
    print("El descuento es :",descuento)
    print("Total a pagar",total);
elif cantidad>=10:
    subtotal = (cantidad * 160.50);
    descuento=((subtotal*25)/100)
    print("El descuento es :", descuento)
    total = (subtotal - descuento);
    print("Total a pagar",total);
elif subtotal>700:
   descuento=((subtotal*5)/100)
   total = (subtotal - descuento);
   print("El descuento es :",descuento)
   print("Total a pagar",total);
else:
    print("Total a pagar",subtotal);


