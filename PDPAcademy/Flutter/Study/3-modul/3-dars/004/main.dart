// Quyidagi berilgan chizmaga asoslanib mixin va boshqa class larni hosil qiling.

mixin ViewAllProducts {}
mixin PurchaseProducts {}
mixin ApproveStore {}
mixin CreateStore {}
mixin DeleteStore {}

abstract class User with ViewAllProducts, PurchaseProducts {}

class Moderator extends User with ApproveStore {}

class Vendor extends Moderator with CreateStore, DeleteStore {}
