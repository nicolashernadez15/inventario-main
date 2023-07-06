from django.db import models
from django.db.models.signals import post_save
from django.dispatch import receiver
from django.contrib.auth.models import User


class Categoria(models.Model):
    nombreCategoria = models.CharField(max_length=50)
    descripcionCategoria = models.CharField(max_length=100)

    def __str__(self):
        return self.nombreCategoria

    class Meta:
        verbose_name_plural = "Categorías"


class Bodega(models.Model):
    nombreBodega = models.CharField(max_length=50)
    direccionBodega = models.CharField(max_length=100)

    class Meta:
        verbose_name = "Bodega"
        verbose_name_plural = "Bodegas"

    def __str__(self):
        return self.nombreBodega


class Tienda(models.Model):
    nombreTienda = models.CharField(max_length=50)
    direccionTienda = models.CharField(max_length=100)
    bodega = models.ForeignKey(Bodega, on_delete=models.CASCADE, null=True)

    class Meta:
        verbose_name = "Tienda"
        verbose_name_plural = "Tiendas"

    def __str__(self):
        return self.nombreTienda


class Producto(models.Model):
    nombreProducto = models.CharField(max_length=50)
    cantidad = models.IntegerField()
    descripcionProducto = models.CharField(max_length=100)
    bodega = models.ForeignKey(Bodega, on_delete=models.CASCADE, null=True)
    categoria = models.ForeignKey(Categoria, on_delete=models.CASCADE, null=True)

    class Meta:
        verbose_name = "Producto"
        verbose_name_plural = "Productos"

    def __str__(self):
        return self.nombreProducto


class Salida_Producto(models.Model):
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE, null=True)
    cantidadSalida = models.IntegerField()
    fechaSalida = models.DateField()
    descripcionSalida = models.CharField(max_length=100)
    


@receiver(post_save, sender=Salida_Producto)
def actualizar_cantidad_producto(sender, instance, **kwargs):
    producto = instance.producto
    producto.cantidad -= instance.cantidadSalida
    producto.save()


class Devolucion_Producto(models.Model):
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE, null=True)
    cantidadDevolucion = models.IntegerField()
    fechaDevolucion = models.DateField()
    descripcionDevolucion = models.CharField(max_length=100)



@receiver(post_save, sender=Devolucion_Producto)
def actualizar_cantidad_producto_devolucion(sender, instance, **kwargs):
    producto = instance.producto
    producto.cantidad += instance.cantidadDevolucion
    producto.save()


class Entrada_Producto(models.Model):
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE, null=True)
    cantidadEntrada = models.IntegerField()
    fechaEntrada = models.DateField()
    descripcionEntrada = models.CharField(max_length=100)
    


@receiver(post_save, sender=Entrada_Producto)
def actualizar_cantidad_producto_entrada(sender, instance, **kwargs):
    producto = instance.producto
    producto.cantidad += instance.cantidadEntrada
    producto.save()


class Rol(models.Model):
    nombreRol = models.CharField(max_length=50)
    descripcionRol = models.CharField(max_length=100)

    class Meta:
        verbose_name = "Rol"
        verbose_name_plural = "Roles"

    def __str__(self):
        return self.nombreRol


class Trabajador(models.Model):
    nombreTrabajador = models.CharField(max_length=50)
    contraseñaTrabajador = models.CharField(max_length=50)
    rol = models.ForeignKey(Rol, on_delete=models.CASCADE, null=True)
    tienda = models.ForeignKey(Tienda, on_delete=models.CASCADE, null=True)

    class Meta:
        verbose_name = "Trabajador"
        verbose_name_plural = "Trabajadores"

    def __str__(self):
        return self.nombreTrabajador


class ProductoBodega(models.Model):
    stock = models.IntegerField()
    id_Producto = models.ForeignKey(Producto, on_delete=models.CASCADE, null=True)
    id_Bodega = models.ForeignKey(Bodega, on_delete=models.CASCADE, null=True)

