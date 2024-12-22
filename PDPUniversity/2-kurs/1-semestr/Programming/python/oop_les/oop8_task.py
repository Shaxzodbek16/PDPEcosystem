from uuid import uuid4


class Product:
    def __init__(self, name, product_id, quantity, price):
        self.name = name
        self.product_id = product_id
        self.quantity = quantity
        self.price = price

    def __repr__(self):
        return f"Product(product_id={self.product_id} name={self.name}, quantity={self.quantity}, price={self.price})"

    def __str__(self):
        return self.__repr__()


class Warehouse(Product):
    def __init__(self):
        self.products: dict[int, int] = {}

    def add_product(self, product_id, product_address):
        if product_id in self.products.keys():
            return "The product already exists"
        self.products[product_id] = product_address
        return "Successfully added the product"

    def get_products(self):
        return self.products

    def remove_product(self, product_id):
        if product_id in self.products.keys():
            del self.products[product_id]
            return "Successfully removed the product"
        return "The product does not exist"


product = Product("Cup", 2, 10, 20000)
warehouse = Warehouse()
print(warehouse.add_product(product.product_id, uuid4().int))
print(warehouse.get_products())
print(warehouse.remove_product(product.product_id))
print(warehouse.get_products())
print(product)
